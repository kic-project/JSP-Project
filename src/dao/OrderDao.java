package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



import Model.Cart;
import Model.Order;


public class OrderDao {

	private OrderDao() {
	}

	private static OrderDao instance = new OrderDao();

	public static OrderDao getInstance() {
		return instance;
	}

	// 사용자가 주문
	//cartList는 장바구니에 넣은 상품들을 해당 아이디 리스트에 따른것들을  cartVO에 넣은 것들임.
	public int insertOrder(ArrayList<Cart> cartList, String id) {
		int maxOseq = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;

		try {
			conn = DBconnection.getConnection();
			
			//id는 세션에서 가져온 것임 ex) 이름만 sql에서 insertOrder로 바꿔준것임
			//주문 번호생성과 주문한 사람을 삽입
			String insertOrder = "insert into orders(oseq, id) values(orders_seq.nextval, ?)";
			pstmt = conn.prepareStatement(insertOrder);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			//바로 위에서 INSERT한 라스트 오더를 가져옴.
			String selectMaxOseq = "select max(oseq) from orders";
			pstmt = conn.prepareStatement(selectMaxOseq);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				maxOseq = rs.getInt(1);
				System.out.println("maxOseq == "+ maxOseq);
			}		
			
			//여러개의 cartVO 리스트를 하나씩의 레코드로 쪼개줌
			for (Cart cart : cartList) {
				insertOrderDetail(cart, maxOseq);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, null);
		}
		return maxOseq;
	}

	public void insertOrderDetail(Cart cart, int maxOseq) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBconnection.getConnection();

			String insertOrderDetail = "insert into order_detail(odseq, oseq, "
					+ "pseq, quantity) values(order_detail_seq.nextval, ?, ?, ?)";
			pstmt = conn.prepareStatement(insertOrderDetail);
			pstmt.setInt(1, maxOseq);//주문한 주문번호
			pstmt.setInt(2, cart.getPseq());//제품번호
			pstmt.setInt(3, cart.getQuantity());//수량
			pstmt.executeUpdate();
			pstmt.close();
			
			//장바구니 상태를 주문한것으로 바꿈.
			String updateCartResult = "update cart set result=2 where cseq=?";
			pstmt = conn.prepareStatement(updateCartResult);
			pstmt.setInt(1, cart.getCseq());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, null);
		}
	}

	// 사용자가 주문 내역 검색
	//                                     사용자 아이디         주문처리                주문번호
	public ArrayList<Order> listOrderById(String id, String result, int oseq) {
		ArrayList<Order> orderList = new ArrayList<Order>();
		String sql = "select * from order_view where id=? and result like '%'||?||'%' and oseq=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBconnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, result);
			pstmt.setInt(3, oseq);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Order order = new Order();
				order.setOdseq(rs.getInt("ODSEQ"));
				order.setOseq(rs.getInt("OSEQ"));
				order.setId(rs.getString("ID"));
				order.setIndate(rs.getTimestamp("INDATE"));
				order.setMname(rs.getString("MNAME"));
				order.setZipNum(rs.getString("ZIP_NUM"));
				order.setAddress(rs.getString("ADDRESS"));
				order.setTel(rs.getString("TEL"));
				order.setPseq(rs.getInt("PSEQ"));
				order.setQuantity(rs.getInt("QUANTITY"));
				order.setPname(rs.getString("PNAME"));
				order.setPrice2(rs.getInt("PRICE2"));
				order.setResult(rs.getString("RESULT"));
				orderList.add(order);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, rs);
		}
		return orderList;
	}

	// 현재 진행 중인 주문 내역만 조회                                     String id는 세션에서 가져옴.
	public ArrayList<Integer> selectSeqOrderIng(String id) {
		ArrayList<Integer> oseqList = new ArrayList<Integer>();
		
		//result=1인것은 아직 무통장입금이 확인되지 않은 제품들을 의미함.	
		//DISTINCT를 사용하면 중복 행이 제거되고 고유한 제품 ID만 나타납니다.(sql에서 확인한번 해볼것)
		String sql = "select distinct oseq from order_view where id=? and result='1' order by oseq desc";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBconnection.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				oseqList.add(rs.getInt("oseq"));//주문번호들이 담겨있음.
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(con, pstmt, rs);
		}
		return oseqList;
	}}
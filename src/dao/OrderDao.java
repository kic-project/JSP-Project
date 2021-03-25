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
	// cartList는 장바구니에 넣은 상품들을 해당 아이디 리스트에 따른것들을 cartVO에 넣은 것들임.
	public int insertOrder(ArrayList<Cart> cartList, String id) {
		int maxOseq = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;

		try {
			conn = DBconnection.getConnection();

			// id는 세션에서 가져온 것임 ex) 이름만 sql에서 insertOrder로 바꿔준것임
			// 주문 번호생성과 주문한 사람을 삽입
			String insertOrder = "insert into orders(oseq, id) values(orders_seq.nextval, ?)";
			pstmt = conn.prepareStatement(insertOrder);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();

			// 바로 위에서 INSERT한 라스트 오더를 가져옴.
			String selectMaxOseq = "select max(oseq) from orders";
			pstmt = conn.prepareStatement(selectMaxOseq);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				maxOseq = rs.getInt(1);
				System.out.println("maxOseq == " + maxOseq);
			}

			// 여러개의 cartVO 리스트를 하나씩의 레코드로 쪼개줌
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
			pstmt.setInt(1, maxOseq);// 주문한 주문번호
			pstmt.setInt(2, cart.getPseq());// 제품번호
			pstmt.setInt(3, cart.getQuantity());// 수량
			pstmt.executeUpdate();
			pstmt.close();

			// 장바구니 상태를 주문한것으로 바꿈.
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

}
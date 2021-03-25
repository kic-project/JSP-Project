package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Model.Cart;

public class CartDao {

	private CartDao() {
	}

	private static CartDao instance = new CartDao();

	public static CartDao getInstance() {
		return instance;
	}

	public void insertCart(Cart cart) {
		String sql = "insert into cart(cseq,id, pseq, quantity)" + " values(cart_seq.nextval,?, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBconnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cart.getId());// CartInsertAction에서 받아온것
			pstmt.setInt(2, cart.getPseq());// CartInsertAction에서 받아온것
			pstmt.setInt(3, cart.getQuantity());// CartInsertAction에서 받아온것

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, null);
		}
	}

	// userId가 카트에 넣은 모든 값들을 가져옴.
	public ArrayList<Cart> listCart(String userId) {
		ArrayList<Cart> cartList = new ArrayList<Cart>();
		String sql = "select * from cart_view where id=? order by cseq desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBconnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Cart cart = new Cart();
				cart.setCseq(rs.getInt(1));// cart seq
				cart.setId(rs.getString(2));// member id
				cart.setPseq(rs.getInt(3));// product seq
				cart.setMname(rs.getString(4));// member name
				cart.setPname(rs.getString(5));// product name
				cart.setQuantity(rs.getInt(6));// 수량
				cart.setIndate(rs.getTimestamp(7));// 등록날짜
				cart.setPrice2(rs.getInt(8));// 실제 판매가격

				cartList.add(cart);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, rs);
		}
		return cartList;
	}

	public void deleteCart(int cseq) {
		String sql = "delete cart where cseq=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBconnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cseq);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, null);
		}
	}
}
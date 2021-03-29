package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Cart;
import Model.Member;

public class CartDao {
	private static CartDao instance = new CartDao();

	public static CartDao getInstance() {
		return instance;
	}

	public void insertCart(Cart cart) {
		Connection conn=DBconnection.getConnection();
		String sql = "insert into cart(cseq,id, pseq, quantity)" + " values(cart_seq.nextval,?, ?, ?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cart.getId());// CartInsertAction�뿉�꽌 諛쏆븘�삩寃�
			pstmt.setInt(2, cart.getPseq());// CartInsertAction�뿉�꽌 諛쏆븘�삩寃�
			pstmt.setInt(3, cart.getQuantity());// CartInsertAction�뿉�꽌 諛쏆븘�삩寃�

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, null);
		}
	}
	


	// userId媛� 移댄듃�뿉 �꽔�� 紐⑤뱺 媛믩뱾�쓣 媛��졇�샂.
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
				cart.setQuantity(rs.getInt(6));// �닔�웾
				cart.setIndate(rs.getTimestamp(7));// �벑濡앸궇吏�
				cart.setPrice2(rs.getInt(8));// �떎�젣 �뙋留ㅺ�寃�

				cartList.add(cart);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, rs);
		}
		return cartList;
	}

	public void deleteCart(String id) {
		String sql = "delete cart where id=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBconnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, null);
		}
	}
}
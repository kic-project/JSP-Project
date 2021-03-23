package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Member;

public class MemberDao {
	public int insert(Member mem) {
		Connection conn=DBconnection.getConnection();
		PreparedStatement pstmt=null;
		String sql="insert into memberpro"
				+"(id, pass, name, gender, email, tel, picture, address, point, totalprice, shoplist, memlevel, coupon, orderstatus, birthday, zip_num)"
				
				+"values(?,?,?,?,?,?,?,?,0,0,null,1,null,null,0,null)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getPass());
			pstmt.setString(3, mem.getName());
			pstmt.setInt(4, mem.getGender());
			pstmt.setString(5, mem.getEmail());
			pstmt.setString(6, mem.getTel());
			pstmt.setString(7, mem.getPicture());
			pstmt.setString(8, mem.getAddress());
			// pstmt.setString(9, "welcome");
			return pstmt.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			DBconnection.close(conn, pstmt, null);
		}
		return 0;
	}
	public Member selectOne(String id) {
		Connection conn=DBconnection.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select * from memberpro where id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				Member m=new Member();
				m.setId(rs.getString("id"));
				m.setPass(rs.getString("pass"));
				m.setName(rs.getString("name"));
				m.setGender(rs.getInt("gender"));
				m.setTel(rs.getString("tel"));
				m.setEmail(rs.getString("email"));
				m.setPicture(rs.getString("picture"));
				m.setAddress(rs.getString("address"));
				m.setPoint(rs.getInt("point"));
				m.setTotalprice(rs.getInt("totalprice"));
				m.setShoplist(rs.getString("shoplist"));
				m.setMemlevel(rs.getString("memlevel"));
				m.setCoupon(rs.getString("coupon"));
				m.setOrderstatus(rs.getString("orderstatus"));
				return m;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			DBconnection.close(conn, pstmt, rs);
		}
		return null;
	}
	public int update(Member mem) {
		Connection conn=DBconnection.getConnection();
		PreparedStatement pstmt=null;
		String sql="update memberpro set name=?, gender=?, tel=?,"
	+"email=?, picture=?, address=? where id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mem.getName());
			pstmt.setInt(2, mem.getGender());
			pstmt.setString(3, mem.getTel());
			pstmt.setString(4, mem.getEmail());
			pstmt.setString(5, mem.getPicture());
			pstmt.setString(6, mem.getAddress());
			pstmt.setString(7, mem.getId());
			return pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBconnection.close(conn, pstmt, null);
		}
		return 0;
	}
	public int delete(String id) {
		Connection conn=DBconnection.getConnection();
		PreparedStatement pstmt=null;
		String sql="delete from memberpro where id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,id);
			return pstmt.executeUpdate();			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBconnection.close(conn, pstmt, null);
		}
		return 0;
	}
	public List<Member> list() {
		Connection conn=DBconnection.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Member> li=new ArrayList<Member>();
		String sql="select * from memberpro";
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Member m=new Member();
				m.setId(rs.getString("id"));
				m.setPass(rs.getString("pass"));
				m.setName(rs.getString("name"));
				m.setGender(rs.getInt("gender"));
				m.setTel(rs.getString("tel"));
				m.setEmail(rs.getString("email"));
				m.setPicture(rs.getString("picture"));
				m.setAddress(rs.getString("address"));
				m.setPoint(rs.getInt("point"));
				m.setTotalprice(rs.getInt("totalprice"));
				m.setMemlevel(rs.getString("memlevel"));
				li.add(m);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBconnection.close(conn, pstmt, rs);
		}
		return li;
	}
	public int updatePass(String id, String chgpass) {
		String sql="update memberpro set pass=? where id=?";
		Connection conn=DBconnection.getConnection();
		PreparedStatement pstmt=null;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, chgpass);
			pstmt.setString(2, id);
			return pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBconnection.close(conn, pstmt, null);
		}
		return 0;
	}
	public int totalorder(Member mem) {
		Connection conn=DBconnection.getConnection();
		PreparedStatement pstmt=null;
		String sql="update memberpro set point=?, totalprice=?, memlevel=?, shoplist=? where id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setDouble(1, mem.getPoint());
			pstmt.setInt(2, mem.getTotalprice());
			if(mem.getTotalprice()>3000000)
				pstmt.setString(3, "vvip");
			else if(mem.getTotalprice()>1000000)
				pstmt.setString(3, "vip");
			else if(mem.getTotalprice()>500000)
				pstmt.setString(3, "diamond");
			else if(mem.getTotalprice()>250000)
				pstmt.setString(3, "gold");
			else
				pstmt.setString(3, "green");
			pstmt.setString(4, mem.getShoplist());
			pstmt.setString(5, mem.getId());
			return pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBconnection.close(conn, pstmt, null);
		}
		return 0;
	}
}
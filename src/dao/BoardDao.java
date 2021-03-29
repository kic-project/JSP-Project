package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Member;
import Model.Board;

public class BoardDao {
	public boolean insert(Board board) {
		Connection conn=DBconnection.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int num=0;
		String sql1="select boardproseq.nextval from dual";
		String sql2="insert into boardpro "
				+" (num,name,pass,subject,content,file1,regdate,"
				+" readcnt,ref,reflevel,refstep) "
				+" values(?,?,?,?,?,?,sysdate,0,?,?,?)";
		try {
			pstmt=conn.prepareStatement(sql1);
			rs=pstmt.executeQuery();
			if(rs.next())
				num=rs.getInt(1);
			pstmt=conn.prepareStatement(sql2);
			pstmt.setInt(1, num);
			pstmt.setString(2, board.getName());
			pstmt.setString(3, board.getPass());
			pstmt.setString(4, board.getSubject());
			pstmt.setString(5, board.getContent());
			pstmt.setString(6, board.getFile1());
			pstmt.setInt(7, board.getRef());
			pstmt.setInt(8, board.getReflevel());
			pstmt.setInt(9, board.getRefstep());
			pstmt.executeUpdate();
			return true;
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			DBconnection.close(conn, pstmt, null);
		}
		return false;
	}
	public int boardCount() {
		Connection conn=DBconnection.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			pstmt=conn.prepareStatement("select count(*) from boardpro");
			rs=pstmt.executeQuery();
			rs.next();
			return rs.getInt(1);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBconnection.close(conn, pstmt, rs);
		}
		return 0;
	}
	public List<Board> list(int pageNum, int limit){
		Connection conn=DBconnection.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Board> list=new ArrayList<Board>();
		String sql="select * from boardpro order by regdate desc, refstep";
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Board b=new Board();
				b.setNum(rs.getInt("num"));
				b.setName(rs.getString("name"));
				b.setPass(rs.getString("pass"));
				b.setSubject(rs.getString("subject"));
				b.setContent(rs.getString("content"));
				b.setFile1(rs.getString("file1"));
				b.setRef(rs.getInt("ref"));
				b.setReflevel(rs.getInt("reflevel"));
				b.setRefstep(rs.getInt("refstep"));
				b.setReadcnt(rs.getInt("readcnt"));
				b.setRegdate(rs.getTimestamp("regdate"));
				list.add(b);}
			return list;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBconnection.close(conn, pstmt, rs);
		}
		return null;
	}
	public Board selectOne(int num) {
		Connection conn=DBconnection.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select * from boardpro where num=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				Board b=new Board();
				b.setNum(rs.getInt("num"));
				b.setName(rs.getString("name"));
				b.setPass(rs.getString("pass"));
				b.setSubject(rs.getString("subject"));
				b.setContent(rs.getString("content"));
				b.setFile1(rs.getString("file1"));
				b.setRef(rs.getInt("ref"));
				b.setReflevel(rs.getInt("reflevel"));
				b.setRefstep(rs.getInt("refstep"));
				b.setReadcnt(rs.getInt("readcnt"));
				b.setRegdate(rs.getTimestamp("regdate"));
				return b;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			DBconnection.close(conn, pstmt, rs);
		}
		return null;
	}
}

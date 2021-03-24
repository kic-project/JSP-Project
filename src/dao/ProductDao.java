package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Model.Product;

public class ProductDao {
	private ProductDao() {
	}

	private static ProductDao instance = new ProductDao();

	public static ProductDao getInstance() {
		return instance;
	}

	// 신상품
	public ArrayList<Product> listNewProduct() {
		ArrayList<Product> productList = new ArrayList<Product>();
		String sql = "select *  from new_pro_view";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBconnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setPrice2(rs.getInt("price2"));
				product.setImage(rs.getString("image"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, rs);
		}
		return productList;
	}

	// 베스트 상품
	public ArrayList<Product> listBestProduct() {
		ArrayList<Product> productList = new ArrayList<Product>();
		String sql = "select *  from best_pro_view";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBconnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setPrice2(rs.getInt("price2"));
				product.setImage(rs.getString("image"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, rs);
		}
		return productList;
	}

	public Product getProduct(String pseq) {
		Product product = null;
		String sql = "select * from product where pseq=?";

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBconnection.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pseq);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				product = new Product();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setKind(rs.getString("kind"));
				product.setPrice1(rs.getInt("price1"));
				product.setPrice2(rs.getInt("price2"));
				product.setPrice3(rs.getInt("price3"));
				product.setContent(rs.getString("content"));
				product.setImage(rs.getString("image"));
				product.setUseyn(rs.getString("useyn"));
				product.setBestyn(rs.getString("bestyn"));
				product.setIndate(rs.getTimestamp("indate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(con, pstmt, rs);
		}
		return product;
	}

	public ArrayList<Product> listKindProduct(String kind) {
		ArrayList<Product> productList = new ArrayList<Product>();
		String sql = "select * from product where kind=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBconnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kind);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Product product = new Product();
				product.setPseq(rs.getInt("pseq"));
				product.setName(rs.getString("name"));
				product.setPrice2(rs.getInt("price2"));
				product.setImage(rs.getString("image"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(conn, pstmt, rs);
		}
		return productList;
	}

	/*
	 * * 관리자 모드에서 사용되는 메소드 *
	 */
	public int totalRecord(String product_name) {
		int total_pages = 0;
		String sql = "select count(*) from product where name like '%'||?||'%'";

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet pageset = null;

		try {
			con = DBconnection.getConnection();
			pstmt = con.prepareStatement(sql);

			if (product_name.equals("")) {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, product_name);
			}
			pageset = pstmt.executeQuery();

			if (pageset.next()) {
				total_pages = pageset.getInt(1); // 레코드의 개수 pageset.getInt("count(*)")도 가능함
				pageset.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(con, pstmt, null);
		}
		return total_pages;
	}

	static int view_rows = 5; // 페이지넘버의 개수
	static int counts = 5; // 한 페이지에 나타낼 상품의 개수

	// 페이지 이동을 위한 메소드 페이지 넘버 키워드
	public String pageNumber(int tpage, String name) {
		String str = "";

		int total_pages = totalRecord(name); // 총 글의 숫자
		int page_count = total_pages / counts + 1; // 총 페이지의 숫자

		if (total_pages % counts == 0) {
			page_count--;
		}

		if (tpage < 1) {
			tpage = 1;
		}

		int end_page = ((tpage / (view_rows + 1)) + 1) * view_rows;
		int start_page = (end_page - view_rows) + 1;
		System.out.println("end_page ====" + end_page);
		System.out.println("start_page ====" + start_page);

		if (end_page > page_count) {
			end_page = page_count;
		}

		if (start_page > view_rows) {
			str += "<a href='jspshopServlet?command=admin_product_list&tpage=1&key=" + name
					+ "'>&lt;&lt;</a>&nbsp;&nbsp;";
			str += "<a href='jspshopServlet?command=admin_product_list&tpage=" + (start_page - 1)
					+ "&key=<%=product_name%>'>&lt;</a>&nbsp;&nbsp;";
		}

		for (int i = start_page; i <= end_page; i++) {
			if (i == tpage) {
				str += "<font color=red>[" + i + "]&nbsp;&nbsp;</font>";
			} else {
				str += "<a href='jspshopServlet?command=admin_product_list&tpage=" + i + "&key=" + name + "'>[" + i
						+ "]</a>&nbsp;&nbsp;";
			}
		}

		// 총 페이지가 end_page보다 클 경우
		if (page_count > end_page) {
			str += "<a href='jspshopServlet?command=admin_product_list&tpage=" + (end_page + 1) + "&key=" + name
					+ "'> &gt; </a>&nbsp;&nbsp;";
			str += "<a href='jspshopServlet?command=admin_product_list&tpage=" + page_count + "&key=" + name
					+ "'> &gt; &gt; </a>&nbsp;&nbsp;";
		}
		return str;
	}

	/*
	 * static int view_rows = 5; // 페이지넘버의 개수 static int counts = 5; // 한 페이지에 나타낼
	 * 상품의 개수
	 */
	// 페이지숫자 검색에 적은 키워드
	public ArrayList<Product> listProduct(int tpage, String product_name) {
		ArrayList<Product> productList = new ArrayList<Product>();

		String str = "select pseq, indate, name, price1, price2, useyn, bestyn from product where name like '%'||?||'%' order by pseq desc";

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int absolutepage = 1;

		try {
			con = DBconnection.getConnection();
			absolutepage = (tpage - 1) * counts + 1;// 각 페이지마다 시작하는 넘버숫자 (counts는 위에 스타틱으로 숫자가 정이 되어있음.)

			// ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE 는 아래 absolute를
			// 사용하기 위함임.
			pstmt = con.prepareStatement(str, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

			if (product_name.equals("")) {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, product_name);
			}

			rs = pstmt.executeQuery();

			if (rs.next()) {
				rs.absolute(absolutepage);// absolutepage번째 행을 가르키도록함.
				int count = 0;

				while (count < counts) {

					Product product = new Product();

					product.setPseq(rs.getInt(1));
					product.setIndate(rs.getTimestamp(2));
					product.setName(rs.getString(3));
					product.setPrice1(rs.getInt(4));
					product.setPrice2(rs.getInt(5));
					product.setUseyn(rs.getString(6));
					product.setBestyn(rs.getString(7));

					productList.add(product);

					// while부분에서 rs.next를 해 주지 않았기 때문에 이곳에서 정의해줌
					if (rs.isLast()) {
						break;
					}
					rs.next();

					count++;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(con, pstmt, rs);
		}
		return productList;
	}

	public int insertProduct(Product product) {
		int result = 0;

		String sql = "insert into product (" + "pseq, kind, name, price1, price2, price3, content, image) "
				+ "values(product_seq.nextval, ?, ?, ?, ?, ?, ?, ?)";

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBconnection.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, product.getKind());
			pstmt.setString(2, product.getName());
			pstmt.setInt(3, product.getPrice1());
			pstmt.setInt(4, product.getPrice2());
			pstmt.setInt(5, product.getPrice3());
			pstmt.setString(6, product.getContent());
			pstmt.setString(7, product.getImage());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("추가 실패");
			e.printStackTrace();
		} finally {
			DBconnection.close(con, pstmt, null);
		}
		return result;
	}

	public int updateProduct(Product product) {
		int result = -1;
		String sql = "update product set kind=?, useyn=?, name=?"
				+ ", price1=?, price2=?, price3=?, content=?, image=?, bestyn=? " + "where pseq=?";

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBconnection.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, product.getKind());
			pstmt.setString(2, product.getUseyn());
			pstmt.setString(3, product.getName());
			pstmt.setInt(4, product.getPrice1());
			pstmt.setInt(5, product.getPrice2());
			pstmt.setInt(6, product.getPrice3());
			pstmt.setString(7, product.getContent());
			pstmt.setString(8, product.getImage());
			pstmt.setString(9, product.getBestyn());
			pstmt.setInt(10, product.getPseq());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBconnection.close(con, pstmt, null);
		}
		return result;
	}
}
<%@page import="java.text.DecimalFormat"%>
<%@page import="dao.CartDTO"%>
<%@page import="dao.MemberDao"%>
<%@page import="Model.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String login = (String) session.getAttribute("login");
String id = request.getParameter("id");
if (login == null || login.trim().equals("")) {
%>
<script type="text/javascript">
	alert("�α����� �ʿ��մϴ�. �α����ϼ���.")
	location.href = "loginForm.jsp";
</script>
<%
	} else {
	Member mem = new MemberDao().selectOne(id);
%>
<%
	request.setCharacterEncoding("utf-8");
ArrayList<CartDTO> cart = null;
Object obj = session.getAttribute("cart");
if (obj == null) {
	cart = new ArrayList<CartDTO>();
} else {
	cart = (ArrayList<CartDTO>) obj;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Cart View</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/project/css/main.css">

<script type="text/javascript">
	function fnPay() {
		if (confirm("�����Ͻðڽ��ϱ�?")) {

		}
	}

	function fnClear() {
		if (confirm("��ٱ��ϸ� ���ðڽ��ϱ�?")) {
			location.href = "CartClear.jsp";
		}
	}

	function fnGo() {
		location.href = "ShopMallMain.jsp";
	}
</script>

</head>
<body>


	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="main.jsp">Shop</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">

					<!-- 
					<li class="nav-item active"><a class="nav-link" href="#">�Ұ�
							<span class="sr-only">(current)</span>
					</a></li>
					 -->

					<li class="nav-item"><a class="nav-link" href="logout.jsp">�α׾ƿ�</a></li>

					<li class="nav-item"><a class="nav-link"
						href="CartView.jsp?id=<%=login%>">��ٱ���</a></li>

					<li class="nav-item"><a class="nav-link"
						href="myPage.jsp?id=<%=login%>">����������</a></li>

					<li class="nav-item"><a class="nav-link" href="loginForm.jsp">�α���</a></li>

					<li class="nav-item"><a class="nav-link" href="joinForm.jsp">ȸ������</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Categories Navbar -->
	<nav class="navbar navbar-expand-lg nav-categories">
		<div class="container col-lg-12">
			<a class="nav-category-item" href="#">����</a> <a
				class="nav-category-item" href="#">����</a> <a
				class="nav-category-item" href="#">����</a> <a
				class="nav-category-item" href="#">��Ÿ</a>
		</div>
	</nav>




	<%-- 
	<div align="center">
		<h3>��ٱ��� �׽�Ʈ</h3>
		<table border="1">
			<tr>
				<th>��ȣ</th>
				<th>��ǰ��</th>
				<th>�ܰ�</th>
				<th>�ֹ� ����</th>
				<th>����</th>
			</tr>
			<%
				String list = "";
			if (cart.size() == 0) {
				out.println("<tr align='center'>");
				out.println("<td colspan= '5'>");
				out.println("��ٱ��Ͽ� ��� ��ǰ�� �����ϴ�.");
				out.println("<a href= 'ShopMallMain.jsp'>�ֹ��ϱ�</a>");
				out.println("</td>");
				out.println("</tr>");
			}

			else {
				int totalSum = 0, total = 0;
				DecimalFormat df = new DecimalFormat("��#,##0");
				for (int i = 0; i < cart.size(); i++) {
					CartDao dto = cart.get(i);
					out.println("<tr align= 'center'>");
					out.println("<td>" + (i + 1) + "</td>");
					out.println("<td>" + dto.getName() + "</td>");
					list = list + " " + dto.getName();
					out.println("<td>" + df.format(dto.getPrice()) + "</td>");
					out.println("<td>" + dto.getCnt() + "</td>");
					total = dto.getPrice() * dto.getCnt();
					out.println("<td>" + df.format(total) + "</td>");
					out.println("</tr>");
					totalSum += total;
				}
				mem.setTempShoplist(list);
				mem.setTempPoint(totalSum / 10);
				mem.setTempTotalprice(totalSum);

				out.println("<tr align = 'center'>");
				out.println("<td colspan= '4'>");
			%>
			<form action="afterOrder.jsp" name="f" method="post">
				<input type="submit" value="�����ϱ�"
					<%session.removeAttribute("cart");%>> <input type="button"
					value="��ٱ��� ����" onclick="fnClear()"> <input type="button"
					value="���� ����ϱ�" onclick="fnGo()"> <input type="hidden"
					name="tempTotalprice" value="<%=mem.getTempTotalprice()%>">
				<input type="hidden" name="tempPoint"
					value="<%=mem.getTempPoint()%>"> <input type="hidden"
					name="tempShoplist" value="<%=mem.getTempShoplist()%>"> <input
					type="hidden" name="totalprice" value="<%=mem.getTotalprice()%>">
				<input type="hidden" name="point" value="<%=mem.getPoint()%>">
				<input type="hidden" name="shoplist" value="<%=mem.getShoplist()%>">
				<input type="hidden" name="id" value="<%=mem.getId()%>">
			</form>
			<%
				out.println("</td>");
			out.println("<td>");
			out.println(df.format(totalSum));
			out.println("</td>");
			out.println("</tr>");
			}
			%>
		</table>
	</div>
 --%>


	<!-- Cart Content -->
	<h3 class="mt-3 mb-3 text-center">��ٱ���</h3>

	<div class="container-md p-3 col-8 mb-5 mx-auto text-center">

		<table class="table table-bordered">
			<tr>
				<th scope="col" colspan="8">�Ϲݻ�ǰ</th>
			</tr>

			<tr>
				<th scope="col">��ȣ</th>
				<th scope="col">��ǰ��</th>
				<th scope="col">�ܰ�</th>
				<th scope="col">�ֹ� ����</th>
				<th scope="col">����</th>
			</tr>
			<%
				String list = "";
			if (cart.size() == 0) {
				out.println("<tr align='center'>");
				out.println("<td colspan= '5'>");
				out.println("��ٱ��Ͽ� ��� ��ǰ�� �����ϴ�.");
				out.println("<a href= 'ShopMallMain.jsp'>�ֹ��ϱ�</a>");
				out.println("</td>");
				out.println("</tr>");
			}

			else {
				int totalSum = 0, total = 0;
				DecimalFormat df = new DecimalFormat("��#,##0");
				for (int i = 0; i < cart.size(); i++) {
					CartDTO dto = cart.get(i);
					out.println("<tr align= 'center'>");
					out.println("<td>" + (i + 1) + "</td>");
					out.println("<td>" + dto.getName() + "</td>");
					list = list + " " + dto.getName();
					out.println("<td>" + df.format(dto.getPrice()) + "</td>");
					out.println("<td>" + dto.getCnt() + "</td>");
					total = dto.getPrice() * dto.getCnt();
					out.println("<td>" + df.format(total) + "</td>");
					out.println("</tr>");
					totalSum += total;
				}
				mem.setTempShoplist(list);
				mem.setTempPoint(totalSum / 10);
				mem.setTempTotalprice(totalSum);

				out.println("<tr align = 'center'>");
				out.println("<td colspan= '4'>");
			%>
			<form action="afterOrder.jsp" name="f" method="post">
				<input type="submit" value="�����ϱ�"
					<%session.removeAttribute("cart");%>> <input type="button"
					value="��ٱ��� ����" onclick="fnClear()"> <input type="button"
					value="���� ����ϱ�" onclick="fnGo()"> <input type="hidden"
					name="tempTotalprice" value="<%=mem.getTempTotalprice()%>">
				<input type="hidden" name="tempPoint"
					value="<%=mem.getTempPoint()%>"> <input type="hidden"
					name="tempShoplist" value="<%=mem.getTempShoplist()%>"> <input
					type="hidden" name="totalprice" value="<%=mem.getTotalprice()%>">
				<input type="hidden" name="point" value="<%=mem.getPoint()%>">
				<input type="hidden" name="shoplist" value="<%=mem.getShoplist()%>">
				<input type="hidden" name="id" value="<%=mem.getId()%>">
			</form>
			<%
				out.println("</td>");
			out.println("<td>");
			out.println(df.format(totalSum));
			out.println("</td>");
			out.println("</tr>");
			}
			%>
		</table>
	</div>





	<!-- Footer -->
	<footer class="py-5 bg-dark">

		<div class="container">
			<p class="m-0 text-center text-white">
				<span>������ : XXXX-XXXX</span> <span>&emsp;</span> <span>���̽���</span>
				<span>�ν�Ÿ�׷�</span>
			</p>
		</div>

		<hr style="width: 90%; border-color: gray;">

		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Shop 2021</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
		crossorigin="anonymous"></script>




</body>
</html>
<%
	}
%>
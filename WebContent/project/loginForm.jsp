<%@page import="dao.MemberDao"%>
<%@page import="Model.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String login = (String) session.getAttribute("login");
String id = request.getParameter("id");
if (login == null || login.trim().equals("")) {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ȭ��</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/project/css/main.css">

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





<!-- 	<form action="/project/project/login.jsp" method="post">
		<table>
			<caption>MODEL1 �α���</caption>
			<tr>
				<th>���̵�</th>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<th>��й�ȣ</th>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="�α���"> <input
					type="button" value="ȸ������"
					onclick="location.href='/project/project/joinForm.jsp'"></td>
			</tr>
		</table>
	</form> -->



	<!-- Login Content -->
	<h3 class="mt-3 mb-3 text-center">�α���</h3>

	<form class="container-md p-3 col-8 mb-5 mx-auto"
		action="/project/project/login.jsp" method="post">

		<label for="inputId" class="visually-hidden">���̵�</label> <input
			type="text" id="inputId" class="form-control mb-3" name="id"
			placeholder="ID" required autofocus> <label
			for="inputPassword" class="visually-hidden">��й�ȣ</label> <input
			type="password" id="inputPassword" class="form-control mb-3"
			name="pass" placeholder="Password" required>

		<div class="checkbox mb-3">
			<label> <input type="checkbox" value="remember-me">
				���̵� ����
			</label>
		</div>

		<button type="submit" class="w-45 btn btn-lg btn-primary mb-5"
			value="�α���">�α���</button>
		<input type="button" class="w-45 btn btn-lg btn-primary mb-5"
			value="ȸ������" onclick="location.href='/project/project/joinForm.jsp'">
	</form>




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
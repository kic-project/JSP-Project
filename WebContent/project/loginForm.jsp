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
<title>로그인 화면</title>

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
					<li class="nav-item active"><a class="nav-link" href="#">소개
							<span class="sr-only">(current)</span>
					</a></li>
					-->
 
					<li class="nav-item"><a class="nav-link"
						href="CartView.jsp?id=<%=login%>">장바구니</a></li>

					<li class="nav-item"><a class="nav-link"
						href="myPage.jsp?id=<%=login%>">마이페이지</a></li>

					<li class="nav-item"><a class="nav-link" href="loginForm.jsp">로그인</a></li>

					<li class="nav-item"><a class="nav-link" href="joinForm.jsp">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Categories Navbar -->
	<nav class="navbar navbar-expand-lg nav-categories">
		<div class="container col-lg-12">
			<a class="nav-category-item" href="#">자켓</a> <a
				class="nav-category-item" href="#">상의</a> <a
				class="nav-category-item" href="#">하의</a> <a
				class="nav-category-item" href="#">기타</a>
		</div>
	</nav>





<!-- 	<form action="/project/project/login.jsp" method="post">
		<table>
			<caption>MODEL1 로그인</caption>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="로그인"> <input
					type="button" value="회원가입"
					onclick="location.href='/project/project/joinForm.jsp'"></td>
			</tr>
		</table>
	</form> -->



	<!-- Login Content -->
	<h3 class="mt-3 mb-3 text-center">로그인</h3>

	<form class="container-md p-3 col-8 mb-5 mx-auto"
		action="/project/project/login.jsp" method="post">

		<label for="inputId" class="visually-hidden">아이디</label> <input
			type="text" id="inputId" class="form-control mb-3" name="id"
			placeholder="ID" required autofocus> <label
			for="inputPassword" class="visually-hidden">비밀번호</label> <input
			type="password" id="inputPassword" class="form-control mb-3"
			name="pass" placeholder="Password" required>

		<div class="checkbox mb-3">
			<label> <input type="checkbox" value="remember-me">
				아이디 저장
			</label>
		</div>

		<button type="submit" class="w-45 btn btn-lg btn-primary mb-5"
			value="로그인">로그인</button>
		<input type="button" class="w-45 btn btn-lg btn-primary mb-5"
			value="회원가입" onclick="location.href='/project/project/joinForm.jsp'">
	</form>




	<!-- Footer -->
	<footer class="py-5 bg-dark">

		<div class="container">
			<p class="m-0 text-center text-white">
				<span>고객센터 : XXXX-XXXX</span> <span>&emsp;</span> <span>페이스북</span>
				<span>인스타그램</span>
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
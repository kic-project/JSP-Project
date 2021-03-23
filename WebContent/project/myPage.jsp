<%@page import="dao.MemberDao"%>
<%@page import="Model.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
    String login=(String)session.getAttribute("login");
    String id=request.getParameter("id");
    if(login==null||login.trim().equals("")){
%>
<script type="text/javascript">
alert("로그인이 필요합니다. 로그인하세요.")
location.href="loginForm.jsp";
</script>
<%}else if(!login.equals("admin")&&!login.equals(id)){ %>
<script type="text/javascript">
alert("자신의 정보만 조회가 가능합니다.");
location.href="main.jsp";
</script>
<% }else{
	Member mem=new MemberDao().selectOne(id);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>멤버정보</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
	<!-- Bootstrap core JavaScript -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
		crossorigin="anonymous"></script>
<!-- Custom styles for this template -->
</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="#">Shop</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">

					<li class="nav-item active"><a class="nav-link" href="#">소개
							<!-- <span class="sr-only">(current)</span> -->
					</a></li>
					<li class="nav-item"><a class="nav-link" href="logout.jsp">로그아웃</a></li>

					<li class="nav-item"><a class="nav-link" href="CartView.jsp?id=<%=login %>">장바구니</a></li>

					<li class="nav-item"><a class="nav-link" href="myPage.jsp?id=<%=login %>">마이페이지</a></li>

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

<div class="container" height="100px">

<p class="m-0 text-center text-black">
<table style="margin-top: 50px;"><tr>
<td width="33%"><a href="<%=request.getContextPath()%>/project/orderList.jsp?id=<%=mem.getId()%>">주문조회&nbsp;&nbsp;&nbsp;</a></td>
<td width="33%"><a href="<%=request.getContextPath()%>/project/pointList.jsp?id=<%=mem.getId()%>">포인트: <%=mem.getPoint() %>&nbsp;&nbsp;&nbsp;</a></td>
<td width="33%">누적금액: <%=mem.getTotalprice() %></td>
</tr></table></p>
<table style="margin-bottom: 50px;">
<tr><td rowspan="6"><img src="img/<%=mem.getPicture() %>" width="200px" height="200px"></td>
<td>아이디</td>
<td><%=mem.getId() %></td></tr>
<tr><td>이름</td>
<td><%=mem.getName() %></td></tr>
<tr><td>전화번호</td>
<td><%=mem.getTel() %></td></tr>
<tr><td>이메일</td>
<td><%=mem.getEmail() %></td></tr>
<tr><td>주소</td>
<td><%=mem.getAddress() %></td></tr>
<tr><td>등급</td>
<td><%=mem.getMemlevel() %></td></tr>
<tr><td colspan="3"><p>
<a href="<%=request.getContextPath()%>/project/updateForm.jsp?id=<%=mem.getId()%>">[수정]</a>
<% if(!id.equals("admin")){%>
<a href="<%=request.getContextPath()%>/project/deleteForm.jsp?id=<%=mem.getId()%>">[탈퇴]</a>
<%} %></p></td></tr></table></div>


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
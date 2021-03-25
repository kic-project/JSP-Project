<%@page import="Model.Board"%>
<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String login = (String) session.getAttribute("login");
    int num=Integer.parseInt(request.getParameter("num"));
    BoardDao dao=new BoardDao();
    Board board=dao.selectOne(num);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ��� ��� ����</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
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
					
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/project/logout.jsp">�α׾ƿ�</a></li>
					
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/project/Cart.jsp?id=<%=login %>">��ٱ���</a></li>

					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/project/myPage.jsp?id=<%=login %>">����������</a></li>

					<li class="nav-item" id="loginButton"><a class="nav-link" href="<%=request.getContextPath()%>/project/loginForm.jsp">�α���</a></li>

					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/project/joinForm.jsp">ȸ������</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Categories Navbar -->
	<nav class="navbar navbar-expand-lg nav-categories">
		<div class="container col-lg-12">
			<a class="nav-category-item" href="projectServlet?command=catagory&kind=outer">����</a> <a
				class="nav-category-item" href="projectServlet?command=catagory&kind=top">����</a> <a
				class="nav-category-item" href="projectServlet?command=catagory&kind=bottom">����</a> <a
				class="nav-category-item" href="projectServlet?command=catagory&kind=etc">��Ÿ</a> <a
				class="nav-category-item" href="/project/board/list">����</a>
		</div>
	</nav>
	
	
<form action="reply" method="post" name="f">
<input type="hidden" name="num" value="${board.num}">
<input type="hidden" name="ref" value="${board.ref}">
<input type="hidden" name="reflevel" value="${board.reflevel}">
<input type="hidden" name="refstep" value="${board.refstep}">
  <table>
   <caption>MODEL1 �Խ��� ��� ���</caption>
   <tr><td>�۾���</td><td><input type="text" name="name"></td></tr>
   <tr><td>��й�ȣ</td><td><input type="password" name="pass" ></td></tr>
   <tr><td>����</td><td><input type="text" name="subject" value="RE:${board.subject}"></td></tr>
   <tr><td>����</td><td><textarea rows="15" name="content" ></textarea></td></tr>
   <tr><td colspan="2">
     <a href="javascript:document.f.submit()">[�亯�۵��]</a></td></tr>
  </table>
  </form>
  </body>
</html>
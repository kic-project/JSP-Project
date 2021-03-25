<%@page import="Model.Board"%>
<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String login = (String) session.getAttribute("login");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title><meta name="viewport"
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
	
	
<table>
<caption>MODEL1 �Խù� �󼼺���</caption>
<tr><td width="20%">�۾���</td>
<td width="80%" style="text-align:left">${board.name}</td></tr>
<tr><td>����</td><td style="text-align:lift">${board.subject}</td></tr>
<tr><td>����</td><td>
<table style="width:100%; height:250px;"><tr><td style="border-width:0px; vertical-align:top; text-align:left;">
${board.content}</td></tr></table></td></tr>
<tr><td>÷������</td>
<td style="text-align:left;">
<c:if test="${board.file1==null||board.file1.trim() eq ''}">
&nbsp;</c:if>
<c:if test="${board.file1!=null && !board.file1.trim() eq ''}">
<a href="file/${board.file1}">${board.file1}</a>
</c:if>
</td></tr>
<tr><td colspan="2">
<a href="replyForm?num=${num}">[�亯]</a>
<a href="updateForm?num=${num}">[����]</a>
<a href="deleteForm?num=${num}">[����]</a>
<a href="list">[���]</a>
</td></tr>
</table>
</body>
</html>
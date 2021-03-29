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
					<li class="nav-item active"><a class="nav-link" href="#">소개
							<span class="sr-only">(current)</span>
					</a></li>
					 -->
					
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/project/logout.jsp">로그아웃</a></li>
					
					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/project/Cart.jsp?id=<%=login %>">장바구니</a></li>

					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/project/myPage.jsp?id=<%=login %>">마이페이지</a></li>

					<li class="nav-item" id="loginButton"><a class="nav-link" href="<%=request.getContextPath()%>/project/loginForm.jsp">로그인</a></li>

					<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/project/joinForm.jsp">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Categories Navbar -->
	<nav class="navbar navbar-expand-lg nav-categories">
		<div class="container col-lg-12">
			<a class="nav-category-item" href="projectServlet?command=catagory&kind=outer">자켓</a> <a
				class="nav-category-item" href="projectServlet?command=catagory&kind=top">상의</a> <a
				class="nav-category-item" href="projectServlet?command=catagory&kind=bottom">하의</a> <a
				class="nav-category-item" href="projectServlet?command=catagory&kind=etc">기타</a> <a
				class="nav-category-item" href="/project/board/list">문의</a>
		</div>
	</nav>
	
	
<table>
<caption>MODEL1 게시물 상세보기</caption>
<tr><td width="20%">글쓴이</td>
<td width="80%" style="text-align:left">${board.name}</td></tr>
<tr><td>제목</td><td style="text-align:lift">${board.subject}</td></tr>
<tr><td>내용</td><td>
<table style="width:100%; height:250px;"><tr><td style="border-width:0px; vertical-align:top; text-align:left;">
${board.content}</td></tr></table></td></tr>
<tr><td>첨부파일</td>
<td style="text-align:left;">
<c:if test="${board.file1==null||board.file1.trim() eq ''}">
&nbsp;</c:if>
<c:if test="${board.file1!=null && !board.file1.trim() eq ''}">
<a href="file/${board.file1}">${board.file1}</a>
</c:if>
</td></tr>
<tr><td colspan="2">
<a href="replyForm?num=${num}">[답변]</a>
<a href="updateForm?num=${num}">[수정]</a>
<a href="deleteForm?num=${num}">[삭제]</a>
<a href="list">[목록]</a>
</td></tr>
</table>
</body>
</html>
<%@page import="Model.Board"%>
<%@page import="java.util.List"%>
<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%String login = (String) session.getAttribute("login");%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="EUC-KR">
<title>Insert title here</title>
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
		<c:if test="${boardcount == 0}">
			<tr>
				<td colspan="5">등록된 게시물이 없습니다.</td>
			</tr>
		</c:if>
		<c:if test="${boardcount != 0}">
			<tr>
				<td colspan="5" style="text-align: right">글개수:${boardcount}</td>
			</tr>
			<tr>
				<th width="8%">번호</th>
				<th width="50%">제목</th>
				<th width="14%">작성자</th>
				<th width="17%">등록일</th>
				<th width="11%">조회수</th>
			</tr>
			<c:forEach var="b" items="${list}">
				<tr>
					<td>${boardnum}</td>
					<td style="text-align: left"><c:set var="boardnum"
							value="${boardnum-1}" /> <c:if
							test="${b.file1 != null && !b.file1.trim() eq ''}">
							<a href=""${request.contextPath}/project/css/upfile/${b.file1}" style="text-decoration: none;">@</a>
						</c:if> <c:if test="${b.file1 == null || b.file1.trim() eq''}">
				&nbsp;&nbsp;&nbsp; </c:if> <c:if test="${b.reflevel > 0}">
				<c:forEach var="i" begin="1" end="${b.reflevel-1}"> 
				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</c:forEach>
 				L</c:if> 
 				<a href="info?num=${b.num}">${b.subject}</a></td>
					<td>${b.name}</td>
					<td>${b.regdate}</td><td>${b.readcnt}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5">
				<c:if test="${startpage <=bottomLine}">[이전]</c:if>
				<c:if test="${startpage >bottomLine}"> 
				<a href="list?pageNum=${startpage-bottomLine}">[이전]</a></c:if>
					<c:forEach var="a" begin="${startpage}" end="${endpage-1}">
					<c:if test="${a==pageNum}">[${a}] </c:if>
					<c:if test="${a!=pageNum}">
					<a href="list?pageNum=${a}">[${a}]
				</a></c:if></c:forEach>
				<c:if test="${endpage>=maxpage}">[다음]</c:if>
				<c:if test="${endpage<maxpage}">
				<a href="list?pageNum=${startpage+bottomLine}">[다음]</a></c:if>
				</td>
			</tr>
		</c:if>
			<tr>
			<td colspan="5" style="text-align: right"><a
				href="writeForm">[글쓰기]</a></td>
		</tr>
	</table>
</body>
</html>
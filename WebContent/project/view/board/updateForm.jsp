<%@page import="dao.BoardDao"%>
<%@page import="Model.Board"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String login = (String) session.getAttribute("login");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
function file_delete(){
	document.f.file2.value="";
	file_desc.style.display="none";}
</script>
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
	
	
<form action="update" method="post" enctype="multipart/form-data" name="f">
<input type="hidden" name="num" value="${board.num}">
<input type="hidden" name="file2" value="${board.file1}==null? '':board.file1">
<table>
<caption>MADEL1 �Խ��� ���� ȭ��</caption>
<tr><td>�۾���</td><td>
<input type="text" name="name" value="${board.name}"></td></tr>
<tr><td>��й�ȣ</td><td><input type="password" name="pass"></td></tr>
<tr><td>����</td><td>
<input type="text" name="subject" value="${board.subject}"></td></tr>
<tr><td>����</td><td>
<textarea rows="15" name="content" value="${board.content}"></textarea></td></tr>
<tr><td>÷������</td><td style="text-align:left">
<c:if test="${board.file1 !=null&&(board.file1 ne '')}">
<div id="file_desc">${board.file1}
<a href="javascript:file_delete()">[÷������ ����]</a></div>
</c:if>
<input type="file" name="file1"></td></tr>
<tr><td colspan="2">
<a href="javascript:document.f.submit()">[�Խù� ����]</a>
</td></tr></table></form>
</body>
</html>
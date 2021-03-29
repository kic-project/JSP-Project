<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="dao.MemberDao"%>
<%@page import="Model.Member"%>
    <% String login = (String) session.getAttribute("login");
    String id = request.getParameter("id");
    Member mem = new MemberDao().selectOne(login);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글쓰기 화면</title>
<script>
function board_submit(){
	var f=document.f;
	if(f.name.value==""){
		alert("이름을 입력하세요.");
		f.name.focus();
		return ;
	}
	if(f.pass.value==""){
		alert("비밀번호를 입력하세요.");
		f.pass.focus();
		return ;
	}
	if(f.subject.value==""){
		alert("제목을 입력하세요.");
		f.subject.focus();
		return ;
	}
	if(f.content.value==""){
		alert("내용을 입력하세요.");
		f.content.focus();
		return ;
	}
	
	f.submit();
}
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


<form action="write" method="post" 
       enctype="multipart/form-data" name="f">
  <table>
   <tr><td>글쓴이</td><td><input type="text" name="name" value="<%=mem.getName()%>"></td></tr>
   <tr><td>비밀번호</td><td><input type="password" name="pass" ></td></tr>
   <tr><td>제목</td><td><input type="text" name="subject" ></td></tr>
   <tr><td>내용</td><td><textarea rows="15" name="content"></textarea></td></tr>
   <tr><td>첨부파일</td><td><input type="file" name="file1" ></td></tr>
   <tr><td colspan="2">
     <a href="javascript:board_submit()">[게시물등록]</a></td></tr>
  </table></form></body></html>
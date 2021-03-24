<%@page import="Model.Member"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%-- /WebContent/model1/member/updateForm.jsp
   1. id 파라미터 
   2. 로그인상태 검증.
            로그아웃상태 : 로그인이 필요합니다. 메세지 출력하고, loginForm.jsp 페이지 이동
   3. 로그인 상태
      3-1 : id 파라미터정보와 login 정보를 비교해서 다르면
                         자신의 정보만 수정 가능합니다. 메세지 출력. info.jsp 페이지 이동.
      3-2 : id 파라미터정보와 login 정보를 비교하여 다르지만 login이  관리자인 경우
                     와   id와 로그인 정보가 같은 경우 화면에 내용 출력하기
           MemberDao().selectOne(id) 메서드를 이용하여 db 내용 조회하기
   4. id에 해당하는 회원의 정보를 db에서 조회 화면 출력 
--%>
<%
	String login = (String) session.getAttribute("login");
String id = request.getParameter("id");
if (login == null || login.trim().equals("")) {
%>
<script type="text/javascript">
        alert("로그인이 필요합니다.");
        location.href="loginForm.jsp";
    </script>
<%
	} else if (!login.equals("admin") && !login.equals(id)) {
%>
<script type="text/javascript">
        alert("자신의 정보만 수정이 가능합니다.");
        location.href="memberInfo.jsp?id=<%=login%>
	";
</script>
<%
	} else {
Member mem = new MemberDao().selectOne(id);
%>
<!DOCTYPE html><html><head><meta charset="EUC-KR">
<title>회원 정보 수정</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/project/css/main.css">
<script>
function input_check(f){
<%if(!login.equals("admin")){%>
if(f.pass.value==""){
	alert("비밀번호를 입력하세요");
	f.pass.focus();
	return false;
	}
<%}%>
return true;
}
function passchg_winopen(){
	var op="width=500, height=230, left=50, top=150";
	open("passwordForm.jsp","",op);
}
function win_upload(){
	var op="width=500, height=150, left=50, top=150";
	open("pictureimgForm.jsp","",op);
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
					<li class="nav-item"><a class="nav-link" href="#">소개 <span class="sr-only">(current)</span>
					</a></li>
 					-->

					<li class="nav-item"><a class="nav-link" href="cartForm.jsp">장바구니</a></li>

					<li class="nav-item"><a class="nav-link" href="myPage.jsp">마이페이지</a></li>

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


	<form class="container-md p-3 col-8 mb-5 mx-auto"
		action="<%=request.getContextPath()%>/project/update.jsp" name="f"
		method="post" onsubmit="return input_check(this)">
		<input type="hidden" name="picture" >
		
			<tr><td rowspan="5" valign="bottom"><img
					src="img/<%=mem.getPicture()%>" width="100" height="120" id="pic"><br>
					<font size="1"><a href="javascript:win_upload()">사진수정</a></font></td>				
			
		<div class="mb-3">
			<label for="inputId" class="form-label">아이디: </label> <input
				type="hidden" class="form-control" id="inputId" name="id"
				value="<%=mem.getId() %>"><%=mem.getId() %>
		</div>

		<div class="mb-3">
			<label for="inputPassword" class="form-label">비밀번호</label> <input
				type="password" class="form-control" id="inputPassword" name="pass"
				>
		</div>

		<div class="mb-3">
			<label for="inputName" class="form-label">이름: </label> <input
				type="hidden" class="form-control" id="inputName" name="name"
				value="<%=mem.getId() %>"><%=mem.getName() %>
		</div>
			
		<div class="mb-3">
			<label for="genderSelect" class="form-label">성별: </label><input
				type="hidden" class="form-control" id="inputGender" name="gender"
				value="<%=mem.getGender() %>"><%=mem.getGender()==1?" 남":" 여" %>
		</div>

		<div class="mb-3">
			<label for="inputBirth" class="form-label">생년월일</label> <input
				type="hidden" class="form-control" id="inputBirth" name="birthday"
				value="<%=mem.getBirthday() %>"><%=mem.getBirthday() %>
		</div>

		<div class="mb-3">
			<label for="inputEmail" class="form-label">이메일</label> <input
				type="text" class="form-control" id="inputEmail" name="email"
				value="<%=mem.getEmail() %>">
		</div>

		<div class="mb-3">
			<label for="inputPhone" class="form-label">전화번호</label> <input
				type="text" class="form-control" id="inputPhone" name="tel"
				value="<%=mem.getTel() %>">
		</div>
		
		<div class="mb-3">
			<label for="inputAddress" class="form-label">주소</label> <input
				type="text" class="form-control" id="inputAddress" name="address"
				value="<%=mem.getAddress() %>">
		</div>

		<button type="submit" class="w-100 btn btn-lg btn-primary mb-5"
			>완료</button>

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
<%}%>

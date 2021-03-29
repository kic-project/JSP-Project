<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% String login = (String) session.getAttribute("login");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>회원가입 화면</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/project/css/main.css">

<script type="text/javascript">
	function win_upload() {
		var op = "width=500, height=150, left=50, top=150";
		open("pictureimgForm", '', op);
	}
	function checkId() {
		var inputId = document.getElementById("inputId");
		if (inputId == "") {
			alert("아이디를 입력해주세요");
			return false;
		}
		if (!inputId.checkValidity()) {
			document.getElementById("demo").innerHTML = inpObj.validationMessage;
		} else {
			document.getElementById("demo").innerHTML = "Input OK";
		}
	}
</script>
</head>

<body>

		<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="main">Shop</a>

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
					
					<li class="nav-item"><a class="nav-link" href="logout">로그아웃</a></li>
					
					<li class="nav-item"><a class="nav-link" href="Cart?id=<%=login %>">장바구니</a></li>

					<li class="nav-item"><a class="nav-link" href="myPage?id=<%=login %>">마이페이지</a></li>

					<li class="nav-item" id="loginButton"><a class="nav-link" href="loginForm">로그인</a></li>

					<li class="nav-item"><a class="nav-link" href="joinForm">회원가입</a></li>
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


	<!-- 	<form action="join" name="f" method="post">
		<input type="hidden" name="picture" value="">
		<table>
			<tr>
				<td rowspan="4" valign="bottom"><img src="" width="100"
					height="120" id="pic"><br> <font size="1"><a
						href="javascript:win_upload()">사진등록</a></font></td>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="gender" value="1" checked>남
					<input type="radio" name="gender" value="2">여</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td colspan="2"><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td colspan="2"><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="2"><input type="text" name="address"></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="회원가입"></td>
			</tr>
		</table>
	</form> -->


	<!-- Join Content -->
	<h3 class="mt-3 mb-3 text-center">회원가입</h3>

	<form class="container-md p-3 col-8 mb-5 mx-auto"
		action="join" name="f"
		method="post">

		<div class="mb-3">
			<label for="inputId" class="form-label">아이디</label> <input
				type="text" class="form-control" id="inputId" name="id"
				placeholder="아이디">
		</div>

		<div class="mb-3">
			<label for="inputPassword" class="form-label">비밀번호</label> <input
				type="password" class="form-control" id="inputPassword" name="pass"
				placeholder="비밀번호 (숫자, 영문, 특수문자 조합 최소 8자)">
		</div>

		<!-- <div class="mb-3">
			<label for="inputPasswordCheck" class="form-label">비밀번호 확인</label> <input
				type="password" class="form-control" id="inputPasswordCheck"
				name="check" placeholder="비밀번호 확인">
		</div>
 -->
		<div class="mb-3">
			<label for="inputName" class="form-label">이름</label> <input
				type="text" class="form-control" id="inputName" name="name"
				placeholder="이름">
		</div>
		
		<div class="mb-3">
			<label for="inputName" class="form-label">이름</label> <input
				type="text" class="form-control" id="inputName" name="join_date"
				placeholder="가입일">
		</div>

		<div class="mb-3">
			<label for="inputBirth" class="form-label">생년월일</label> <input
				type="text" class="form-control" id="inputBirth" name="birthday"
				placeholder="생년월일 입력 (yymmdds)">
		</div>

		<div class="mb-3">
			<label for="inputPhone" class="form-label">전화번호</label> <input
				type="text" class="form-control" id="inputPhone" name="tel"
				placeholder="전화번호 입력 (010XXXXXXXX)">
		</div>
		
		<div class="mb-3">
			<label for="inputAddress" class="form-label">주소</label> <input
				type="text" class="form-control" id="inputAddress" name="zip_num"
				placeholder="우편번호">
		</div>
		
		<div class="mb-3">
			<label for="inputEmail" class="form-label">이메일</label> <input
				type="text" class="form-control" id="inputEmail" name="email"
				placeholder="이메일@주소">
		</div>

		<div class="mb-3">
			<label for="inputAddress" class="form-label">주소</label> <input
				type="text" class="form-control" id="inputAddress" name="address"
				placeholder="주소 입력 (oo시 oo구 oo동)">
		</div>

		<!-- <div class="mb-3">
			<label for="inputRecommender" class="form-label">추천인</label> <input
				type="text" class="form-control" id="inputRecommender"
				name="recommender" placeholder="추천인 아이디 입력">
		</div> -->

		<div class="mb-3 form-check">
			<input type="checkbox" class="form-check-input" id="checkAll" name="agree" value="1">
			<label class="form-check-label" for="checkAll">약관 모두 동의</label>
		</div>

		<div class="mb-3 p-3 border">
			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="ageCheck">
				<label class="form-check-label" for="ageCheck">만 14세 이상입니다.
				</label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="agreeCheck">
				<label class="form-check-label" for="agreeCheck">약관 동의 </label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="privacyCheck">
				<label class="form-check-label" for="privacyCheck">개인정보수집 및
					이용에 대한 안내 </label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="eventCheck">
				<label class="form-check-label" for="eventCheck">이벤트/마케팅 수신
					동의 </label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="nightCheck">
				<label class="form-check-label" for="nightCheck">야간 혜택 알림 수신
					동의 </label>
			</div>
		</div>

		<button type="submit" class="w-100 btn btn-lg btn-primary mb-5"
			value="회원가입">완료</button>

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

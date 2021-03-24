<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ȸ������ ȭ��</title>

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
		open("pictureimgForm.jsp", '', op);
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
					<li class="nav-item"><a class="nav-link" href="#">�Ұ� <span class="sr-only">(current)</span>
					</a></li>
 					-->

					<li class="nav-item"><a class="nav-link" href="cartForm.jsp">��ٱ���</a></li>

					<li class="nav-item"><a class="nav-link" href="myPage.jsp">����������</a></li>

					<li class="nav-item"><a class="nav-link" href="loginForm.jsp">�α���</a></li>

					<li class="nav-item"><a class="nav-link" href="joinForm.jsp">ȸ������</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Categories Navbar -->
	<nav class="navbar navbar-expand-lg nav-categories">
		<div class="container col-lg-12">
			<a class="nav-category-item" href="#">����</a> <a
				class="nav-category-item" href="#">����</a> <a
				class="nav-category-item" href="#">����</a> <a
				class="nav-category-item" href="#">��Ÿ</a>
		</div>
	</nav>


<!-- 	<form action="join.jsp" name="f" method="post">
		<input type="hidden" name="picture" value="">
		<table>

			<tr>
				<td rowspan="4" valign="bottom"><img src="" width="100"
					height="120" id="pic"><br> <font size="1"><a
						href="javascript:win_upload()">�������</a></font></td>
				<td>���̵�</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>��й�ȣ</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="radio" name="gender" value="1" checked>��
					<input type="radio" name="gender" value="2">��</td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td colspan="2"><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td>�̸���</td>
				<td colspan="2"><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td colspan="2"><input type="text" name="address"></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="ȸ������"></td>
			</tr>
		</table>
	</form> -->


	<!-- Join Content -->
	<h3 class="mt-3 mb-3 text-center">ȸ������</h3>

	<form class="container-md p-3 col-8 mb-5 mx-auto"
		action="/project/join.jsp" name="f" method="post">

		<div class="mb-3">
			<label for="inputId" class="form-label">���̵�</label> <input
				type="text" class="form-control" id="inputId" name="id"
				placeholder="���̵�">
		</div>

		<div class="mb-3">
			<label for="inputPassword" class="form-label">��й�ȣ</label> <input
				type="password" class="form-control" id="inputPassword" name="pass"
				placeholder="��й�ȣ (����, ����, Ư������ ���� �ּ� 8��)">
		</div>

		<div class="mb-3">
			<label for="inputPasswordCheck" class="form-label">��й�ȣ Ȯ��</label> <input
				type="password" class="form-control" id="inputPasswordCheck"
				name="check" placeholder="��й�ȣ Ȯ��">
		</div>

		<div class="mb-3">
			<label for="genderSelect" class="form-label">����</label><br /> <select
				id="genderSelect" name="gender"
				class="form-control form-select form-select-lg mb-3">
				<option selected>����</option>
				<option value="1">��</option>
				<option value="2">��</option>
			</select>
		</div>

		<div class="mb-3">
			<label for="inputBirth" class="form-label">�������</label> <input
				type="text" class="form-control" id="inputBirth" name="birth"
				placeholder="������� �Է� (yymmdd)">
		</div>

		<div class="mb-3">
			<label for="inputEmail" class="form-label">�̸���</label> <input
				type="text" class="form-control" id="inputEmail" name="email"
				placeholder="�̸���@�ּ�">
		</div>

		<div class="mb-3">
			<label for="inputPhone" class="form-label">��ȭ��ȣ</label> <input
				type="text" class="form-control" id="inputPhone" name="tel"
				placeholder="��ȭ��ȣ �Է� (010XXXXXXXX)">
		</div>

		<div class="mb-3">
			<label for="inputRecommender" class="form-label">��õ��</label> <input
				type="text" class="form-control" id="inputRecommender" name="recommender" 
				placeholder="��õ�� ���̵� �Է�">
		</div>

		<div class="mb-3 form-check">
			<input type="checkbox" class="form-check-input" id="checkAll">
			<label class="form-check-label" for="checkAll">��� ��� ����</label>
		</div>

		<div class="mb-3 p-3 border">
			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="ageCheck">
				<label class="form-check-label" for="ageCheck">�� 14�� �̻��Դϴ�.
				</label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="agreeCheck">
				<label class="form-check-label" for="agreeCheck">��� ���� </label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="privacyCheck">
				<label class="form-check-label" for="privacyCheck">������������ ��
					�̿뿡 ���� �ȳ� </label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="eventCheck">
				<label class="form-check-label" for="eventCheck">�̺�Ʈ/������ ����
					���� </label>
			</div>

			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="nightCheck">
				<label class="form-check-label" for="nightCheck">�߰� ���� �˸� ����
					���� </label>
			</div>
		</div>

		<button type="submit" class="w-100 btn btn-lg btn-primary mb-5"
			value="ȸ������">�Ϸ�</button>

	</form>




	<!-- Footer -->
	<footer class="py-5 bg-dark">

		<div class="container">
			<p class="m-0 text-center text-white">
				<span>������ : XXXX-XXXX</span> <span>&emsp;</span> <span>���̽���</span>
				<span>�ν�Ÿ�׷�</span>
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
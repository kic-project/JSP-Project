<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String login = (String) session.getAttribute("login");
session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그아웃</title>
<script>
	alert("<%=login%> 님이 로그아웃되었습니다.");
	location.href = "loginForm.jsp";
</script>
</head>
<body>

</body>
</html>
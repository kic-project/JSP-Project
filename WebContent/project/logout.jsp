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
<title>�α׾ƿ�</title>
<script>
	alert("<%=login%> ���� �α׾ƿ��Ǿ����ϴ�.");
	location.href = "loginForm.jsp";
</script>
</head>
<body>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ȭ��</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
</head>
<body>
<form name="f" action="<%=request.getContextPath() %>/project/delete.jsp" method="post">
<input type="hidden" name="id" value="<%=request.getParameter("id") %>">
<table style="width:80%; margin: auto; margin-top:20px;">
<caption>ȸ������ ��й�ȣ �Է�</caption>
<tr><td>��й�ȣ</td>
<td><input type="password" name="pass"></td></tr>
<tr><td colspan="2"><input type="submit" value="Ż���ϱ�"></td></tr>
</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣ ���� ȭ��</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
<script type="text/javascript">
function inchk(f){
	if(f.chgpass.value != f.chgpass2.value){
		alert("���� ��й�ȣ�� ���Է��� �ٸ��ϴ�.");
		f.chgpass2.value="";
		f.chgpass2.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<form action="password.jsp" mehtod="post" name="f" onsubmit="return inchk(this)">
<table>
<caption>��й�ȣ ����</caption>
<tr><td>���� ��й�ȣ</td>
<td><input type="password" name="pass"></td></tr>
<tr><td>���� ��й�ȣ</td>
<td><input type="password" name="chgpass"></td></tr>
<tr><td>���� ��й�ȣ ���Է�</td>
<td><input type="password" name="chgpass2"></td></tr>
<tr><td colspan="2">
<input type="submit" value="��й�ȣ ����"></td></tr>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
</head>
<body>
<form action="delete" name="f" method="post">
<input type="hidden" name="num" value="${num}">
<table>
<caption>MODEL1 게시글 삭제 화면</caption>
<tr><td>게시글 비밀번호</td>
<td><input type=password" name="pass"></td></tr>
<tr><td colspan="2">
<input type="submit" value="게시글삭제"></td></tr>
</table>
</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사진변경 화면</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
</head>
<body>
<h3>업로드</h3>
<form action="pictureimg.jsp" method="post" enctype="multipart/form-data">
<input type="file" name="picture">
<input type="submit" value="사진등록">
</form>
</body>
</html>
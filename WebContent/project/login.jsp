<%@page import="Model.Member"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
Member mem=new MemberDao().selectOne(id);
String msg="아이디를 확인하세요";
String url="/project/project/loginForm.jsp";
if(mem !=null){
	if(pass.equals(mem.getPass())){
		session.setAttribute("login", id);
		msg=mem.getName()+"님이 로그인 하셨습니다.";
		url="main.jsp";
	}else{
		msg="비밀번호를 확인하세요.";
	}
}
%>
<script>
alert("<%=msg%>");
location.href="<%=url%>";
</script>
</head>
<body>

</body>
</html>
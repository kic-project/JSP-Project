<%@page import="Model.Member"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
Member mem=new MemberDao().selectOne(id);
String msg="���̵� Ȯ���ϼ���";
String url="/project/project/loginForm.jsp";
if(mem !=null){
	if(pass.equals(mem.getPass())){
		session.setAttribute("login", id);
		msg=mem.getName()+"���� �α��� �ϼ̽��ϴ�.";
		url="main.jsp";
	}else{
		msg="��й�ȣ�� Ȯ���ϼ���.";
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
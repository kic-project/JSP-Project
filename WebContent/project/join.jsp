<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <% request.setCharacterEncoding("euc-kr"); %>
     <jsp:useBean id="mem" class="Model.Member" />
     <jsp:setProperty property="*" name="mem"/>
     <%
     MemberDao dao=new MemberDao();
     int num=dao.insert(mem);
     String msg="";
     String url="";
     if(num>0){
    	 msg=mem.getName()+" 가입완료";
    	 url="loginForm.jsp";
     }else{
    	 msg="가입실패";
    	 url="joinForm.jsp";
     }
     %>
     <script>
     alert("<%=msg%>")
     location.href="<%=url%>"
     </script>
     <%=num %>개 입력 되었습니다.
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입 결과</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
</head>
<body>

</body>
</html>
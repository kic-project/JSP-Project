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
    	 msg=mem.getName()+" ���ԿϷ�";
    	 url="loginForm.jsp";
     }else{
    	 msg="���Խ���";
    	 url="joinForm.jsp";
     }
     %>
     <script>
     alert("<%=msg%>")
     location.href="<%=url%>"
     </script>
     <%=num %>�� �Է� �Ǿ����ϴ�.
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ ���</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
</head>
<body>

</body>
</html>
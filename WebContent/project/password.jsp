<%@page import="Model.Member"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String login=(String)session.getAttribute("login");
    boolean opener=false;
    String msg=null;
    String url=null;
    if(login==null||login.trim().equals("")){
    	opener=true;
    	msg="로그인하세요.";
    	url="loginForm.jsp";
    }else{
    	String pass=request.getParameter("pass");
    	String chgpass=request.getParameter("chgpass");
    	MemberDao dao=new MemberDao();
    	Member mem=dao.selectOne(login);
    	if(pass.equals(mem.getPass())){
    		if(dao.updatePass(login,chgpass)>0){
    			msg="비밀번호 변경 완료.";
    			url="memberInfo.jsp?id="+login;
    			opener=true;
    		}else{
    			msg="비밀번호 변경시 오류 발생.";
    			url="passwordForm.jsp";
    		}
    	}else{
    		msg="비밀번호 오류. 확인하세요.";
    		url="passwordForm.jsp";
    	}
    }
    %>
    <script>
    alert("<%=msg%>");
    <%if(opener){%>
    opener.location.href="<%=url%>";
    self.close();
    <%} else{%>
    location.href="<%=url%>";
    <%}%>
    </script>
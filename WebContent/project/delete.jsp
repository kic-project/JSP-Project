<%@page import="Model.Member"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
   
    String login=(String)session.getAttribute("login");
    String id=request.getParameter("id");
    String pass=request.getParameter("pass");
    String msg=null;
    String url=null;
    if(login==null||login.trim().equals("")){
    	msg="·Î±×ÀÎÀÌ ÇÊ¿äÇÕ´Ï´Ù.";
    	url="loginForm.jsp";
    }else if(!login.equals(id)&&!login.equals("admin")){
    	msg="º»ÀÎ¸¸ Å»Åð°¡ °¡´ÉÇÕ´Ï´Ù.";
    	url="main.jsp";
    }else if(id.equals("admin")){
    	msg="°ü¸®ÀÚ´Â Å»ÅðÇÒ ¼ö ¾ø½À´Ï´Ù.";
    	url="main.jsp";
    }else{
    	MemberDao dao=new MemberDao();
    	Member mem=dao.selectOne(id);
    	if(login.equals("admin")||pass.equals(mem.getPass())){
    		int result=dao.delete(id);
    		if(result>0){
    			if(login.equals("admin")){
    				msg=id+"»ç¿ëÀÚ¸¦ °­Á¦ Å»Åð ¼º°ø";
    				url="memberList.jsp";
    			}else{
    				msg=id+"´ÔÀÇ È¸¿øÅ»Åð ¿Ï·á";
    				url="loginForm.jsp";
    				session.invalidate();
    			}
    		}else{
    			msg=id+"´ÔÀÇ Å»Åð ¿À·ù ¹ß»ý.";
    			if(login.equals("admin")){
    				url="memberList.jsp";
    			}else{
    				url="main.jsp";
    			}
    		}
    	}else{
    		msg=id+"´ÔÀÇ ºñ¹Ð¹øÈ£°¡ Æ²¸³´Ï´Ù.";
    		url="deleteForm.jsp?id="+id;
    	}
    }
    %>
    <script type="text/javascript">
    alert("<%=msg%>");
    location.href="<%=url%>";
    </script>
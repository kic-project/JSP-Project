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
    	msg="�α����� �ʿ��մϴ�.";
    	url="loginForm.jsp";
    }else if(!login.equals(id)&&!login.equals("admin")){
    	msg="���θ� Ż�� �����մϴ�.";
    	url="main.jsp";
    }else if(id.equals("admin")){
    	msg="�����ڴ� Ż���� �� �����ϴ�.";
    	url="main.jsp";
    }else{
    	MemberDao dao=new MemberDao();
    	Member mem=dao.selectOne(id);
    	if(login.equals("admin")||pass.equals(mem.getPass())){
    		int result=dao.delete(id);
    		if(result>0){
    			if(login.equals("admin")){
    				msg=id+"����ڸ� ���� Ż�� ����";
    				url="memberList.jsp";
    			}else{
    				msg=id+"���� ȸ��Ż�� �Ϸ�";
    				url="loginForm.jsp";
    				session.invalidate();
    			}
    		}else{
    			msg=id+"���� Ż�� ���� �߻�.";
    			if(login.equals("admin")){
    				url="memberList.jsp";
    			}else{
    				url="main.jsp";
    			}
    		}
    	}else{
    		msg=id+"���� ��й�ȣ�� Ʋ���ϴ�.";
    		url="deleteForm.jsp?id="+id;
    	}
    }
    %>
    <script type="text/javascript">
    alert("<%=msg%>");
    location.href="<%=url%>";
    </script>
<%@page import="dao.MemberDao"%>
<%@page import="java.util.List"%>
<%@page import="Model.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String login=(String)session.getAttribute("login");
    if(login==null||login.trim().equals("")){  %>
    <script> 
    alert("�����ڷ� �α����ϼ���");
    location.href="loginForm.jsp";
    </script>
    <%} else if(!login.equals("admin")){ %>
    <script>
    alert("�����ڸ� ������ �ŷ��Դϴ�");
    location.href="main.jsp";
    </script>
    <% }else{ 
    List<Member> list=new MemberDao().list();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��� ����Ʈ</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
</head>
<script type="text/javascript">
function del(id){
	if(confirm(id+"���� Ż���Ͻðڽ��ϱ�?")){
		location.href="delete.jsp?id="+id;
	}}</script>
<body>
<table>
<caption>MODEL1 ȸ�� ���</caption>
<tr><th>����</th><th>���̵�</th><th>�̸�</th><th>����</th><th>��ȭ</th><th>�ּ�</th><th>����Ʈ</th><th>�������űݾ�</th><th>���</th><th>&nbsp;</th></tr>
<% for(Member m:list){ %>
<tr><td>
<img src="img/<%=m.getPicture() %>" width="30" height="32"></td>
<td><a href="memberInfo.jsp?id=<%=m.getId() %>"><%=m.getId() %></a></td><td><%=m.getName() %></td>
<td><%=m.getGender()==1?"����":"����" %></td><td><%=m.getTel() %></td><td><%=m.getAddress() %></td>
<td><%=m.getPoint() %></td><td><%=m.getTotalprice() %></td><td><%=m.getMemlevel() %></td>
<td><a href="updateForm.jsp?id=<%=m.getId() %>">[����]</a>
<% if(!m.getId().equals("admin")){ %>
<%--<a href="delete.jsp?id=<%=m.getId()%>">[����Ż��]</a> --%>
<a href="javascript:del('<%=m.getId() %>')">[����Ż��]</a>
<%} %>
</td></tr><% } %>
</table>
</body>
</html>
<%}%>
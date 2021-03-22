<%@page import="dao.MemberDao"%>
<%@page import="java.util.List"%>
<%@page import="Model.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String login=(String)session.getAttribute("login");
    if(login==null||login.trim().equals("")){  %>
    <script> 
    alert("관리자로 로그인하세요");
    location.href="loginForm.jsp";
    </script>
    <%} else if(!login.equals("admin")){ %>
    <script>
    alert("관리자만 가능한 거래입니다");
    location.href="main.jsp";
    </script>
    <% }else{ 
    List<Member> list=new MemberDao().list();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>멤버 리스트</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
</head>
<script type="text/javascript">
function del(id){
	if(confirm(id+"님을 탈퇴하시겠습니까?")){
		location.href="delete.jsp?id="+id;
	}}</script>
<body>
<table>
<caption>MODEL1 회원 목록</caption>
<tr><th>사진</th><th>아이디</th><th>이름</th><th>성별</th><th>전화</th><th>주소</th><th>포인트</th><th>누적구매금액</th><th>등급</th><th>&nbsp;</th></tr>
<% for(Member m:list){ %>
<tr><td>
<img src="img/<%=m.getPicture() %>" width="30" height="32"></td>
<td><a href="memberInfo.jsp?id=<%=m.getId() %>"><%=m.getId() %></a></td><td><%=m.getName() %></td>
<td><%=m.getGender()==1?"남자":"여자" %></td><td><%=m.getTel() %></td><td><%=m.getAddress() %></td>
<td><%=m.getPoint() %></td><td><%=m.getTotalprice() %></td><td><%=m.getMemlevel() %></td>
<td><a href="updateForm.jsp?id=<%=m.getId() %>">[수정]</a>
<% if(!m.getId().equals("admin")){ %>
<%--<a href="delete.jsp?id=<%=m.getId()%>">[강제탈퇴]</a> --%>
<a href="javascript:del('<%=m.getId() %>')">[강제탈퇴]</a>
<%} %>
</td></tr><% } %>
</table>
</body>
</html>
<%}%>
<%@page import="dao.MemberDao"%>
<%@page import="Model.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
String login = (String) session.getAttribute("login");
%>
<jsp:useBean id="mem" class="Model.Member" />
     <jsp:setProperty property="*" name="mem"/>
<%
String msg = null;
String url = null;
MemberDao dao = new MemberDao();
Member dbMem = dao.selectOne(mem.getId());
mem.setPoint(mem.getPoint()+mem.getTempPoint());
mem.setTotalprice(mem.getTotalprice()+mem.getTempTotalprice());
mem.setShoplist(mem.getShoplist()+mem.getTempShoplist());

if (dao.totalorder(mem) > 0) {
	msg = mem.getId() + "님의 주문이 완료되었습니다.";
	url = "main.jsp";
} else {
	msg = mem.getId() + "님의 주문 실패.";
	url = "CartView.jsp?id=" + mem.getId();
}
%>
<script>
     alert("<%=msg%>");
     location.href="<%=url%>";
</script>
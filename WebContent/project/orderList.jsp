<%@page import="dao.MemberDao"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="dao.CartDTO"%>
<%@page import="Model.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	String login=(String)session.getAttribute("login");
    String id=request.getParameter("id");
    if(login==null||login.trim().equals("")){
%>
<script type="text/javascript">
alert("�α����� �ʿ��մϴ�. �α����ϼ���.")
location.href="loginForm.jsp";
</script>
<%
	}else{
	Member mem=new MemberDao().selectOne(id);
%>
<%
	request.setCharacterEncoding("utf-8");
ArrayList<CartDTO> cart = null;
Object obj = session.getAttribute("cart");
if(obj == null) {	
	cart = new ArrayList<CartDTO>();	
} else {			
	cart = (ArrayList<CartDTO>) obj;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart View</title>
</head>
<body>
<div align="center">
	<h3>���� ���</h3>
	<table border="1">
		<tr>
			<th>����</th>
			<th>��ȣ</th>
			<th>��ǰ��</th>
			<th>�ܰ�</th>
			<th>�ֹ� ����</th>
			<th>����</th>
		</tr>
<%
	if(cart.size() == 0) {
	out.println("<tr align='center'>");
	out.println("<td colspan= '6'>");
	out.println("������ ��ǰ�� �����ϴ�.");
	out.println("<a href= 'ShopMallMain.jsp'>�ֹ��ϱ�</a>");
	out.println("</td>");
	out.println("</tr>");} 

else {
	int totalSum = 0, total = 0;
	DecimalFormat df = new DecimalFormat("��#,##0");
	for(int i = 0; i < cart.size(); i++) {
		CartDTO dto = cart.get(i);
		out.println("<tr align= 'center'>");
		out.println("<td>" + "��¥" + "</td>");
		out.println("<td>" + (i + 1) + "</td>");
		out.println("<td>" + dto.getName() + "</td>");
		out.println("<td>" + df.format(dto.getPrice()) + "</td>");
		out.println("<td>" + dto.getCnt() + "</td>");
		total = dto.getPrice() * dto.getCnt();
		out.println("<td>" + df.format(total) + "</td>");
		out.println("</tr>");
		totalSum += total;}
		out.println("<tr>");
		out.println("<td colspan= '5' align='center'> ���հ�");
		out.println("<td>" + df.format(totalSum) + "</td>");
		out.println("</td>");
		out.println("</tr>");
		mem.setTotalprice(totalSum);}
%>
	</table>
</div>
</body>
</html>
<%}%>
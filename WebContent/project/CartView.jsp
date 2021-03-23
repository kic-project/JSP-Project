<%@page import="java.text.DecimalFormat"%>
<%@page import="dao.CartDao"%>
<%@page import="dao.MemberDao"%>
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
ArrayList<CartDao> cart = null;
Object obj = session.getAttribute("cart");
if(obj == null) {	
	cart = new ArrayList<CartDao>();	
} else {			
	cart = (ArrayList<CartDao>) obj;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart View</title>
<script type="text/javascript">
function fnPay(){
	if(confirm("�����Ͻðڽ��ϱ�?")){
		
	}}

function fnClear(){
	if(confirm("��ٱ��ϸ� ���ðڽ��ϱ�?")) {
		location.href = "CartClear.jsp";}}

function fnGo(){
	location.href = "ShopMallMain.jsp";}
</script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/project/css/main.css">
</head>
<body>
<div align="center">
	<h3>��ٱ��� �׽�Ʈ</h3>
	<table border="1">
		<tr>
			<th>��ȣ</th>
			<th>��ǰ��</th>
			<th>�ܰ�</th>
			<th>�ֹ� ����</th>
			<th>����</th>
		</tr>
<%
	String list="";
if(cart.size() == 0) {
	out.println("<tr align='center'>");
	out.println("<td colspan= '5'>");
	out.println("��ٱ��Ͽ� ��� ��ǰ�� �����ϴ�.");
	out.println("<a href= 'ShopMallMain.jsp'>�ֹ��ϱ�</a>");
	out.println("</td>");
	out.println("</tr>");} 

else {
	int totalSum = 0, total = 0;
	DecimalFormat df = new DecimalFormat("��#,##0");
	for(int i = 0; i < cart.size(); i++) {
		CartDao dto = cart.get(i);
		out.println("<tr align= 'center'>");
		out.println("<td>" + (i + 1) + "</td>");
		out.println("<td>" + dto.getName() + "</td>");
		list = list +" "+ dto.getName();
		out.println("<td>" + df.format(dto.getPrice()) + "</td>");
		out.println("<td>" + dto.getCnt() + "</td>");
		total = dto.getPrice() * dto.getCnt();
		out.println("<td>" + df.format(total) + "</td>");
		out.println("</tr>");
		totalSum += total;}
		mem.setTempShoplist(list);
		mem.setTempPoint(totalSum/10);
		mem.setTempTotalprice(totalSum);
	
		out.println("<tr align = 'center'>");
		out.println("<td colspan= '4'>");
%>
		<form action="afterOrder.jsp" name="f" method="post">
		<input type="submit" value="�����ϱ�" <%session.removeAttribute("cart"); %>>
		<input type="button" value="��ٱ��� ����" onclick="fnClear()" >
		<input type="button" value="���� ����ϱ�" onclick="fnGo()" >
		
		<input type="hidden" name="tempTotalprice" value="<%=mem.getTempTotalprice() %>">
		<input type="hidden" name="tempPoint" value="<%=mem.getTempPoint()%>"> 
		<input type="hidden" name="tempShoplist" value="<%=mem.getTempShoplist()%>"> 
		<input type="hidden" name="totalprice" value="<%=mem.getTotalprice() %>">
		<input type="hidden" name="point" value="<%=mem.getPoint()%>"> 
		<input type="hidden" name="shoplist" value="<%=mem.getShoplist()%>"> 
		<input type="hidden" name="id" value="<%=mem.getId() %>">
		</form>
		<%
		out.println("</td>");
		out.println("<td>");
		out.println(df.format(totalSum));
		out.println("</td>");
		out.println("</tr>");}
		%>
	</table>
</div>
</body>
</html>
<%}%>
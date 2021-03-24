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
alert("로그인이 필요합니다. 로그인하세요.")
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
	<h3>구매 목록</h3>
	<table border="1">
		<tr>
			<th>일자</th>
			<th>번호</th>
			<th>상품명</th>
			<th>단가</th>
			<th>주문 수량</th>
			<th>가격</th>
		</tr>
<%
	if(cart.size() == 0) {
	out.println("<tr align='center'>");
	out.println("<td colspan= '6'>");
	out.println("구매한 상품이 없습니다.");
	out.println("<a href= 'ShopMallMain.jsp'>주문하기</a>");
	out.println("</td>");
	out.println("</tr>");} 

else {
	int totalSum = 0, total = 0;
	DecimalFormat df = new DecimalFormat("￦#,##0");
	for(int i = 0; i < cart.size(); i++) {
		CartDTO dto = cart.get(i);
		out.println("<tr align= 'center'>");
		out.println("<td>" + "날짜" + "</td>");
		out.println("<td>" + (i + 1) + "</td>");
		out.println("<td>" + dto.getName() + "</td>");
		out.println("<td>" + df.format(dto.getPrice()) + "</td>");
		out.println("<td>" + dto.getCnt() + "</td>");
		total = dto.getPrice() * dto.getCnt();
		out.println("<td>" + df.format(total) + "</td>");
		out.println("</tr>");
		totalSum += total;}
		out.println("<tr>");
		out.println("<td colspan= '5' align='center'> 총합계");
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
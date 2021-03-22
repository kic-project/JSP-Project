<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="dao.MemberDao"%>
<%@page import="Model.Member"%>
<%
    String login=(String)session.getAttribute("login");
    String id=request.getParameter("id");
    if(login==null||login.trim().equals("")){
%>
<script type="text/javascript">
alert("로그인이 필요합니다. 로그인하세요.")
location.href="loginForm.jsp";
</script>
<%}else{
	Member mem=new MemberDao().selectOne(id);
	%>
<%
String[] img ={"", "", "", "", "", "", "", "", ""}; //상품사진 넣을것 예상해서 만들어 섹션입니다.
String[] name = {"가", "나", "다", "라", "마", "바", "사", "아", "자"};
String[] price = {"500", "600", "2,700", "3,000", "500", "2,000", "1,000", "16,000", "70,000"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShopMallMain JSP</title>
<script type="text/javascript">
function fnCart(name, price) {
	if(confirm("장바구니에 담으시겠습니까?")) {
		location.href = "CartProcess.jsp?name=" + name + "&price=" + price; }}

function fnView() {
	if(confirm("장바구니를 보시겠습니까?")){
		location.href = "CartView.jsp?id=<%=login %>";	}}
</script>
</head>
<body>
<div align="center">
	<h3>장바구니 테스트 메인페이지</h3>
	<table border="1">
		<tr align="right">
				</tr>
<%
for(int i = 0; i < img.length; i++) { //임의로 만든 위 상품 테이블 입니다 (중요하지 않음)
	if(i % 3 == 0) { 
		out.println("<tr align='center'>");}
		out.println("<td>");
		
		out.println("<table>");
		out.println("<tr align='center'>");
		out.println("<td>");
		out.println("<img src = 'images/" + img[i] + "' width='0' height='0' />");
		out.println("</td>");
		out.println("</tr>");
					
		out.println("<tr align='center'>");
		out.println("<td>");
		out.println("<b>" + name[i] + "</b>");
		out.println("</td>");
		out.println("</tr>");
					
		out.println("<tr align='center'>");
		out.println("<td>");
		out.println("<b>" + price[i] + "원</b>");
		out.println("</td>");
		out.println("</tr>");
					
		out.println("<tr align='center'>"); // 장바구니 담기 버튼 구현
		out.println("<td>");
		out.println("<input type='button' value='담기' ");
		out.println("onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</td>");
		if(i % 3 == 2) {
		out.println("</tr>");}}
%>	
<table>
	<td colspan="3">
	<input type="button" value="장바구니로" onclick="fnView()" />
	</td> </table>
	</table>
</div>
</body>
</html>
<%}%>
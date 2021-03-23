<%@page import="dao.CartDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String price = request.getParameter("price");

ArrayList<CartDao> cart = null;

Object obj = session.getAttribute("cart");	

if(obj == null) {	
	cart = new ArrayList<CartDao>();	
} else {		
	cart = (ArrayList<CartDao>) obj;
}

int pos = -1;	
for(int i = 0; i < cart.size(); i++) {
	CartDao dto = cart.get(i);
	if(dto.getName().equals(name)) {
		pos = 1;
		dto.setCnt(dto.getCnt() + 1);
		break;
	}
}


if(pos == -1) {
	CartDao dto = new CartDao();
	dto.setName(name);
	dto.setPrice(Integer.parseInt(price.replace(",", "")));
	dto.setCnt(1);
	cart.add(dto);
}


session.setAttribute("cart", cart);
%>

<script>alert("장바구니에 담았습니다."); 
location.href ="<%=request.getContextPath()%>/project/ShopMallMain.jsp"</script>
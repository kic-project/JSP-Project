<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="header.jsp" %>  
<%@ include file="ordercss.jsp" %> 



<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
function fncart(){
	alert("장바구니에 담았습니다.");}	
function fnpay(){
	alert("결제창으로 이동합니다.");}		
function go_cart() {
	  if (document.formm.quantity.value == "") {
	    alert("수량을 입력하여 주세요.");
	    document.formm.quantity.focus();
	  } else {
	    document.formm.action = "projectServlet?command=cart_insert";
	    document.formm.submit();
	  }
	}
</script> 
</head>


<body onload="init();">


<div id="container1">
<form  method="post" name="formm">
<div id="content">
					<div class="u_breadcrumbs_wrap"></div>
					<div class="prd_wrap"></div>
						<div class="prd_detail_cont">
<!-- 이미지 -->
<div class="prd_img_wrap">
<div class="prd_detail">
<div class="prd_img"><img  src="product_images/${product.image}"/></div>
<input type="hidden" name="picture" value="${product.image}"></div>
							</div>
<!-- 글설명 -->
<div class="prd_info_wrap">

<!-- 제품정보/가격 warp -->
	<div class="prd_content_wrap">						
    <div class="prd_info">
    <h3 class="prd_tit">${product.kind}</h3>
    <input type="hidden" name="productName"
value="${product.kind}"> 
<input type="hidden" name="productId" value="${product.kind}">
   
<div class="price_area">
<span class="price_txt"> 
<strong class="ff_price">${product.name}</strong>
<!-- 물품 가격 -->
</span> <input type="hidden" name="price2"
value="${product.price2}">
<div class="InStock">
<p class="InStock_text">In Stock</p>
</div></div>

<div class="card_discount_wrap">
<div class="discount_sum">

<ul class="ul_mapa">
<li>Content : <strong class="card_ftst">${product.content}</strong>
</li></ul>   

<ul class="ul_mapa">
<li>
<p class="card_ft">Free Shipping</p>
</li></ul>
</div></div></div>
									
<div class="form_div">
<!-- <form name="form" method="get"> -->
<div class="button_block">
<p class="button_P">Quantity:</p>
<!-- 수량 -->
<input  type="number"    class="text_input" name="quantity"  size="3"      value="1" onchange="change();">
<input  type="hidden"    name="pseq"       value="${product.pseq}">
<input  type="hidden"    name="id"       value="${login}">

<div class="form_button">
<div class="form_button_area">
<input class="text_pbutton" type="button" value=" ＋ " onclick="add();"> 
<input class="text_mbutton"	type="button" value=" － " onclick="del();">
</div></div></div>

<div class="money_block">
<p class="button_P" >Price:</p>
<input  type="hidden"  name="sell_price" value="${product.price2}">
<input type="text" class="text_input" name="sum"  size="14" readonly> <span> 원</span>
</div>

<script language="JavaScript">
var sell_price;
var quantity;
var change;
var a;

function init() {
sell_price = document.formm.sell_price.value;
quantity = document.formm.quantity.value;
document.formm.sum.value = sell_price;
change();
}

function add() {
hm = document.formm.quantity;
sum = document.formm.sum;
hm.value++;

/* sum.value = parseInt(hm.value) * sell_price; */
var i = parseFloat(
parseInt(hm.value)
* sell_price)
.toFixed(2).replace(
/\.0+$/, '');
sum.value = i;
}

function del() {
hm = document.formm.quantity;
sum = document.formm.sum;
if (hm.value > 1) {
hm.value--;
/* sum.value = parseInt(hm.value) * sell_price; */
var i = parseFloat(
parseInt(hm.value)
* sell_price)
.toFixed(2)
.replace(/\.0+$/,
'');
sum.value = i;
}
}

function change() {
hm = document.formm.quantity;
sum = document.formm.sum;

if (hm.value < 0) {
hm.value = 0;
}
/* sum.value = parseInt(hm.value) * sell_price; */
var i = parseFloat(
parseInt(hm.value)
* sell_price)
.toFixed(2).replace(
/\.0+$/, '');
sum.value = i;
}
</script>
</div>
</div>  
     
<div class="buy_wrap gift_case">
<div class="btn_cover">
<input type="submit" class="u_btn btn_cart_go _cart"
value="Add to cart" onclick="fncart(); go_cart()">

<input type="button" id="buynowbtn" class="u_btn btn_buy_now _buy" 
value="Back to Main" onclick="location.href='main.jsp'"/>
</div></div></div></div>	
</form>
	

<%@ include file="footer.jsp" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<meta charset="UTF-8">
<script type="text/javascript">
function fncart(){
	alert("장바구니에 담았습니다.");}	
function fnpay(){
	alert("결제창으로 이동합니다.");}		
</script> 
 <h1> Item </h1>
<form  method="post" name="formm">
<table class="calculation1"> 
<tr>
    <th><div><img  src="product_images/${product.image}"  /></div></th>
    <th>${product.name}<br/>
    ${product.content}<br/>
    <label> 가 격 : ${product.price2} 원 </label><br/>  
          <label> 수 량 : </label>
          <input  type="number"      name="quantity"  size="2"      value="1"><br>
          <input  type="hidden"    name="pseq"       value="${product.pseq}"><br>
          </th>
    </tr>
</table>
<br/>
        <div align="center">
		<button class="btn default" id="allProduct" onclick="fncart(); go_cart()">장바구니</button>
		<button class="btn default backBtn" id="productClear" onclick="fnpay(); go_order()">즉시구매</button>
		<button class="btn default footerbtn" id="footerbtn" onclick="cancel">취소</button> </div>
      </form>  

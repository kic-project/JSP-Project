<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%> 
<%@ include file="header.jsp" %>  
<%@ include file="ordercss.jsp" %> 


<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
function fnpay(){
	alert("결제창으로 이동합니다.");}	
function go_order_insert() {
	  document.formm.action = "projectServlet?command=order_insert";
	  document.formm.submit();
	}
</script>


	<!-- Cart Content -->
	<div class="container-md p-3 col-8 mb-5 mx-auto text-center">
	    <form name="formm" method="post">
    <c:choose>
    <c:when test= "${cartList.size() == 0}">
		<table class="table table-bordered">
			
      <h2 colspan="3">장바구니가 비었습니다</h2>
      
      </table>
      <br/><br/>
      	<div align="center">
	<button class="btn default" id="allProduct" onclick="location.href='projectServlet?command=main'">메인페이지</button>
	<input type="button" value="쇼핑 계속하기" class="cancle" onclick="location.href='projectServlet?command=main'">
	</div>
	<br/><br/>   
   
    </c:when>
    <c:otherwise>

      <table class="table table-bordered">
		<tr>
			
			<th scope="col">상품명</th>
			<th scope="col">수 량</th>
			<th scope="col">판매가</th>
			<th scope="col">적립금</th>
			<th scope="col">주문일</th>
		</tr>
	<c:forEach items="${cartList}"  var="cart">	
		<tr>
		  <td> ${cart.pname}</td>
          <td> ${cart.quantity} </td>
          <td> 
            <fmt:formatNumber value="${cart.price2}"
                              type="currency"/> 
          </td>
          <td><fmt:formatNumber value="${cart.price2*cart.quantity*0.1}" 
                              type="currency"/></td>      
          
          <td> <fmt:formatDate value="${cart.indate}" type="date"/></td>      
          </tr></c:forEach>
          </table>
          
                  
        
        <br/>
        <table class="table table-bordered">
        <tr>
          <th colspan="1"> 총 상품금액 </th>
         <th colspan="1"> 적립예정금액 </th>
         <th colspan="1"> 등급할인액 </th>
         <th colspan="1"> 결제예정금액</th>
                    </tr> 
           <tr  class="price" style='background-color: #fff'>
           <td  colspan="1">
            <fmt:formatNumber  value="${totalPrice}" type="currency"/>
          </td>
           <td colspan="1">
            <fmt:formatNumber value="${totalPrice*0.1}" type="currency"/>
          </td>
          <td> </td> <%-- 등급할인예정금액 --%>
          <td colspan="1">
            <fmt:formatNumber value="${totalPrice}" type="currency"/> </td>
          </tr>                       
         </table>
         <br/>
       	<form>
            <div align="center">
		<input type="button" value="주문하기"  class="submit" onclick="fnpay(); go_order_insert()">
		
		<input type="button"    value="쇼핑 계속하기"  class="cancel"  onclick="location.href='main.jsp'">
     <br/>
    <br/>
    </c:otherwise>  
    </c:choose>  
     </div>
    </form>
    <div class="cmt_guide">
						<ul>
							<li>장바구니에 담은 상품은 30일 후 삭제됩니다.</li>
							<li>장바구니에는 최대 50개의 상품을 담으실 수 있습니다.</li>
							<li>무이자 할부 개월수가 서로 다른 상품을 동시 주문 시, 가장 짧은 기간 기준으로 무이자 할부가
								가능합니다.</li>
							<li>일부 상품에 대해 결제수단이 제한될 수 있습니다.</li>
						</ul>
					</div>
					<br/>




<%@ include file="footer.jsp" %> 




</body>
</html>

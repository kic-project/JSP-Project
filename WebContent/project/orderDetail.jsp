<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="header.jsp" %>  
<%@ include file="ordercss.jsp" %> 

<!DOCTYPE html>
<html>

<head>


  
  <article>
    <h2> 주문 상세 정보 </h2>
    <form name="formm" method="post">
      <h3> 주문자 정보 </h3>     
	<div class="container-md p-3 col-8 mb-5 mx-auto text-center">
	    <form name="formm" method="post">
      <table class="table table-bordered">  
      <tr>
        <th>주문일자</th> <th>주문번호</th> <th>주문자</th> <th> 주문 총액</th>     
     </tr>     
     <tr>  
       <td> <fmt:formatDate value="${orderDetail.indate}" type="date"/></td>
       <td> ${orderDetail.oseq} </td>    
       <td> ${orderDetail.mname} </td>
       <td> <fmt:formatNumber type="currency" value="${totalPrice}" /> </td>
     </tr> </div>   
     </table>         
     <h3> 주문 상품 정보 </h3> 
     	<div class="container-md p-3 col-8 mb-5 mx-auto text-center">
	    <form name="formm" method="post">
      <table class="table table-bordered">
     <tr>
       <th>상품명</th> <th>상품별주문번호</th> <th>수량</th><th>가격</th> <th>처리 상태</th>    
     </tr>
     <c:forEach items="${orderList}"  var="order">
     <tr>
       <td> ${order.pname} </td>
       <td> ${order.odseq} </td>          
       <td> ${order.quantity} </td>
       <td> <fmt:formatNumber type="currency" value="${order.price2*order.quantity}" /> </td>
       <td>
         <c:choose>
         <c:when test='${order.result=="1"}'> 진행중 </c:when>
         <c:otherwise> <span style="color:red"> 처리완료 </span></c:otherwise>
         </c:choose>
       </td>
     </tr></div>
     </c:forEach>    
     </table>   
     <table>   
     <tr id="buttons" style="float: right">
       <input type="button"    value="메인화면으로"  class="cancel"  
onclick="location.href='main.jsp'">
       <input type="button"    value="과거주문정보"  class="cancel"  
onclick="location.href='projectServlet?command=order_all'"></tr>
 </table>
    </form>  
  </article>
  
<%@ include file="footer.jsp" %> 

<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%> 
<%@ include file="header.jsp" %>  
<%@ include file="ordercss.jsp" %> 

<!DOCTYPE html>
<html>

<head>


  
  <article>
    <h2> My Page(주문 상세 정보) </h2>

   

      
 	<div class="container-md p-3 col-8 mb-5 mx-auto text-center">
	    <form name="formm" method="post">
     <table class="table table-bordered"> 
<h2> 최근 주문 이력
        <th>주문일자</th> <th>주문번호</th> <th>상품명</th> <th>결제 금액</th> <th>진행 상태</th> <th>주문 상세</th> </th>    
      </h2>
     <c:forEach items="${orderList}"  var="order" end="0">
      <tr>  
        <td> <fmt:formatDate value="${order.indate}" type="date"/></td>
        <td> ${order.oseq} </td>    
        <td> ${order.pname} </td>
        <td> <fmt:formatNumber value="${order.price2}" type="currency"/> </td>
       
       <td>
         <c:choose>
         <c:when test='${order.result=="1"}'> 진행중 </c:when>
         <c:otherwise> <span style="color:red"> 처리완료 </span></c:otherwise>
         </c:choose>
       </td>
         <td> <a href="jspshopServlet?command=order_detail&oseq=${order.oseq}"> 조회 </a></td>
     </tr>
     </c:forEach> 
     
      <table class="table table-bordered"> 
<h2> 모든 주문 이력 
        <th>주문일자</th> <th>주문번호</th> <th>상품명</th> <th>결제 금액</th> <th>진행 상태</th> <th>주문 상세</th> </th>    
      </h2>
      <c:forEach items="${orderList}"  var="order">
      <tr>  
        <td> <fmt:formatDate value="${order.indate}" type="date"/></td>
        <td> ${order.oseq} </td>    
        <td> ${order.pname} </td>
        <td> <fmt:formatNumber value="${order.price2}" type="currency"/> </td>
       
       <td>
         <c:choose>
         <c:when test='${order.result=="1"}'> 진행중 </c:when>
         <c:otherwise> <span style="color:red"> 처리완료 </span></c:otherwise>
         </c:choose>
       </td>
       <td> <a href="projectServlet?command=order_detail&oseq=${order.oseq}"> 조회 </a></td>
     </tr>
     </c:forEach>    
     </table>   
          
     <div class="clear"></div>
     <div id="buttons" style="float: right">
       <input type="button"    value="쇼핑 계속하기"  class="cancel"  
onclick="location.href='main.jsp'">
     </div>
    </form>  
  </article>
  
<%@ include file="footer.jsp" %> 
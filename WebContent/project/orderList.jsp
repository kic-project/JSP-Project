<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%> 
<%@ include file="header.jsp" %>  
<%@ include file="ordercss.jsp" %> 
<!DOCTYPE html>
<html>

<head>

	
 <h3 class="mt-3 mb-3 text-center">결제내역</h3>
	
	<div class="container-md p-3 col-8 mb-5 mx-auto text-center">
	    <form name="formm" method="post">
      <table class="table table-bordered">
      <tr>
        <th>주문일자</th> <th>주문번호</th> <th>상품명</th> <th>결제 금액</th> <th>주문 상세</th> </th>    
      </tr>
      <c:forEach items="${orderList}"  var="order">
      <tr>  
        <td> <fmt:formatDate value="${order.indate}" type="date"/></td>
        <td> ${order.oseq} </td>    
        <td> ${order.pname} </td>
        <td> <fmt:formatNumber value="${order.price2}" type="currency"/> </td>
        <td> <a href="projectServlet?command=order_detail&oseq=${order.oseq}"> 조회 </a></td>
      </tr>
      </c:forEach>    
      </table>   
         <br/>  
     <table>   
     <tr id="buttons" style="float: right">
       <input type="button"    value="메인화면으로"  class="cancel"  
onclick="location.href='projectServlet?command=main'">
 </table>
 <br/> 
    </form>  
  </article>
  
  
<%@ include file="footer.jsp" %> 
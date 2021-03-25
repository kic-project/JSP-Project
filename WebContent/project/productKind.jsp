<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

     
  <article>
    <h3 align="center" > 카테고리 </h3>     
    <c:forEach items="${productKindList}"  var="product">
         <div class="container">
    		<div class="row">
			<div class="col-lg-4 col-md-6 mb-4">
			<div class="card h-100">
			<a href="projectServlet?command=product_detail&pseq=${product.pseq}">
			<img class="card-img-top" src="product_images/${product.image}" alt=""></a>
			<div class="card-body">
			<h4 class="card-title">
			<a href="projectServlet?command=product_detail&pseq=${product.pseq}">
			${product.name}</a></h4>
			<h5>${product.price2}</h5>
      </div></div></div></div></div>
      
    </c:forEach>    
    <div class="clear"></div>
  </article>
   
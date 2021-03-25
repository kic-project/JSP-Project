<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dao.BoardDao"%>
<%@page import="Model.Board"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="board"  class="Model.Board" />
    <jsp:setProperty name="board"  property="*" />
    
     <script>
    alert("${msg}");
    location.href="${url}";
    </script>
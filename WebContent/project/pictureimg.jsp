<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String path=application.getRealPath("/")+"project/img/";
    String filename=null;
    try{
    	MultipartRequest multi=new MultipartRequest(request,path,10*1024*1024,"euc-kr");
    	filename=multi.getFilesystemName("picture");
    }catch(IOException e){
    	e.printStackTrace();
    }
   %>
   <script>
   img=opener.document.getElementById("pic");
   img.src="img/<%=filename%>";
   opener.document.f.picture.value="<%=filename%>";
   self.close();
   </script>
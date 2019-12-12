<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<b> from B.jsp</b> <br>
<%=new java.util.Date() %> <bR>
<%
   for(int i=1;i<=1000000;++i){
      out.println("<br>hello"+i);
   }
 %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
      //read form data
      String ss=request.getParameter("ss");
      //perform sendRedirection
      response.sendRedirect("https://www.google.com/search?q="+ss);
     %>
    
   
    
    
    
    

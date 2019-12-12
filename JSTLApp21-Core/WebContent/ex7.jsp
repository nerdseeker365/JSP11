<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
 <c:url  value="http://localhost:2525/JSTLApp21-Core/ex6.jsp" var="ex6url"/>
 <c:url  value="https://google.co.in/search" var="googleurl"/>
 <a href="${googleurl}"> go to Google</a>  <br>
 <hr>
   <c:import var="abc"  url="${ex6url}"/>
    ${abc }
 
 
 
 
    
    
    

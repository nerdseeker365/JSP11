<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
 
 <c:set  var="message"  value="hello,  how are u ? Mr. Waste fellow" scope="request"/>
 
 <c:forTokens var="word" items="${message}" delims=",">
         ${word} <br>
 </c:forTokens>
 
 
 
    

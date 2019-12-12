<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!-- Declare a vairable -->
  <c:set   var="msg" value="Good Morning "  scope="session"/>
<!-- Display variable -->
       value :::  <c:out value="${msg}"  />   <br>
<!-- Remove variable -->
     <c:remove var="msg" scope="session"/>
     <!-- Display variable -->
     <br>  value :::  <c:out  value="${msg}"  />   <br>
     
     
     
     
       

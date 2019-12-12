<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
    
 <b> All request header names and values</b>    
 <br>
  <c:forEach  var="h"  items="${headerValues }">
      req header name ::  ${h.key}  <br>
      req header values ::
         <c:forEach var="hv"  items="${h.value}">
                 ${hv}
         </c:forEach>
         <br>
  </c:forEach>

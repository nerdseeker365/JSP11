<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
    
 <b> All request param names and values</b>    
 <br>
  <c:forEach  var="p"  items="${paramValues }">
      req param name ::  ${p.key}  <br>
      req param values ::
         <c:forEach var="pv"  items="${p.value}">
                 ${pv}
         </c:forEach>
         <br>
  </c:forEach>

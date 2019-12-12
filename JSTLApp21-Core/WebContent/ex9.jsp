<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
 
 <c:catch  var="e">
      <jsp:scriptlet>
          int x=Integer.parseInt("a10");
          out.print("value::"+x);
      </jsp:scriptlet>
 </c:catch>
 
   <c:choose>
     <c:when test="${!empty e }">
            Exception is :: ${e} 
     </c:when>
   </c:choose>
    
 
     
 
 
 
 
    
    
    

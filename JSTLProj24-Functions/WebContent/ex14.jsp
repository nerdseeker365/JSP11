<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

  <c:set var="msg"  value="hello , how are u?"/>    
   length ::  ${fn:length(msg) } <br>
   UpperCase:: ${fn:toUpperCase(msg) } <br>
   LowerCase:: ${fn:toLowerCase(msg) } <br>
   substring:: ${fn:substring(msg,0,5) } <br>
   
   
   
  
  

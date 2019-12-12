<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
    
    <fmt:setLocale value="fr_FR"/>
    <!-- format the number -->
    <fmt:formatNumber var="fnumber"  type="currency" value="987766677"   />
     formatted number::  ${fnumber }
     
     <!-- format the date -->
     <jsp:useBean id="dt"  class="java.util.Date"/>
     <fmt:formatDate var="fdt"   value="${dt}"   />
     <br>
     formatted date::  ${fdt}
     
    <!-- format messages -->
    <fmt:setBundle  basename="com/nt/commons/App" var="b1"/>
    <fmt:message var="fmsg" key="wishMsg"  bundle="${b1}"/>
    <br>
     Formatted message :: ${fmsg }
     
    
     
     
    
    
    
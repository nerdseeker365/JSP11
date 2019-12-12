<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/xml"  prefix="x" %>
    
    <c:import url="orders.xml" var="xmlfile"/>
    
    <x:parse xml="${xmlfile}" var="doc"/>
    
    All itmes are<br> 
    <x:forEach var="ord" select="$doc/orders/order">
        name::<x:out select="$ord/item"/>
        price::<x:out select="$ord/price"/>
        <br>
    </x:forEach>
    
     All itmes are whose price >500<br> 
    <x:forEach var="ord" select="$doc/orders/order">
        <x:if select="$ord/price >=50">
          name::<x:out select="$ord/item"/>
           price::<x:out select="$ord/price"/>
        </x:if>
        <br>
    </x:forEach>
    
    


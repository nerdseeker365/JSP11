<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!-- Create or Locate DTO class obj -->
 <jsp:useBean id="dto" class="com.nt.dto.CustomerDTO" scope="request"/>
 <!-- Create Service class obj -->
 <jsp:useBean id="service"  class="com.nt.service.BankServiceImpl" scope="application"/>
 <!-- Write form data to DTO class obj -->
 <jsp:setProperty property="*" name="dto"/>
 <!-- Invoke service class method -->
 <%
         service.getFinalStatement(dto);
  %>
  
  <!-- Display results -->
    <h1 style='color:red;text-align:center'> Final STatement Details </h1>
  name ::  <jsp:getProperty name="dto" property="name"/><br>
  address ::  <jsp:getProperty name="dto" property="addrs"/><br>
  priciple amount ::  <jsp:getProperty name="dto" property="pAmt"/><br>
  rate ::  <jsp:getProperty name="dto" property="rate"/><br>
  time ::<jsp:getProperty name="dto" property="time"/><br>
  Intrest Amount ::<jsp:getProperty name="dto" property="intrAmt"/><br>
  Final Amount ::<jsp:getProperty name="dto" property="finalAmt"/><br>
  <br><br>
   <a href="form.html">home</a>
 
     

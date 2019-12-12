<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% //read bill Amount as additional req param values
      float billAmt=Float.parseFloat(request.getParameter("bill"));
      //calculate Bill Amount
      float discount=billAmt*0.3f;
      float finalAmount=billAmt-discount;
 %>
   <!-- Display Details -->
   <b>
     <h1 >The Bill details are </h1>
     Item name:: <%=request.getParameter("iname") %> <br>
     Item Price :: <%=request.getParameter("iprice") %> <br>
     Quantity ::  <%=request.getParameter("iqty") %> <br>
     Bill Amount ::  <%=billAmt %> <br>
     Discount :: <%=discount %>  <br>
     Final Bill Amount :: <%=finalAmount %>
     </b>
     <br>
       <a   href="form.html">home</a>  
     
     
      
    
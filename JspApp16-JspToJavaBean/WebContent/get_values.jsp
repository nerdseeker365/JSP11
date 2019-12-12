<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <!-- create or Locate Java bean calss obj -->
  <jsp:useBean id="st"  class="com.nt.beans.StudentBean" scope="session"/>
  
  <!-- Read and display Bean property values -->
  sno===  <jsp:getProperty name="st"  property="sno"/> <br>
  sname===  <jsp:getProperty name="st"  property="sname"/> <br>
  avg ===  <jsp:getProperty name="st"  property="avg"/><br>
  
  
  
  
    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <!-- Create or Locate Java Bean class obj -->
 <jsp:useBean id="st" class="com.nt.beans.StudentBean"  scope="session"/>
 
 <!-- set vlaues to bean properties -->
 <%-- <jsp:setProperty name="st"  property="sno"  value="101"/>    
 <jsp:setProperty name="st"  property="sname"  value="raja"/>
 <jsp:setProperty name="st"  property="avg"  value="90.44f"/>
  --%>
   <!-- setting formdata as Bean property values -->
  <%--  <jsp:setProperty name="st" property="sno" param="stno"/>
   <jsp:setProperty name="st" property="sname" param="stname"/>
   <jsp:setProperty name="st" property="avg" param="stavg"/> --%>
   
    <jsp:setProperty name="st"  property="*"/>
    
 <b> Values are set to bean properties.....</b>
 

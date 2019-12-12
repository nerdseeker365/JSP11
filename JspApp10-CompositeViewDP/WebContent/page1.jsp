<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<table border="0" rows="3" cols=3>
   <tr height="20%">
     <td colspan="3"> <jsp:include page="/headerurl"/> </td>
   </tr>
   <tr height="70%">
       <td width="20%"> <%@include file="left_content.html" %> </td>
       <td width="60%"> <jsp:include page="home.html"/> </td>
       <td width="20%"> <jsp:include page="horoscope.jsp"/> </td>
   </tr>
   <tr>
     <td colspan="3"> <%@include file="footer.html" %> </td>
   </tr>

</table>
    
<jsp:useBean id="service" class="com.nt.service.AddRotatorService" scope="application"/>
   <%
           response.setHeader("refresh","2");
           service.nextAddNumber();
   %>

   <a href="<jsp:getProperty name="service" property="link"/>">
         <img src="<jsp:getProperty name="service" property="image"/>"  width="60%"  height="70%" border="1"/>
   </a>
<hr>
   <b><i> Rest of the page......</i></b>

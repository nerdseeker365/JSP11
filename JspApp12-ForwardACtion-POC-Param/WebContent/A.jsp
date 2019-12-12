
<b><i>Start of A.jsp</i></b> <br>
  <%
    int p=100*10;
   %>
     <jsp:forward page="B.jsp">
        <jsp:param name="bkName"  value="CRJ"/>
        <jsp:param name="price" value="<%=p%>"/>
     </jsp:forward>
      <br>
<b><i> End of A.jsp</i></b>
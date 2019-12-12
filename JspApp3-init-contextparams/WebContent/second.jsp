
dbuser init param value :: <%=config.getInitParameter("dbuser") %><br>
email Id context param value :: <%=application.getInitParameter("emailId") %><br>



<%!
  public void jspInit(){
   ServletConfig cg=getServletConfig();
   ServletContext sc=getServletContext();
    System.out.println("db user init param value::"+cg.getInitParameter("dbuser"));
    System.out.println("emailId Context param value::"+sc.getInitParameter("emailId"));
  }

 %>
    hello

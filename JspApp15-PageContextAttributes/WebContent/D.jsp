<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <b> from D.jsp</b> <br>
    <!-- Read and display various scopes of attributes -->
    attr1(page) value :: <%=pageContext.findAttribute("attr1") %> <br>
    attr2(req) value :: <%=pageContext.findAttribute("attr2") %> <br>
    attr3(ses) value :: <%=pageContext.findAttribute("attr3")%> <br>
    attr4(app) value :: <%=pageContext.findAttribute("attr4")%> <br>
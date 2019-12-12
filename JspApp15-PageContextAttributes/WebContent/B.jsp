<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <b> from B.jsp</b> <br>
    <!-- Read and display various scopes of attributes -->
    attr1(page) value :: <%=pageContext.getAttribute("attr1") %> <br>
    attr2(req) value :: <%=pageContext.getAttribute("attr2",pageContext.REQUEST_SCOPE) %> <br>
    attr3(ses) value :: <%=session.getAttribute("attr3") %> <br>
    attr4(app) value :: <%=pageContext.getAttribute("attr4",pageContext.APPLICATION_SCOPE) %> <br>
    
    <!-- Forward to C.jsp -->
    <jsp:forward page="C.jsp"/>
    
    
    
    
    

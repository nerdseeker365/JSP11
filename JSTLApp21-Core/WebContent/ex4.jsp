<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:forEach  var="i"  begin="1" end="10" step="1">
     2 * ${i } = ${2*i} <br>
</c:forEach>

<jsp:scriptlet>
      String myNames[]=new String[]{"raja","rani","jani","dhoni"};
      request.setAttribute("names",myNames);
</jsp:scriptlet>
<hr>
<c:forEach  var="nam" items="${names}" >
         ${nam} <br>
</c:forEach>

<hr>

<jsp:scriptlet>
   <![CDATA[
      List<String> listNames=new ArrayList();
      listNames.add("c"); listNames.add("java"); listNames.add("oracle");
      request.setAttribute("names1",listNames);
      ]]>
</jsp:scriptlet>
<hr>
<c:forEach  var="lang" items="${names1}" >
         ${lang} <br>
</c:forEach>




    

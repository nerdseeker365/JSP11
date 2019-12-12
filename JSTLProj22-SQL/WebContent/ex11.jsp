<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
    
    <!-- establis the connection -->
    <sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver"
                                       url="jdbc:oracle:thin:@localhost:1521:xe"
                                       user="system"
                                       password="manager"/>
   <!-- Execute the SQL select Query -->
   <sql:query   dataSource="${ds}"  sql="SELECT * FROM STUDENT"  var="rs"/>
   
   <!-- Process the ResultSet obj -->
   <c:forEach  var="row" items="${rs.rows}">
       ${row.sno} &nbsp; &nbsp;  ${row.sname} &nbsp; &nbsp; ${row.sadd} <br>
   </c:forEach>
                                        
   
    

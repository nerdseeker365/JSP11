<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
    
    <!-- establis the connection -->
    <sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver"
                                       url="jdbc:oracle:thin:@localhost:1521:xe"
                                       user="system"
                                       password="manager"/>
                                       
   <!-- Execute the Non-SQL select Query -->
   <sql:update   dataSource="${ds}"  sql="DELETE FROM STUDENT WHERE sno>=?" var="cnt">
     <%-- <sql:param>100</sql:param> --%>
     <sql:param value="10"/> 
   </sql:update> <br>
    No.of records deleted :: ${cnt }   
   
                                        
   
    

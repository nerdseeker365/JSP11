<%@ page  import="java.sql.*" %>
<%!
    Connection con;
    PreparedStatement ps1,ps2; 
   public void jspInit(){
    ServletConfig cg=null;
    String driver=null,url=null,user=null,pwd=null;
   // get Access to ServletConfig obj
    cg=getServletConfig();
    //read init param values (jdbc properties)
     driver=cg.getInitParameter("driver");
     url=cg.getInitParameter("url");
     user=cg.getInitParameter("dbuser");
     pwd=cg.getInitParameter("dbpwd");
       try{
       //register jdbc driver
           Class.forName(driver);
          //establish the connection
          con=DriverManager.getConnection(url,user,pwd);
          //create PreparedStatement objects
          ps1=con.prepareStatement("SELECT SNO,SNAME,SADD,COURSE FROM STUDENT");
          ps2=con.prepareStatement("INSERT INTO STUDENT VALUES(st_sno.nextVal,?,?,?)");
      }//try
      catch(SQLException se){
         se.printStackTrace();
      }
      catch(ClassNotFoundException cnf){
        cnf.printStackTrace();
         }
        catch(Exception e){
           e.printStackTrace();
           }
    } %>
    <%
         //read s1 req param value
         String param=request.getParameter("s1");
         if(param.equalsIgnoreCase("register")){  //for submit button
           //read form data
           String name=request.getParameter("sname");
           String addrs=request.getParameter("sadd");
           String course=request.getParameter("course");
           //set values to query param values
           ps2.setString(1,name);
           ps2.setString(2,addrs);
           ps2.setString(3,course);
           //execute the Query
           int result=ps2.executeUpdate();  
           if(result==0){ %>
               <h1 style="color:red;text-align:center">Registration failed </h1>
          <%   }//if
            else{  %>
            <h1 style="color:red;text-align:center">Registration succeded </h1>
           <% }//else %>
              <a href="dburl?s1=link1">get AllStudents</a> <br>
            <%}//if
            else{  //for hyperlink
                  //execute select Query
                  ResultSet rs=ps1.executeQuery();
                  ResultSetMetaData rsmd=rs.getMetaData();
                  //print col names
                  int colCount=rsmd.getColumnCount(); %>
                   <table border="1"  bgcolor="cyan">
                   <tr>
                   <%
                       for(int i=1;i<=colCount;++i){  %>
                          <th><%=rsmd.getColumnLabel(i) %>  </th>
                     <% 
                      }//for
                    %>
                     </tr>
                     <%
                        while(rs.next()){  %>
                           <tr>
                            <%
                              for(int i=1;i<=colCount;++i){ %>
                                  <td><%=rs.getString(i) %>  </td>
                            <%  }//for
                             %>
                             </tr>
                             <%}//while %>
                             </table>
                             
                    <% 
                    //close ResultSet obj
                    rs.close();
                    }//else
                      %>
                      <br>
               <a href="register.html">home</a>       
    
    <%!  public void jspDestroy(){
                //close jdbc objs
               try{
                 if(ps1!=null)
                    ps1.close();
               }
               catch(SQLException se){
               se.printStackTrace();
               }
               try{
                 if(ps2!=null)
                    ps2.close();
               }
               catch(SQLException se){
               se.printStackTrace();
               }
               try{
                 if(con!=null)
                    con.close();
               }
               catch(SQLException se){
               se.printStackTrace();
               }
       }//jspDestroy()
     %>
    
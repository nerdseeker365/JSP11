<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <% //read form data
        String name=request.getParameter("iname");
        float price=Float.parseFloat(request.getParameter("iprice"));
        float qty=Float.parseFloat(request.getParameter("iqty"));
        float billAmt=price*qty;
        if(billAmt<50000){  %>
            <h1>The Bill Details are</h1>
            <b>Item name::</b> <%=name%> <br>
            <b>Item price::</b> <%=price%> <br>
            <b>Item qty::</b> <%=qty%> <br>
            <b>Bill Amount::</b> <%=billAmt%>
       <% }
          else { %>
              <!-- Forward to discount.jsp -->
              <jsp:forward  page="discount.jsp">
                  <jsp:param name="bill"  value="<%=billAmt%>"/>
              </jsp:forward>
        <%   }    %>
    <br>
     <a   href="form.html">home</a>  
    
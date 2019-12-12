 <%!
   public  String  generateWishMessage(String user){
     java.util.Calendar cal=null;
      int hour=0; 
      //get System Date
      cal=java.util.Calendar.getInstance();
      //get current hour the day
      hour=cal.get(java.util.Calendar.HOUR_OF_DAY);
      System.out.println("hello how are u?"); 
      //generate wish message
            if(hour<12)
          return "Good Morning::"+user;
      else if(hour<16)
          return "Good AfterNoon::"+user;
        else if(hour<20)
            return "Good Evening::"+user; 
          else
            return "Good Nigth::"+user;
   }
 %> 
  <%-- <h1>Date and time ::--%> <%=new java.util.Date() %></h1>    
  <br><br>
   //<% String user="raja"; %>
   <br>
   <b>Wish message is ::  <%=generateWishMessage(user) %> 
   <br> 
   
   

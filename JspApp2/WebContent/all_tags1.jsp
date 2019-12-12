<jsp:declaration>
<![CDATA[
   public  String  generateWishMessage(String user){
     java.util.Calendar cal=null;
     int hour=0;
      //get System Date
      cal=java.util.Calendar.getInstance();
      //get current hour the day
      hour=cal.get(java.util.Calendar.HOUR_OF_DAY);
      //generate wish message
      if(hour<12)
          return "Good Morning::"+user;
      else if(hour<16)
          return "Good AfterNoon::"+user;
        else if(hour<20)
          return "Good Evening::"+user;
          else
            return "Good Nigth::"+user;
   } ]]>
 </jsp:declaration>
 
 <h1>Date and time :: <jsp:expression>new java.util.Date()</jsp:expression></h1>    
  <br><br>
   <jsp:scriptlet> 
       String user="raja";
   </jsp:scriptlet>
   <br>
   <b>Wish message is :: <jsp:expression>generateWishMessage(user) </jsp:expression>
   <br> 
   
   

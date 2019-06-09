<html>
   <head>
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
      <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/json2/20130526/json2.min.js"></script>
      <script type="text/javascript">
         $(function () {
             $("[id*=sort]").click(function () {             	
                        
                 var obj = $("input[name='sort']:checked").val();               
                 $.ajax({
                     type: "GET",
                     url: "sort",
                     data:{sort:obj},
                     contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                     dataType: "html",
                     success: function (r) {
                     	$("#display").empty();
                     	$("#display").append(r);
                     }
                 });
                 return false;
             });
         });
      </script>
      <script type="text/javascript">
      	$(function () {
             $("#search_button").click(function () {             	
                      
                  
                 var obj = $("#search").val();                 
                 $.ajax({
                     type: "GET",
                     url: "search",
                     data:{search:obj},
                     contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                     dataType: "html",
                     success: function (r) {
                     	$("#display").html(r);
                     }
                 });
                 return false;
             });
         });
      </script>
      
      <%@page import="java.sql.DriverManager"%>
      <%@page import="java.sql.ResultSet"%>
      <%@page import="java.sql.Statement"%>
      <%@page import="java.sql.Connection"%>
      <%
         String id = request.getParameter("userid");
         String driver = "com.mysql.jdbc.Driver";
         String connectionUrl = "jdbc:mysql://localhost:3306/";
         String database = "service_provider";
         String userid = "root";
         String password = "bablu";
         try {
         Class.forName(driver);
         } catch (ClassNotFoundException e) {
         e.printStackTrace();
         }
         Connection connection = null;
         Statement statement = null;
         ResultSet resultSet = null;
         %>
      <meta charset="ISO-8859-1">
      <title>SyncoNext</title>
      <script src="//code.jquery.com/jquery-1.10.2.js"></script>
      <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      <script src="autocompleter.js"></script>
      <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
      <!-- User defied css -->
      <link rel="stylesheet" href="style.css">
   </head>
   <body>
     
         <div class="header">
            <h3>SyncoNext</h3>
         </div>
         <br />
         <br />
         <div class="search-container">
            <div class="ui-widget">
            <form method="get"></form>
               <input type="text" id="search" name="search" value="">
                 <button type=button id="search_button" >Search</button>
                 </form>             
            </div>
         </div>
         <div class="sort-cointainer" id=sort_div>
            <br>               
               <form>
               Sort
               <input type="radio" name="sort" id=sort value =lowest_price>Price
               <input type="radio" name="sort" id=sort value=rating>Rating 
               </form>
           <br>
         </div>
         <br>
         <div class="Display cointainer" id=display>
         <table border=0>
            <tr>
               <td><b>Service Providers</b></td>
               <td><b>Rate</b></td>
            </tr>
            <%
               try{
               	
               connection = DriverManager.getConnection(connectionUrl+database, userid, password);
               statement=connection.createStatement();
               
               String sql ="select name,lowest_price from isp ";
               resultSet = statement.executeQuery(sql);
               while(resultSet.next()){
               %>
            <tr>
               <td><%=resultSet.getString("name") %></td>
               <td><%=resultSet.getString("lowest_price") %></td>
            </tr>
            <%
               }
               connection.close();
               } catch (Exception e) {
               e.printStackTrace();
               }
               %>         
      </table>
      </div>
   </body>
</html>
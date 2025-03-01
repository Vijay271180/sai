
<%@page import="java.text.Normalizer.Form"%>
<%@ page import="java.sql.*" %>
   <%@ include file="navbar.jsp" %>
<html>
<head><title>Database Connection Example</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
  .button-container{
  display:flex;
  flex-direction:column;
  }
   .button-container button{
margin:5px 0;
  }
  </style>
  </head>
<body>
<div class="container mt-5">
    <h2>Information Table</h2>
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr>
            <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Seat</th>
                <th>Equipe</th>
                 <th>Comment</th>
                 <th>Edit</th>
                 <th>Delete</th>
                 
            </tr>
        </thead>
<%
   Connection con = null;
   Statement stmt = null;
   ResultSet rs = null;

   try {
      // Load JDBC Driver
      Class.forName("com.mysql.jdbc.Driver");

      // Establish Connection
      con = DriverManager.getConnection(
         "jdbc:mysql://localhost:3306/youtube", "root", "root");

      // Create Statement
      stmt = con.createStatement();

      // Execute Query
      rs = stmt.executeQuery("SELECT * FROM add_user1");

      // Process Result Set
      while(rs.next()) {
    	  %>
    	   <tbody>
            <tr>
             <td><% out.println(rs.getString("uid")); %></td>
                <td><% out.println(rs.getString("name")); %></td>
                <td><% out.println(rs.getString("email")); %></td>
                <td><% out.println(rs.getString("seat")); %></td>
                <td><% out.println(rs.getString("equipe")); %></td>
                <td><% out.println(rs.getString("comment")); %></td>
               
             
               
 <td><div class="card" style="width:5 rem">
 <a href="updateuser.jsp?u=<%=rs.getString("uid") %>" class="btn btn-success"><b>edit</b></a></td></div>
 <td><b>
<form action="deleteuser?du=<%=rs.getString("uid") %>" method="post">

 <input type="submit" name="delete" value="delete" class="btn btn-danger" id="<%=rs.getString("uid") %>">

        </form>
        
      
      
                   </b>
                </td>
            </tr>
             
       </td>
           
      <%  }} catch (SQLException e) {
         out.println("Closing Error: " + e.getMessage());
      }
   
%>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
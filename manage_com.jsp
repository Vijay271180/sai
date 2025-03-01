
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
                <th>com_name</th>
                <th>model</th>
                <th>processor</th>
                <th>ram</th>
                 <th>storage</th>
                  <th>os</th>
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
      rs = stmt.executeQuery("SELECT * FROM add_com1");

      // Process Result Set
      while(rs.next()) {
    	  %>
    	   <tbody>
            <tr>
             <td><% out.println(rs.getString("cid")); %></td>
                <td><% out.println(rs.getString("com_name")); %></td>
                <td><% out.println(rs.getString("model")); %></td>
                <td><% out.println(rs.getString("processor")); %></td>
                <td><% out.println(rs.getString("ram")); %></td>
                <td><% out.println(rs.getString("storage")); %></td>
                <td><% out.println(rs.getString("os")); %></td>
             
               
 <td><div class="card" style="width:5 rem">
 <a href="update.jsp?u=<%=rs.getString("cid") %>" class="btn btn-success"><b>edit</b></a></td></div>
 <td><b>
<form action="delete?d=<%=rs.getString("cid") %>" method="post">

 <input type="submit" name="delete" value="delete" class="btn btn-danger" id="<%=rs.getString("cid") %>">

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
<%@page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@page import="java.text.Normalizer.Form"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head><title>Database Connection Example</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
String u=request.getParameter("u");
Integer uid=Integer.parseInt(u);

  
      // Load JDBC Driver
      Class.forName("com.mysql.jdbc.Driver");

      // Establish Connection
      Connection con = DriverManager.getConnection(
         "jdbc:mysql://localhost:3306/youtube", "root", "root");

      // Create Statement
       Statement stmt = con.createStatement();

      // Execute Query
       ResultSet rs = stmt.executeQuery("SELECT * FROM add_user1 where uid="+uid);
      %>
      <div class="card-body rounded-lg">
      <form action="updateuser" method="post">
      <% 
 // Process Result Set
      while(rs.next()) {
    	  %>
   <h1 style="color:green">Update Form</h1>
 <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
       
         <div class="form-group">
            <label for="name">Person Id:</label>
            <input type="text" class="form-control" id="name" value="<% out.println(rs.getString("uid"));%>" name="id"  required>
          </div>
          <div class="form-group">
            <label for="name">Full Name</label>
            <input type="text" class="form-control" id="name" name="name" value="<% out.println(rs.getString("name"));%>" required>
          </div>

          <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" class="form-control" id="email" name="email" value="<% out.println(rs.getString("email"));%>" required>
          </div>


          <div class="form-group">
            <label for="seating">Preferred Seating</label>
            <select class="form-control" id="seating" name="seating" value="<% out.println(rs.getString("seat"));%>">
              <option value="window">Window Seat</option>
              <option value="corner">Corner Seat</option>
              <option value="near-fan">Near Fan</option>
              <option value="near-door">Near Door</option>
            </select>
          </div>

          <div class="form-group">
            <label for="equipment">Equipment Needed</label>
            <select class="form-control" id="equipment" name="equipment" value="<% out.println(rs.getString("equipe"));%>">
              <option value="computer">Computer</option>
              <option value="laptop">Laptop</option>
              <option value="headphones">Headphones</option>
            </select>
          </div>

          <div class="form-group">
            <label for="comments">Additional Comments</label>
            <textarea class="form-control" id="comments" name="comments" rows="3" value="<% out.println(rs.getString("comment"));%>"></textarea>
          </div>

      
       </div>
       </div>
    	  
  <% }%>   
  <div class="container">
  <input type="submit" name="submit"class="btn btn-primary" value="update" id="update">
</div>
</form>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
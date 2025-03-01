<%@page import="java.text.Normalizer.Form"%>
<%@ page import="java.sql.*" %>
<html>
<head><title>Database Connection Example</title></head>
<body>
<form action="a.html" method="post">
<a href="a.html"><button>ADD USER</button></a><br>
</form>
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
      rs = stmt.executeQuery("SELECT * FROM student");

      // Process Result Set
      while(rs.next()) {
    	  %>
        <tr align="center">
        <th scope="row"><% out.println(rs.getString("sid")); %></th>
        <td><b><% out.println(rs.getString("name")); %></b>
         <td scope="row"><b><% out.println(rs.getString("address")); %></b>
         <td><div class="card" style="width:5rem";>
         <a href="update.jsp?u=<%=rs.getString("sid") %>" class="btn btn-sucess">edit</b></a>
         <td><b> <form action="delete?d=<%=rs.getString("sid") %>" method="post">
          <div class="card">
         <input type="submit" name="delete" value="delete" id="<%= rs.getString("sid") %>">
         </div>
       
        </form>
        </b>
        </td>
        </div> 
      <%  }} catch (SQLException e) {
         out.println("Closing Error: " + e.getMessage());
      }
   
%>
</body>
</html>
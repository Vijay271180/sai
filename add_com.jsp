<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Computer Details Form</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <div class="container mt-5">
    <h2>Add Computer Details</h2>
    <form action="add_com" method="post">
     <div class="form-group">
        <label for="computerName">Computer Id</label>
        <input type="text" class="form-control" name="id" id="computerName" placeholder="Enter computer id" required>
      </div>
      <!-- Computer Name -->
      <div class="form-group">
        <label for="computerName">Computer Name</label>
        <input type="text" class="form-control" name="cn" id="computerName" placeholder="Enter computer name" required>
      </div>

      <!-- Model -->
      <div class="form-group">
        <label for="model">Model</label>
        <input type="text" class="form-control"name="m" id="model" placeholder="Enter model" required>
      </div>

      <!-- Processor -->
      <div class="form-group">
        <label for="processor">Processor</label>
        <input type="text" class="form-control"name="p" id="processor" placeholder="Enter processor type" required>
      </div>

      <!-- RAM -->
      <div class="form-group">
        <label for="ram">RAM</label>
        <input type="text" class="form-control" id="ram"name="r" placeholder="Enter RAM size (e.g., 8GB)" required>
      </div>

      <!-- Storage -->
      <div class="form-group">
        <label for="storage">Storage</label>
        <input type="text" class="form-control" id="storage" name="s" placeholder="Enter storage capacity (e.g., 1TB)" required>
      </div>

      <!-- Operating System -->
      <div class="form-group">
        <label for="os">Operating System</label>
        <input type="text" class="form-control" id="os" name="os" placeholder="Enter operating system" required>
      </div>

      <!-- Submit Button -->
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>

  <!-- Bootstrap JS and dependencies -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

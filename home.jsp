<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home - Cyber Cafe Management System</title>
    <!-- Bootstrap CSS Link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    .image-container {
            position: relative; /* Needed for absolute positioning of images */
            width: 100%; /* Or a specific width */
            height: 400px; /* Or a specific height */
            /* Hide any overflowing images */
        }

        .diagonal-image {
            position: absolute;
            max-width: 300px; /* Adjust as needed */
            max-height: 300px; /* Adjust as needed */
            opacity: 0.8; /* Adjust opacity if desired */
            transition: opacity 0.3s ease; /* Smooth transition for hover effect */
        }
        .diagonal-image:hover{
            opacity: 1;
        }


        .image1 {
            top: 0;
            left: 0;
            height:60%;
        }

        .image2 {
            top: 25%; /* Adjust for desired spacing */
            left: 20%; /* Adjust for desired spacing */
             height:60%;
        }

        .image3 {
            top: 50%; /* Adjust for desired spacing */
            left: 40%; /* Adjust for desired spacing */
             height:60%;
        }

        .image4 {
            top: 75%; /* Adjust for desired spacing */
            left: 63.4%;
            height:60%; /* Adjust for desired spacing */
        }
         
    </style>
</head>
<body>
<H1 style="color:red">CMS</H1>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="image-container">
                <img src="static/first.jpg" alt="Image 1" class="diagonal-image image1">
                <img src="static/sec.jpg" alt="Image 2" class="diagonal-image image2">
                <img src="static/three.jpg" alt="Image 3" class="diagonal-image image3">
                <img src="static/four.jpg" alt="Image 4" class="diagonal-image image4">
                
                
                
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Footer Section -->
 
    <!-- Bootstrap JS and Dependencies (Popper.js) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
    
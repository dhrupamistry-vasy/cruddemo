<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Details</title>
    <!-- Link Bootstrap CSS (You can replace it with the appropriate Bootstrap version or CDN) -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
   body {
          background-image: url('https://www.dcsglobalinfo.com/img/slides/hrms2.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        background-attachment: fixed;
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 50px;
        }
</style>
</head>
<body>

<div class="container mt-4">
<h2 class="text-center" style="color: white; background-color: black;">Employee Details</h2>

    <ul class="list-group">
        <li class="list-group-item"><strong>ID:</strong> ${employee.id}</li>
        <li class="list-group-item"><strong>First Name:</strong> ${employee.firstName}</li>
        <li class="list-group-item"><strong>Last Name:</strong> ${employee.lastName}</li>
        <li class="list-group-item"><strong>Email ID:</strong> ${employee.emailId}</li>
    </ul>

    <a class="btn btn-primary mt-3" href="/index/edit/${employee.id}">Edit</a>
    <a class="btn btn-danger mt-3" href="/index/employees" onclick="return confirm('Are you sure you want to delete this employee?')">Delete</a>
</div>

<!-- Add Bootstrap JS and jQuery (You can replace it with the appropriate Bootstrap version or CDN) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

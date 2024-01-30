<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Employee Management System</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
    body {
        background-image: url('https://www.dcsglobalinfo.com/img/slides/hrms2.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        background-attachment: fixed;
        background-color: #f8f9fa; /* Fallback color if the image is not loaded */
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .container {
        margin-top: 50px;
    }

    h2 {
        color: #007bff;
    }

    hr {
        border-top: 2px solid #007bff;
        margin: 20px 0;
    }

    table {
        width: 100%;
        margin-bottom: 20px;
        background-color: #333;
        color: white;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    th, td {
        text-align: center;
        padding: 12px;
        color:white;
    }

    .btn {
        margin-right: 5px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    form {
        background-color: black;
        color: white;
        padding: 20px;
        border: 1px solid #ced4da;
        border-radius: 5px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .btn-info, .btn-warning, .btn-danger {
        padding: 10px 20px;
    }

    .btn-success {
        padding: 10px 20px;
        background-color: #28a745;
        border-color: #28a745;
    }

    h3 {
        color: #007bff;
    }

    table thead th {
        background-color: #007bff;
        color: white;
    }

 

    @media (max-width: 768px) {
        h2 {
            font-size: 24px;
        }
        .btn {
            margin-top: 5px;
        }
    }
</style>

</head>
<body>
	<div class="container">
<h2 class="text-center" style="color: white; background-color: black;">Employee Management System</h2>
		<hr>

		<div class="row">
			<div class="col-md-12">
				<h3 class="mb-3">Employee List</h3>
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th>ID</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="employee" items="${employees}">
							<tr>
								<td>${employee.id}</td>
								<td>${employee.firstName}</td>
								<td>${employee.lastName}</td>
								<td>${employee.emailId}</td>
								<td><a href="/index/employees/${employee.id}"
									class="btn btn-info">View</a> <a
									href="/index/employees/edit/${employee.id}"
									class="btn btn-warning">Edit</a> <a
									href="/index/employees/delete/${employee.id}"
									class="btn btn-danger">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12 mt-3">
				<h3 class="mb-3">Add New Employee</h3>
				<form action="/index/employees" method="post">
					<div class="form-group">
						<label for="firstName">First Name:</label> <input type="text"
							class="form-control" id="firstName" name="firstName" required>
					</div>
					<div class="form-group">
						<label for="lastName">Last Name:</label> <input type="text"
							class="form-control" id="lastName" name="lastName" required>
					</div>
					<div class="form-group">
						<label for="emailId">Email:</label> <input type="email"
							class="form-control" id="emailId" name="emailId" required>
					</div>
					<button type="submit" class="btn btn-success">Add Employee</button>
				</form>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS and Popper.js -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Employee Details</title>
<!-- Link Bootstrap CSS (You can replace it with the appropriate Bootstrap version or CDN) -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-color: white;
	font-family: Arial, sans-serif;
	margin: 50px;
	background-image:
		url('https://e0.pxfuel.com/wallpapers/1017/254/desktop-wallpaper-what-makes-a-human-resource-management-system-unique-human-resources.jpg');
	background-size: cover;
	background-repeat: no-repeat;
}

.container {
	max-width: 400px;
	margin: auto;
	background-color: #f8f9fa; /* Light background color */
	padding: 20px;
	border: 1px solid #ced4da;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	color: #007bff;
	text-align: center;
	padding: 10px;
	border-radius: 5px 5px 0 0;
	margin-bottom: 0;
}

.list-group-item {
	border: none;
	padding: 0.75rem 1.25rem;
	border-bottom: 1px solid #dee2e6;
	background-color: white; /* Light background color */
	color: #343a40; /* Dark text color */
}

.btn {
	margin-top: 10px;
}
</style>
</head>
<body>

	<div class="container mt-4">
		<h2 class="text-center">Employee Details</h2>

		<ul class="list-group">
			<li class="list-group-item"><strong>ID:</strong> ${employee.id}</li>
			<li class="list-group-item"><strong>First Name:</strong>
				${employee.firstName}</li>
			<li class="list-group-item"><strong>Last Name:</strong>
				${employee.lastName}</li>
			<li class="list-group-item"><strong>Email ID:</strong>
				${employee.emailId}</li>
			<li class="list-group-item"><strong>Phone No:</strong>
				${employee.phoneno}</li>

		</ul>

		<a class="btn btn-primary mt-3" href="/index/edit/${employee.id}">Edit</a>
		<a class="btn btn-danger mt-3" href="/index/employees"
			onclick="return confirm('Are you sure you want to delete this employee?')">Delete</a>
	</div>

	<!-- Add Bootstrap JS and jQuery (You can replace it with the appropriate Bootstrap version or CDN) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Edit Employee</title>
<!-- Link Bootstrap CSS (You can replace it with the appropriate Bootstrap version or CDN) -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f8f9fa;
	margin: 50px;
	background-image:
		url('https://e0.pxfuel.com/wallpapers/1017/254/desktop-wallpaper-what-makes-a-human-resource-management-system-unique-human-resources.jpg');
	background-size: cover;
	background-repeat: no-repeat;
}

.container {
	max-width: 400px;
	margin: auto;
	background-color: white;
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

label {
	font-weight: bold;
	margin-bottom: 0.5em;
	color: #343a40; /* Dark text color */
}

input {
	width: 100%;
	padding: 8px;
	margin-bottom: 1em;
	box-sizing: border-box;
	border: 1px solid #ced4da;
	border-radius: 4px;
}

button {
	background-color: #007bff;
	color: #fff;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>

	<div class="container">
		<h2 class="text-center text-primary mb-4">Edit Employee</h2>

		<form method="post" action="/index/edit/${employee.id}">
			<input type="hidden" name="_method" value="POST" /> <label
				for="firstName">First Name:</label> <input type="text"
				id="firstName" name="firstName" value="${employee.firstName}"
				required /><br /> <label for="lastName">Last Name:</label> <input
				type="text" id="lastName" name="lastName"
				value="${employee.lastName}" required /><br /> <label
				for="emailId">Email ID:</label> <input type="email" id="emailId"
				name="emailId" value="${employee.emailId}" required /><br /> <label
				for="phoneno">Phone No:</label> <input type="tel" id="phoneno"
				name="phoneno" value="${employee.phoneno}" required /><br />

			<button type="submit">Update Employee</button>
		</form>
	</div>

	<!-- Add Bootstrap JS and jQuery (You can replace it with the appropriate Bootstrap version or CDN) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

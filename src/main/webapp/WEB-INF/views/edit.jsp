<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Employee</title>
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

        h2 {
            color: #007bff;
        }

        form {
            max-width: 400px;
            margin: auto;
            background-color: black;
            padding: 20px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            margin-bottom: 0.5em;
            color: white;
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

<h2 class="text-center" style="color: white; background-color: black;">Edit Employee</h2>

<form method="post" action="/index/edit/${employee.id}">
    <input type="hidden" name="_method" value="POST"/>
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" value="${employee.firstName}" required/><br/>

    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" value="${employee.lastName}" required/><br/>

    <label for="emailId">Email ID:</label>
    <input type="email" id="emailId" name="emailId" value="${employee.emailId}" required/><br/>

    <button type="submit">Update Employee</button>
</form>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #333;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .container {
            padding: 20px;
        }
        form {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #f9f9f9;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0 10px;
            border: 1px solid #ddd;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="#home">Home</a>
        <a href="#employees">Employees</a>
        <a href="#contact">Contact</a>
    </div>

    <div class="container">
        <h2>Employee Form</h2>
        <form action="${employee.id == 0 ? 'save' : 'update'}" method="post">
            <input type="hidden" name="id" value="${employee.id}" />
            <label>Name:</label>
            <input type="text" name="name" value="${employee.name}" /><br />
            <label>Department:</label>
            <input type="text" name="department" value="${employee.department}" /><br />
            <label>Salary:</label>
            <input type="text" name="salary" value="${employee.salary}" /><br />
            <input type="submit" value="Save" />
        </form>
    </div>

    <div class="footer">
        &copy; 2024 Your Company. All rights reserved.
    </div>
</body>
</html>

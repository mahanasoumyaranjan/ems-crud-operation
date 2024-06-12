<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Form</title>
</head>
<body>
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
</body>
</html>

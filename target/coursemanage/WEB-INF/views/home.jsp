<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Management</title>

<style>
body {
    margin: 0;
    font-family: Arial;
    background: #f4f6f9;
}

.navbar {
    background: #343a40;
    color: white;
    padding: 15px;
    text-align: center;
    font-size: 22px;
}

.container {
    width: 80%;
    margin: auto;
    margin-top: 30px;
}

.btn {
    padding: 8px 15px;
    border-radius: 5px;
    text-decoration: none;
    color: white;
}

.add { background: blue; }
.edit { background: green; }
.delete { background: red; }

table {
    width: 100%;
    background: white;
    margin-top: 20px;
    border-collapse: collapse;
}

th, td {
    padding: 12px;
    text-align: center;
}

th {
    background: blue;
    color: white;
}

tr:nth-child(even) {
    background: #f2f2f2;
}
</style>

</head>
<body>

<div class="navbar">
    Course Management System
</div>

<div class="container">

<a href="add" class="btn add">+ Add Course</a>

<table>
<tr>
    <th>ID</th>
    <th>Course Name</th>
    <th>Instructor</th>
    <th>Actions</th>
</tr>

<c:forEach var="c" items="${courses}">
<tr>
    <td>${c.id}</td>
    <td>${c.name}</td>
    <td>${c.instructor}</td>
    <td>
        <a href="edit?id=${c.id}" class="btn edit">Edit</a>
        <a href="delete?id=${c.id}" class="btn delete">Delete</a>
    </td>
</tr>
</c:forEach>

</table>

</div>

</body>
</html>
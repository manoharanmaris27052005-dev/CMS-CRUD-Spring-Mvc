<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Management</title>

<style>

body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #121212;
    color: #e4e4e4;
}

/* Navbar */
.navbar {
    background: #1f1f1f;
    padding: 15px;
    text-align: center;
    font-size: 22px;
    font-weight: bold;
    color: #00d4ff;
    box-shadow: 0px 2px 10px rgba(0,0,0,0.5);
}

/* Container */
.container {
    width: 85%;
    margin: auto;
    margin-top: 30px;
}

/* Card */
.card {
    background: #1e1e1e;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 5px 15px rgba(0,0,0,0.5);
}

/* Buttons */
.btn {
    padding: 8px 16px;
    border-radius: 6px;
    text-decoration: none;
    color: white;
    font-size: 14px;
    transition: 0.3s;
}

.add {
    background: #007bff;
}

.add:hover {
    background: #0056b3;
}

.edit {
    background: #28a745;
}

.edit:hover {
    background: #1e7e34;
}

.delete {
    background: #dc3545;
}

.delete:hover {
    background: #a71d2a;
}

/* Table */
table {
    width: 100%;
    margin-top: 20px;
    border-collapse: collapse;
}

th {
    background: #007bff;
    color: white;
    padding: 12px;
}

td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #333;
}

tr:hover {
    background: #2a2a2a;
}

/* Empty Message */
.empty {
    text-align: center;
    padding: 30px;
    color: #aaa;
    font-size: 18px;
}

</style>

</head>

<body>

<div class="navbar">
    🌙 Course Management System
</div>

<div class="container">

<div class="card">

<a href="add" class="btn add">+ Add Course</a>

<c:if test="${empty courses}">
    <div class="empty">
        No courses available 😕 <br><br>
        Add a course to get started
    </div>
</c:if>

<c:if test="${not empty courses}">
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
        <a href="delete?id=${c.id}" class="btn delete"
           onclick="return confirm('Are you sure to delete?')">Delete</a>
    </td>
</tr>
</c:forEach>

</table>
</c:if>

</div>

</div>

</body>
</html>
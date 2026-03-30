<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Dashboard</title>

<style>

/* Base */
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: #0f172a;
    color: #e2e8f0;
}

/* Navbar */
.navbar {
    background: #020617;
    padding: 18px;
    text-align: center;
    font-size: 22px;
    font-weight: bold;
    color: #38bdf8;
    letter-spacing: 1px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.5);
}

/* Container */
.container {
    width: 90%;
    margin: auto;
    margin-top: 30px;
}

/* Card */
.card {
    background: #020617;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.6);
}

/* Add Button */
.add-btn {
    background: linear-gradient(45deg, #3b82f6, #06b6d4);
    padding: 10px 18px;
    border-radius: 8px;
    text-decoration: none;
    color: white;
    font-weight: bold;
    transition: 0.3s;
}

.add-btn:hover {
    transform: scale(1.05);
}

/* Table */
table {
    width: 100%;
    margin-top: 25px;
    border-collapse: collapse;
}

th {
    background: #1e293b;
    padding: 14px;
    color: #38bdf8;
}

td {
    padding: 14px;
    text-align: center;
    border-bottom: 1px solid #1e293b;
}

/* Row Hover */
tr:hover {
    background: #1e293b;
}

/* Buttons */
.btn {
    padding: 6px 12px;
    border-radius: 6px;
    text-decoration: none;
    font-size: 13px;
    margin: 2px;
    display: inline-block;
}

/* Edit */
.edit {
    background: #22c55e;
    color: white;
}

/* Delete */
.delete {
    background: #ef4444;
    color: white;
}

/* Hover */
.edit:hover {
    background: #16a34a;
}

.delete:hover {
    background: #dc2626;
}

/* Empty Message */
.empty {
    text-align: center;
    padding: 40px;
    color: #94a3b8;
    font-size: 18px;
}

</style>

</head>

<body>

<div class="navbar">
    🌙 Course Management Dashboard
</div>

<div class="container">

<div class="card">

<a href="add" class="add-btn">➕ Add Course</a>

<c:if test="${empty courses}">
    <div class="empty">
        No courses available 😕 <br><br>
        Start by adding a new course
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
           onclick="return confirm('Delete this course?')">Delete</a>
    </td>
</tr>
</c:forEach>

</table>
</c:if>

</div>

</div>

</body>
</html>
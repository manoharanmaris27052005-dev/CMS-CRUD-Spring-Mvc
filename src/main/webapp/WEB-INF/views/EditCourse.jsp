<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Course</title>

<style>
body {
    font-family: Arial;
    background: #eef2f7;
}

.form-box {
    width: 400px;
    margin: auto;
    margin-top: 80px;
    background: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 0 10px #ccc;
}

input {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
}

button {
    width: 100%;
    padding: 10px;
    background: #ffc107;
    border: none;
    border-radius: 5px;
}
</style>

</head>
<body>

<div class="form-box">
<h2>Edit Course</h2>

<form action="update" method="post">
    <input type="hidden" name="id" value="${course.id}">
    Course Name: <input type="text" name="name" value="${course.name}">
    Instructor: <input type="text" name="instructor" value="${course.instructor}">
    <button type="submit">Update</button>
</form>

</div>

</body>
</html>
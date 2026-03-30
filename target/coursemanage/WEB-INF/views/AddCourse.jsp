<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Course</title>

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
    background: #28a745;
    color: white;
    border: none;
    border-radius: 5px;
}
</style>

</head>
<body>

<div class="form-box">
<h2>Add Course</h2>

<form action="save" method="post">
    ID: <input type="text" name="id">
    Course Name: <input type="text" name="name">
    Instructor: <input type="text" name="instructor">
    <button type="submit">Save</button>
</form>

</div>

</body>
</html>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Course</title>

<style>

body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
    color: #fff;
}

/* Center Box */
.form-box {
    width: 380px;
    margin: auto;
    margin-top: 80px;
    background: rgba(0,0,0,0.7);
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 0 20px rgba(0,0,0,0.8);
}

/* Title */
h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #ffc107;
}

/* Inputs */
input {
    width: 100%;
    padding: 12px;
    margin: 12px 0;
    border: none;
    border-radius: 6px;
    background: #1e1e1e;
    color: #fff;
    outline: none;
}

/* Focus Effect */
input:focus {
    border: 1px solid #ffc107;
    box-shadow: 0 0 8px #ffc107;
}

/* Button */
button {
    width: 100%;
    padding: 12px;
    background: #ffc107;
    color: black;
    border: none;
    border-radius: 6px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
}

/* Hover */
button:hover {
    background: #e0a800;
}

/* Back Link */
.back {
    display: block;
    text-align: center;
    margin-top: 15px;
    color: #aaa;
    text-decoration: none;
}

.back:hover {
    color: #fff;
}

</style>

</head>

<body>

<div class="form-box">

<h2>✏ Edit Course</h2>

<form action="update" method="post">
    <input type="hidden" name="id" value="${course.id}">

    <input type="text" name="name" value="${course.name}" placeholder="Course Name">
    
    <input type="text" name="instructor" value="${course.instructor}" placeholder="Instructor Name">

    <button type="submit">Update Course</button>
</form>

<a href="/" class="back">⬅ Back to Home</a>

</div>

</body>
</html>
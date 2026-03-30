<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Course</title>

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
    color: #00d4ff;
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
    border: 1px solid #00d4ff;
    box-shadow: 0 0 8px #00d4ff;
}

/* Button */
button {
    width: 100%;
    padding: 12px;
    background: #00d4ff;
    color: black;
    border: none;
    border-radius: 6px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
}

/* Hover */
button:hover {
    background: #00aacc;
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

<h2>➕ Add Course</h2>

<form action="save" method="post">
    <input type="text" name="id" placeholder="Enter Course ID">
    <input type="text" name="name" placeholder="Enter Course Name">
    <input type="text" name="instructor" placeholder="Enter Instructor Name">
    
    <button type="submit">Save Course</button>
</form>

<a href="/" class="back">⬅ Back to Home</a>

</div>

</body>
</html>
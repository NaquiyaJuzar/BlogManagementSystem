<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: linear-gradient(to right, #feada6 0%, #f5efef 100%);
            background-size: 400% 400%;
            animation: gradient-animation 5s ease infinite;
            font-family: 'Great Vibes', cursive;
        }

        @keyframes gradient-animation {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        .card:hover {
            transform: translateY(-5px);
            transition: transform 0.3s ease;
        }

        .card {
            height: 250px;
            background: linear-gradient(to right, rgba(255, 255, 255, 0.7), rgba(255, 255, 255, 0.3));
        }

        .card-body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            color: #333; /* Change text color to black for better readability */
        }

        .btn {
            font-size: 3rem; /* Increased font size */
            width: 180px;
            background-color: var(--btn-bg-color); /* Set button background color */
            border-color: var(--btn-bg-color); /* Set button border color */
        }

        h5 {
            font-size: 3.5rem; /* Increased font size */
            margin-bottom: 20px; /* Added margin for better spacing */
        }

        /* Increased font size and width */
        .select-move {
            font-size: 4rem;
            font-weight: bold;
            width: 100%;
        }

        /* Define custom CSS variables for button background color */
        :root {
            --gradient-color1: #feada6;
            --gradient-color2: #f5efef;
            --btn-bg-color: #feada6; /* Initial button background color */
        }

        /* Set text color of Update Post button to white */
        .btn-update-post {
            color: white;
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">
</head>
<body>
<%
String msg=(String)session.getAttribute("activity");


%>
<div class="container mt-5">
    <h2 class="text-center mb-4 select-move">Select your MOVE!!!<%=msg %></h2>
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Update User</h5>
                    <a href="updateUser.jsp" class="btn btn-primary btn-block">Go</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Delete User</h5>
                    <a href="deleteUser.jsp" class="btn btn-danger btn-block">Go</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Create Post</h5>
                    <a href="createPost.jsp" class="btn btn-success btn-block">Go</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Update Post</h5>
                    <a href="updatePost.jsp" class="btn btn-warning btn-block btn-update-post">Go</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">Delete Post</h5>
                    <a href="deletePost.jsp" class="btn btn-danger btn-block">Go</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">View Post</h5>
                    <a href="viewPosts.jsp" class="btn btn-info btn-block">Go</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

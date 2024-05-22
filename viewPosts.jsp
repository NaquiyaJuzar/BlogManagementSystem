<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Post</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: linear-gradient(to left, #0250c5 0%, #d43f8d 100%);           
            background-size: 180% 180%;
            animation: gradient-animation 5s ease infinite;
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

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #f2f2f2;
            padding: 10px 0;
            text-align: center;
        }
        .footer a {
            text-decoration: none;
            color: #333;
            margin: 0 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>View Post</h2>
    <form action="viewPostServlet" method="post">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
        <input type="submit" value="View Posts">
    </form>
</div>

<div class="footer">
    <a href="createpost.jsp">Create Post</a>
    <a href="updatePost.jsp">Update Post</a>
    <a href="deletePost.jsp">Delete Post</a>
</div>

</body>
</html>
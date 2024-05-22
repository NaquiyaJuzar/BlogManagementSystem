<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Post</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: linear-gradient(to left, #5ee7df 0%, #b490ca 100%);
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
        input[type="text"], textarea, input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        textarea {
            height: 200px;
        }
        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }

        footer {
            text-align: center;
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 10px 0;
        }

        footer a {
            color: #333;
            text-decoration: none;
            margin: 0 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Update Post</h2>
    <form action="updatePostServlet" method="post">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
        <label for="old_title">Old Title:</label>
        <input type="text" id="old_title" name="title" required>
        <label for="new_title">New Title:</label>
        <input type="text" id="new_title" name="newtitle" required>
        
        <label for="new_content">New Content</label>
        <textarea id="new_content" name="newcontent" required></textarea>
        <input type="submit" value="Update Post">
    </form>
</div>

<footer>
    <a href="createPost.jsp">Create Post</a>
    <a href="viewpost.jsp">View Post</a>
    <a href="deletePost.jsp">Delete Post</a>
</footer>

</body>
</html>

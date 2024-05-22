<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Post</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
           /* background-image: linear-gradient(to right, #cd9cf2 0%, #f6f3ff 100%);*/
            background-image: linear-gradient(to right, #5ee7df 0%, #b490ca 100%);
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
    <h2>Create Post</h2>
    <form action="createPostServlet" method="post">
        <label for="title">Title</label>
        <input type="text" id="title" name="title" required>
        <label for="author">Author</label>
        <input type="text" id="author" name="username">
        <label for="content">Content</label>
        <textarea id="content" name="content" required></textarea>
        <input type="submit" value="Create Post">
    </form>
</div>

<footer>
    <a href="updatePost.jsp">Update Post</a>
    <a href="viewpost.jsp">View Post</a>
    <a href="deletePost.jsp">Delete Post</a>
</footer>

</body>
</html>

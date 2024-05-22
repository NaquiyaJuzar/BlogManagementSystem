<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            overflow: hidden;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .header {
            background-color: #007bff;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            border-radius: 8px 8px 0 0;
        }
        .footer {
            background-color: #007bff;
            color: #fff;
            padding: 10px 0;
            text-align: center;
            border-radius: 0 0 8px 8px;
            margin-top: 20px;
        }
        .blog-container {
            display: flex;
            animation: moveBlogs 20s linear infinite;
        }
        .blog {
            width: 300px;
            margin-right: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            transition: transform 0.3s ease;
        }
        .blog:last-child {
            margin-right: 0;
        }
        .blog:hover {
            transform: translateY(-5px);
        }
        @keyframes moveBlogs {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(-100%);
            }
        }
        h2 {
            margin-top: 0;
        }
        p {
            margin-bottom: 10px;
        }
        .login {
            text-align: right;
            margin-bottom: 20px;
        }
        .login a {
            text-decoration: none;
            color: #007bff;
        }
        .footer-options {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .footer-option {
            margin-right: 20px;
        }
        .footer-option:last-child {
            margin-right: 0;
        }
        .footer-option a {
            color: #fff;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Welcome to Our Blog</h1>
</div>

<div class="container">
    <div class="login">
        <a href="loginPage.jsp">Login</a>
    </div>
    <div class="blog-container">
        <div class="blog">
            <h2>Blog Post Title 1</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec odio vitae urna placerat feugiat.</p>
            <a href="blog1.html">Read more...</a>
        </div>
        <div class="blog">
            <h2>Blog Post Title 2</h2>
            <p>Integer mollis nisi id arcu commodo tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p>
            <a href="blog2.html">Read more...</a>
        </div>
        <div class="blog">
            <h2>Blog Post Title 3</h2>
            <p>Praesent non luctus tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
            <a href="blog3.html">Read more...</a>
        </div>
        
    </div>
</div>

<div class="footer">
    <div class="footer-options">
        <div class="footer-option"><a href="updateUser.html">Update User</a></div>
        <div class="footer-option"><a href="deleteUser.html">Delete User</a></div>
        <div class="footer-option"><a href="createPost.html">Create Post</a></div>
        <div class="footer-option"><a href="updatePost.html">Update Post</a></div>
        <div class="footer-option"><a href="deletePost.html">Delete Post</a></div>
        <div class="footer-option"><a href="viewPost.html">View Post</a></div>
    </div>
    <p>&copy; 2024 Our Blog. All rights reserved.</p>
</div>

</body>
</html>

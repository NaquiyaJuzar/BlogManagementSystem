<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        input[type="text"], input[type="password"], input[type="submit"] {
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
        .signup {
            text-align: center;
        }
        .signup a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Login</h2>
    <form action="loginPageServlet" method="post">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
        <input type="submit" value="Login">
    </form>
    <div class="signup">
        <p>Don't have an account? <a href="createUser.jsp">Sign up</a></p>
    </div>
</div>

	<script>
    var backgroundImages = [
        "bg1.jpeg",
        'bg2.jpg',
        'bg3.jpg',
        "bg4.jpeg",
        "bg5.jpg",
        "bg6.jpeg",
        "bg7.jpg",
        "bg8.jpg",
        "bg9.jpeg",
        "bg10.jpg",
        "bg11.jpg",
        "bg12.jpg",
        "bg13.jpg",
        "bg14.jpg",
        
    ];

    function changeBackgroundImage() {
        var randomIndex = Math.floor(Math.random() * backgroundImages.length);
        var randomImage = backgroundImages[randomIndex];

        document.body.style.backgroundImage = 'url(' + randomImage + ')';
    }

    setInterval(changeBackgroundImage, 3000); // 1000 milliseconds = 1 second
</script>

</body>
</html>

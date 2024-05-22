<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete User</title>
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
            background-color: #f44336;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #d32f2f;
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
            text-align: center;
            color: #333;
            margin: 0 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Delete User</h2>
    <form action="deleteUserServlet" method="post">
        <label for="userId">User ID</label>
        <input type="text" id="userId" name="userId" required>
        <label for="userId">Password</label>
        <input type="text" id="userId" name="password" required>
        <input type="submit" value="Delete User">
    </form>
</div>

<div class="footer">
    <a href="loginPage.jsp">Login</a>
    <a href="createUser.jsp">Create User</a>
    <a href="updateUser.jsp">Update User</a>
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

    setInterval(changeBackgroundImage, 1000); // 1000 milliseconds = 1 second
</script>

</body>
</html>
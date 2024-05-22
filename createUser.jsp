<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create user</title>
<script>
        $(document).ready(function() {
            $("#createUserForm").submit(function(e) {
                e.preventDefault(); // Prevent the default form submission

                // Retrieve username and password from the form
                var username = $("#username").val();
                var password = $("#password").val();

                // Perform an asynchronous POST request to the servlet
                $.ajax({
                    success: function(response) {
                        // Handle the response from the servlet
                        alert(response); // You can replace this with your logic to display the message
                    },
                    error: function() {
                        alert("An error occurred. Please try again.");
                    }
                });
            });
        });
        
    </script>
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
    <h2>Create Account</h2>
    <form action="BlogManagementServlet" method="post">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
        <input type="submit" value="Create User">
    </form>
</div>

<div class="footer">
    <a href="loginPage.jsp">Login</a>
    <a href="updateUser.jsp">Update User</a>
    <a href="deleteUser.jsp">Delete User</a>
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
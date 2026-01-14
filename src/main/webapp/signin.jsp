<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign In - ElegantWeddings</title>
    <link rel="stylesheet" href="./css/sign in.css"/>
    <!-- Font Awesome for social icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
<div class="container">
    <!-- Left Side: Welcome -->
    <div class="welcome-box">
        <h1>Welcome to ElegantWeddings!</h1>
        <p>Your dream wedding is just a few clicks away. Sign up to start planning your big day.</p>
    </div>

    <!-- Right Side: Login Form -->
    <div class="login-box">
        <h2>Sign In</h2>

        <form action="login" method="POST">
            <div class="input-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email"/>
            </div>

            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" placeholder="********"/>
            </div>

            <button type="submit" class="submit-btn">Log In</button>
        </form>

        <p class="forgot-password"><a href="#">Forgot Password?</a></p>

        <div class="signup-link">
            <p>Don't have an account? <a href="register">Sign up here</a></p>
        </div>

        <div class="social-icons">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-pinterest-p"></i></a>
        </div>
    </div>
</div>

<script src="./js/signin.js"></script>

<jsp:include page="includes/alert.jsp"/>
</body>
</html>
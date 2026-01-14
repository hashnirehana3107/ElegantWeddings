<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up - ElegantWeddings</title>
    <link rel="stylesheet" href="./css/sign up.css">
    <script src="./js/sign up.js" defer></script>
</head>
<body>

<div class="container">
    <!-- Left Side: Welcome -->
    <div class="welcome-box">
        <h1>Welcome to ElegantWeddings!</h1>
        <p>Join our platform and start planning your perfect wedding with ease.</p>
    </div>

    <!-- Right Side: Sign Up Form -->
    <div class="signup-box">
        <h2>Sign Up</h2>

        <form id="signupForm" action="register" method="POST">
            <div class="input-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required/>
            </div>

            <div class="input-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required/>
            </div>

            <div class="input-group">
                <label for="mobile">Mobile Number</label>
                <input type="number" id="mobile" name="mobile" placeholder="Enter your Mobile Number" required/>
            </div>

            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Choose a password" required/>
            </div>

            <div class="input-group">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required/>
            </div>

            <button type="submit" class="submit-btn">Sign Up</button>
        </form>

        <div class="signin-link">
            <p>Already have an account? <a href="login">Login</a></p>
        </div>
    </div>
</div>


<jsp:include page="includes/alert.jsp"/>
</body>
</html>

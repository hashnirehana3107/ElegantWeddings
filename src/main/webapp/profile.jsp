<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    if (!session.getAttribute("role").equals("customer")) {
        response.sendRedirect("login");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="./css/customerDashboard.css">

</head>
<body>
<jsp:include page="includes/customerNavigation.jsp"/>

<!--Main Content-->
<div class="main">

    <!--Personal Information-->
    <center style="padding-top: 10px; padding-bottom: 30px;">
        <h1>Profile</h1>
        <br><br>

        <form action="profile" method="POST"
              style="width: 500px; padding: 40px; background-color: #f9f9f9; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">

            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="hidden" name="userId" value="${user.userId}"/>
                <input type="text" id="name" name="name" placeholder="Enter your full name" value="${user.name}"
                       required/>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" value="${user.email}"
                       required/>
            </div>

            <div class="form-group">
                <label for="mobile">Mobile Number</label>
                <input type="number" id="mobile" name="mobile" placeholder="Enter your Mobile Number"
                       value="${user.mobile}"
                       required/>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Choose a password"
                       value="${user.password}" required/>
            </div>

            <button type="submit" class="save-btn">Update</button>
        </form>

        <form action="deleteProfile" method="POST"
              style="margin-top: 20px; width: 500px; padding: 40px; background-color: #f9f9f9; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">

            <input type="hidden" name="userId" value="${user.userId}"/>


            <button type="submit" class="delete-btn">Delete Profile</button>
        </form>
    </center>

    <script src="./js/customerDashboard.js"></script>
    <jsp:include page="includes/alert.jsp"/>
</body>
</html>

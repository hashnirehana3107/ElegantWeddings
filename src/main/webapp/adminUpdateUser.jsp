<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    if (!session.getAttribute("role").equals("admin")) {
        response.sendRedirect("login");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="./css/adminDash.css">
</head>
<body>

<jsp:include page="includes/adminNavigation.jsp"/>

<!-- Main Content -->
<div class="main">

    <!--Add a Booking-->
    <div id="payment-section" class="payment-methods-container">
        <h1>update User</h1>

        <div class="payment-form">
            <form action="updateUser" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="hidden" name="userId" value="${updatingUser.userId}">
                    <input type="text" id="name" name="name" placeholder="Enter the name" value="${updatingUser.name}" required>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Enter the email" value="${updatingUser.email}"
                           required>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Enter the Password"
                           value="${updatingUser.password}" required>
                </div>

                <div class="form-group">
                    <label for="mobile">Mobile</label>
                    <input type="text" id="mobile" name="mobile" placeholder="Enter the Mobile" value="${updatingUser.mobile}"
                           required>
                </div>


                <div class="form-group">
                    <label for="userRole">User Role</label>
                    <select class="form-select" id="userRole" name="userRole" required>
                        <option value="" selected disabled>Select User Role</option>
                        <option ${updatingUser.role == "1" ? "selected" : "" } value="1">Customer</option>
                        <option ${updatingUser.role == "3" ? "selected" : "" } value="3">Event Manager</option>
                        <option ${updatingUser.role == "4" ? "selected" : "" } value="4">Customer Support Agent</option>
                    </select>
                </div>

                <div class="button-group">
                    <button type="submit" class="create-btn">Update User</button>
                </div>

            </form>
        </div>
    </div>


</div>

<script src="./js/adminDash.js"></script>

<jsp:include page="includes/alert.jsp"/>
</body>
</html>

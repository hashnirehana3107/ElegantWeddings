<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    if (!session.getAttribute("role").equals("customerSupport")) {
        response.sendRedirect("login");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Support Dashboard</title>
    <link rel="stylesheet" href="./css/csrDash.css">
</head>

<body>

<!-- Horizontal Navigation -->
<div class="horizontal-nav">
    <div class="dashboard-title"><i class="fas fa-headset"></i> Customer Support Dashboard</div>

    <a href="logout" class="logout-btn" id="logoutBtn">Logout</a>
</div>

<!-- Vertical Sidebar -->
<div class="sidebar">
    <a href="customerSupport"><i class="fas fa-question-circle"></i> Dashboard</a>
</div>

<!-- Main Dashboard -->
<div class="main">


    <div class="container">

        <div class="card">
            <h2>Reply to Inquiries</h2>

            <form action="replyMessage" method="post" id="eventForm">
                <div class="input-detail">
                    <label>Name</label>
                    <input type="hidden" name="messageId" value="${message.messageId}">
                    <input type="text" value="${message.name}" readonly>
                </div>

                <div class="input-detail">
                    <label>Email</label>
                    <input type="text" value="${message.email}" readonly>
                </div>

                <div class="input-detail">
                    <label>Mobile</label>
                    <input type="text" value="${message.mobile}" readonly>
                </div>

                <div class="input-detail">
                    <label>Date</label>
                    <input type="date" value="${message.date}" readonly>
                </div>

                <div class="input-detail">
                    <label>Inquiry Message</label>
                    <textarea required>${message.message}</textarea>
                </div>


                <div class="input-detail">
                    <label for="reply">Reply Message</label>
                    <textarea name="reply" id="reply" required>${message.reply}</textarea>
                </div>


                <button type="submit" class="btn reply-btn">Reply</button>
            </form>
        </div>

    </div>


    <jsp:include page="includes/alert.jsp"/>
</body>
</html>
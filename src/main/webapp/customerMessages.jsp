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


    <!-- Messages Section -->
    <div id="bookings-section" class="my-bookings-container">
        <h1>My Inquiries</h1>
        <div class="bookings-grid">

            <c:forEach var="message" items="${messages}">

                <div class="booking-card" style="max-width: 500px;">
                    <div class="booking-content"
                         style="display: flex; flex-direction: column; justify-content: start; align-items: start;">
                        <h3>${message.name}</h3>
                        <br>

                        <p><i class="fas fa-check-circle"></i>Name: ${message.name}</p>
                        <p><i class="fas fa-check-circle"></i>Email: ${message.email}</p>
                        <p><i class="fas fa-check-circle"></i>Mobile: ${message.mobile}</p>
                        <p><i class="fas fa-calendar"></i> <fmt:formatDate value="${message.date}"
                                                                           pattern="MMM dd, yyyy"/></p>
                        <p><i class="fas fa-check-circle"></i>Message: ${message.message}</p>
                        <p><i class="fas fa-check-circle"></i>Reply: ${message.reply}</p>
                        <p><i class="fas fa-check-circle"></i>Status:
                            <c:choose>
                                <c:when test="${message.status == '0'}">
                                    <span class="badge badge-warning"
                                          style="color: #b8962e; font-weight: bolder; font-size: 20px;">Pending</span>
                                </c:when>
                                <c:when test="${message.status == '1'}">
                                    <span class="badge badge-success"
                                          style="color: green; font-weight: bolder; font-size: 20px;">Resolved</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge badge-danger">Unknown</span>
                                </c:otherwise>
                            </c:choose>
                        </p>
                    </div>
                </div>


            </c:forEach>

        </div>
    </div>


    <jsp:include page="includes/alert.jsp"/>
</body>
</html>

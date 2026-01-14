<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    if (!session.getAttribute("role").equals("eventManager")) {
        response.sendRedirect("login");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Organizer Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="./css/organizerDash.css">
</head>
<body>
<jsp:include page="includes/eventOrganizerNavigation.jsp"/>

<!-- Main Content -->
<div class="main">

    <!-- Event Creation Form -->
    <section class="form-section">
        <h2>Create a New Event</h2>
        <form action="createEvent" method="post" id="eventForm">
            <div class="input-detail">
                <label for="eventName">Event Name</label>
                <input type="text" id="eventName" name="eventName" placeholder="Enter Event Name" required>
            </div>

            <div class="input-detail">
                <label for="eventDetails">Event Details</label>
                <textarea name="eventDetails" id="eventDetails" required></textarea>
            </div>

            <div class="input-detail">
                <label for="eventDate">Event Date</label>
                <input type="date" id="eventDate" name="date" required>
            </div>

            <div class="input-detail">
                <label for="category">Category</label>
                <select class="form-select" id="category" name="category" required>
                    <option value="" selected disabled>Select Category</option>
                    <option value="Wedding">Wedding</option>
                    <option value="Party">Party</option>
                    <option value="Corporate">Corporate</option>
                    <option value="Birthday">Birthday</option>
                    <option value="Anniversary">Anniversary</option>
                    <option value="Festival">Festival</option>
                    <option value="Concert">Concert</option>
                    <option value="Conference">Conference</option>
                    <option value="Workshop">Workshop</option>
                    <option value="Seminar">Seminar</option>
                    <option value="Webinar">Webinar</option>
                    <option value="Networking">Networking</option>
                </select>
            </div>

            <button type="submit" class="save-btn">Create</button>
        </form>
    </section>
    <!-- Event List Section -->

    <jsp:include page="includes/alert.jsp"/>
</body>
</html>
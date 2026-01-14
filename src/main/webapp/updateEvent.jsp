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
        <h2>update the Event</h2>
        <form action="updateEvent" method="post" id="eventForm">
            <div class="input-detail">
                <label for="eventId">Event Name</label>
                <input type="hidden" id="eventId" name="eventId" value="${event.eventId}">
                <input type="text" id="eventName" name="eventName" placeholder="Enter Event Name"
                       value="${event.eventName}" required>
            </div>

            <div class="input-detail">
                <label for="eventDetails">Event Details</label>
                <textarea name="eventDetails" id="eventDetails" required>${event.eventDetails}</textarea>
            </div>

            <div class="input-detail">
                <label for="eventDate">Event Date</label>
                <input type="date" id="eventDate" name="date" value="${event.date}" required>
            </div>

            <div class="input-detail">
                <label for="category">Category</label>
                <select class="form-select" id="category" name="category" required>
                    <option value="" selected disabled>Select Category</option>
                    <option ${event.category == "Wedding"? "selected" : "" } value="Wedding">Wedding
                    </option>
                    <option ${event.category == "Party"? "selected" : "" } value="Party">Party</option>
                    <option ${event.category == "Corporate"? "selected" : "" } value="Corporate">
                        Corporate
                    </option>
                    <option ${event.category == "Birthday"? "selected" : "" } value="Birthday">
                        Birthday
                    </option>
                    <option ${event.category == "Anniversary"? "selected" : "" } value="Anniversary">
                        Anniversary
                    </option>
                    <option ${event.category == "Festival"? "selected" : "" } value="Festival">
                        Festival
                    </option>
                    <option ${event.category == "Concert"? "selected" : "" } value="Concert">Concert
                    </option>
                    <option ${event.category == "Conference"? "selected" : "" } value="Conference">
                        Conference
                    </option>
                    <option ${event.category == "Workshop"? "selected" : "" } value="Workshop">
                        Workshop
                    </option>
                    <option ${event.category == "Seminar"? "selected" : "" } value="Seminar">Seminar
                    </option>
                    <option ${event.category == "Webinar"? "selected" : "" } value="Webinar">Webinar
                    </option>
                    <option ${event.category == "Networking"? "selected" : "" } value="Networking">
                        Networking
                    </option>
                </select>
            </div>

            <button type="submit" class="save-btn">Update</button>
        </form>
    </section>
    <!-- Event List Section -->

    <jsp:include page="includes/alert.jsp"/>
</body>
</html>
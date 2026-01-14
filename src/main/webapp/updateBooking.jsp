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

    <!--Update Booking-->
    <div id="payment-section" class="payment-methods-container">
        <h1>Update the Booking</h1>

        <div class="payment-form">
            <form action="updateBooking" method="post">

                <input type="hidden" name="bookingId" value="${booking.bookingId}">
                <div class="form-group">
                    <label for="eventName">Event Name</label>
                    <input type="text" id="eventName" name="eventName" placeholder="Enter Event Name" value="${booking.eventName}" required>
                </div>
                <div class="form-group">
                    <label for="eventDetails">Event Details</label>
                    <textarea cols="10" name="eventDetails" id="eventDetails" required>${booking.eventDetails}</textarea>
                </div>

                <div class="form-group">
                    <label for="eventDate">Event Date</label>
                    <input type="date" id="eventDate" name="date" value="${booking.date}" required>
                </div>

                <div class="form-group">
                    <label for="category">Category</label>
                    <select class="form-select" id="category" name="category" required>
                        <option value="" selected disabled>Select Category</option>
                        <option ${booking.category == "Wedding"? "selected" : "" } value="Wedding">Wedding
                        </option>
                        <option ${booking.category == "Party"? "selected" : "" } value="Party">Party</option>
                        <option ${booking.category == "Corporate"? "selected" : "" } value="Corporate">
                            Corporate
                        </option>
                        <option ${booking.category == "Birthday"? "selected" : "" } value="Birthday">
                            Birthday
                        </option>
                        <option ${booking.category == "Anniversary"? "selected" : "" } value="Anniversary">
                            Anniversary
                        </option>
                        <option ${booking.category == "Festival"? "selected" : "" } value="Festival">
                            Festival
                        </option>
                        <option ${booking.category == "Concert"? "selected" : "" } value="Concert">Concert
                        </option>
                        <option ${booking.category == "Conference"? "selected" : "" } value="Conference">
                            Conference
                        </option>
                        <option ${booking.category == "Workshop"? "selected" : "" } value="Workshop">
                            Workshop
                        </option>
                        <option ${booking.category == "Seminar"? "selected" : "" } value="Seminar">Seminar
                        </option>
                        <option ${booking.category == "Webinar"? "selected" : "" } value="Webinar">Webinar
                        </option>
                        <option ${booking.category == "Networking"? "selected" : "" } value="Networking">
                            Networking
                        </option>
                    </select>
                </div>

                <div class="button-group">
                    <button type="submit" class="save-btn">Update Booking</button>
                </div>

            </form>
        </div>
    </div>


    <jsp:include page="includes/alert.jsp"/>
</body>
</html>

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
    <header>
        <h1>Welcome, ${sessionScope.user.name}</h1>
    </header>

    <!-- Event Table -->
    <section class="table-section">
        <h2>Manage Existing Bookings</h2>
        <div class="table-wrapper">
            <table id="eventTable">
                <thead>
                <tr>
                    <th>Booking Id</th>
                    <th>Booking Name</th>
                    <th>Booking Details</th>
                    <th>Booking Date</th>
                    <th>Booking Category</th>
                    <th>Status</th>
                    <th>Customer Id</th>
                    <th>Customer Name</th>
                    <th>Customer Email</th>
                    <th>Customer Mobile</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="booking" items="${bookings}">
                    <tr>
                        <td>${booking.bookingId}</td>
                        <td>${booking.eventName}</td>
                        <td>${booking.eventDetails}</td>
                        <td><fmt:formatDate value="${booking.date}"
                                            pattern="MMM dd, yyyy"/></td>
                        <td>${booking.category}</td>
                        <td>
                            <c:choose>
                                <c:when test="${booking.status == '0'}">
                                    <span class="badge badge-warning"
                                          style="color: #b8962e; font-weight: bolder; font-size: 20px;">Pending</span>
                                </c:when>
                                <c:when test="${booking.status == '1'}">
                                    <span class="badge badge-success"
                                          style="color: green; font-weight: bolder; font-size: 20px;">Approved</span>
                                </c:when>
                                <c:when test="${booking.status == '2'}">
                                    <span class="badge badge-warning"
                                          style="color: red; font-weight: bolder; font-size: 20px;">Declined</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge badge-danger">Unknown</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>${booking.customerId}</td>
                        <td>${booking.customerName}</td>
                        <td>${booking.customerEmail}</td>
                        <td>${booking.customerPhone}</td>
                        <td>
                            <c:choose>
                                <c:when test="${booking.status == '0' || booking.status == '2'}">
                                    <a href="updateBookingStatus?bookingId=${booking.bookingId}&status=1"
                                       class="edit-btn">Approve</a>
                                </c:when>
                                <c:when test="${booking.status == '1'}">
                                    <a href="updateBookingStatus?bookingId=${booking.bookingId}&status=2"
                                       class="delete-btn">Decline</a>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge badge-danger">Declined</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </section>

    <!-- Event Table -->
    <section class="table-section">
        <h2>Manage Existing Events</h2>
        <div class="table-wrapper">
            <table id="eventTable">
                <thead>
                <tr>
                    <th>Event Id</th>
                    <th>Event Name</th>
                    <th>Event Details</th>
                    <th>Event Date</th>
                    <th>Event Category</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="event" items="${events}">
                    <tr>
                        <td>${event.eventId}</td>
                        <td>${event.eventName}</td>
                        <td>${event.eventDetails}</td>
                        <td><fmt:formatDate value="${event.date}"
                                            pattern="MMM dd, yyyy"/></td>
                        <td>${event.category}</td>
                        <td>
                            <a href="updateEvent?eventId=${event.eventId}" class="edit-btn">Edit</a>
                            <button class="delete-btn" onclick="openDeleteModal(${event.eventId});">Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </section>

    <!-- Confirmation Modal -->
    <div id="confirmModal" class="modal">
        <div class="modal-content">
            <h2>Confirm Delete</h2>
            <p>Are you sure you want to delete this event ? Event ID: <span id="eventIdSpan"></span></p>
            <div class="modal-buttons">

                <form action="deleteEvent" method="post">
                    <input type="hidden" id="eventId" name="eventId">

                    <button class="delete-btn">Delete</button>
                </form>
                <button id="cancelDelete" class="cancel-btn">Cancel</button>
            </div>
        </div>
    </div>

    <script>

        // Delete modal functionality
        function openDeleteModal(eventId) {
            // Set the stockId value in the hidden input
            document.getElementById('eventId').value = eventId;
            document.getElementById('eventIdSpan').innerHTML = eventId;
            // Show the modal
            showConfirmModal();
        }


        function showConfirmModal() {
            const confirmModal = document.getElementById('confirmModal');
            confirmModal.style.display = 'block';
        }

        function hideConfirmModal() {
            const confirmModal = document.getElementById('confirmModal');
            confirmModal.style.display = 'none';
        }

        // Event listeners for close buttons
        document.getElementById('cancelDelete').addEventListener('click', hideConfirmModal);

        // Close modals when clicking outside
        window.addEventListener('click', function (event) {
            const confirmModal = document.getElementById('confirmModal');

            if (event.target === confirmModal) {
                hideConfirmModal();
            }
        });
    </script>

    <script src="./js/organizerDash.js"></script>
    <jsp:include page="includes/alert.jsp"/>
</body>
</html>
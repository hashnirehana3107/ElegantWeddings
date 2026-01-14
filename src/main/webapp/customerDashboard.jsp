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

    <!--Profile section-->
    <div id="profile-section" class="profile-container">
        <div class="profile-info">
            <div class="profile-pic">
                <img src="https://static.vecteezy.com/system/resources/previews/005/544/718/non_2x/profile-icon-design-free-vector.jpg"
                     alt="User Profile Picture">
            </div>
            <div class="profile-details">
                <h2>${user.name}</h2>
                <span class="membership-status">Premium Member</span>
                <p>Email : ${user.email}</p>
                <p>Mobile : ${user.mobile}</p>
            </div>
        </div>
    </div>

    <!-- My Bookings Section -->
    <div id="bookings-section" class="my-bookings-container">
        <h1>My Bookings</h1>
        <p>Review and manage your event bookings</p>
        <div class="bookings-grid">

            <c:forEach var="booking" items="${bookings}">

                <div class="booking-card" style="max-width: 500px;">
                    <div class="booking-content"
                         style="display: flex; flex-direction: column; justify-content: start; align-items: start;">
                        <h3>${booking.eventName}</h3>
                        <br>

                        <p><i class="fas fa-calendar"></i> <fmt:formatDate value="${booking.date}"
                                                                           pattern="MMM dd, yyyy"/></p>
                        <p><i class="fas fa-check-circle"></i>Event Details: ${booking.eventDetails}</p>
                        <p><i class="fas fa-check-circle"></i>Event Category: ${booking.category}</p>
                        <p><i class="fas fa-check-circle"></i>Status:
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
                                    <span class="badge badge-success"
                                          style="color: red; font-weight: bolder; font-size: 20px;">Declined</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge badge-danger">Unknown</span>
                                </c:otherwise>
                            </c:choose>
                        </p>

                        <a href="updateBooking?bookingId=${booking.bookingId}" class="view-details-btn">
                            <i class="fas fa-eye"></i> Edit
                        </a>

                        <br>
                        <button class="delete-btn" onclick="openDeleteModal(${booking.bookingId});">Delete</button>
                    </div>
                </div>


            </c:forEach>

        </div>
    </div>

    <!-- Booking Details Modal -->
    <div class="modal-overlay" id="modal-overlay"></div>
    <div class="booking-details-modal" id="booking-details-modal">
        <div class="modal-content">
            <div class="modal-header">
                <h3 id="modal-title"></h3>
                <button class="close-btn" onclick="closeModal()">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <div class="modal-body">
                <p id="modal-date"></p>
                <p id="modal-status"></p>
            </div>
        </div>
    </div>

    <!--Add a Booking-->
    <div id="payment-section" class="payment-methods-container">
        <h1>Add a Booking</h1>

        <div class="payment-form">
            <form action="createBooking" method="post">
                <input type="hidden" name="customerId" value="${user.userId}">
                <div class="form-group">
                    <label for="eventName">Event Name</label>
                    <input type="text" id="eventName" name="eventName" placeholder="Enter Event Name" required>
                </div>
                <div class="form-group">
                    <label for="eventDetails">Event Details</label>
                    <textarea cols="10" name="eventDetails" id="eventDetails" required></textarea>
                </div>

                <div class="form-group">
                    <label for="eventDate">Event Date</label>
                    <input type="date" id="eventDate" name="date" required>
                </div>

                <div class="form-group">
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

                <div class="button-group">
                    <button type="submit" class="save-btn">Add Booking</button>
                </div>

            </form>
        </div>
    </div>


    <!-- Confirmation Modal -->
    <div id="confirmModal" class="modal">
        <div class="modal-content" style="color: #0e0710;">
            <h2>Confirm Delete</h2>
            <p style="color: #0e0710;">Are you sure you want to delete this Booking ? Booking ID: <span
                    id="bookingIdSpan"></span></p>
            <div class="modal-buttons">

                <form action="deleteBooking" method="post">
                    <input type="hidden" id="bookingId" name="bookingId">

                    <button class="delete-btn">Delete</button>
                </form>
                <button id="cancelDelete" style="background-color: gray;" class="cancel-btn">Cancel</button>
            </div>
        </div>
    </div>

    <script>

        // Delete modal functionality
        function openDeleteModal(bookingId) {
            // Set the stockId value in the hidden input
            document.getElementById('bookingId').value = bookingId;
            document.getElementById('bookingIdSpan').innerHTML = bookingId;
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

    <jsp:include page="includes/alert.jsp"/>
</body>
</html>

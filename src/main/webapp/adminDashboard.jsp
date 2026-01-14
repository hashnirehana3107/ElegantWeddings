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
    <!-- Profile section -->
    <div id="profile-section" class="profile-container">
        <div class="profile-info">
            <div class="profile-pic">
                <img src="https://static.vecteezy.com/system/resources/previews/005/544/718/non_2x/profile-icon-design-free-vector.jpg"
                     alt="Admin Profile Picture">
            </div>
            <div class="profile-details">
                <h2>${user.name}</h2>
                <span class="membership-status">System Administrator</span>
                <p>Email: ${user.name}</p>
                <p>Mobile: ${user.mobile}</p>
            </div>
        </div>
        <a href="logout" id="logout-button">Logout</a>
    </div>

    <!-- Customer Section -->
    <section id="customer-details">
        <div class="section-header">
            <h2>Customer Details</h2>
        </div>
        <div class="table-wrapper">
            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="customer" items="${customers}">
                    <tr>
                        <td>${customer.userId}</td>
                        <td>${customer.name}</td>
                        <td>${customer.email}</td>
                        <td>${customer.mobile}</td>
                        <td>
                            <a href="updateUser?updatingUserId=${customer.userId}" class="update-btn">Edit</a>
                            <button class="delete-btn" onclick="openDeleteModal(${customer.userId});">Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </section>

    <!-- Organizer Section -->
    <section id="customer-details">
        <div class="section-header">
            <h2>Event Managers</h2>
        </div>
        <div class="table-wrapper">
            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="eventManager" items="${eventManagers}">
                    <tr>
                        <td>${eventManager.userId}</td>
                        <td>${eventManager.name}</td>
                        <td>${eventManager.email}</td>
                        <td>${eventManager.mobile}</td>
                        <td>
                            <a href="updateUser?updatingUserId=${eventManager.userId}" class="update-btn">Edit</a>
                            <button class="delete-btn" onclick="openDeleteModal(${eventManager.userId});">Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </section>

    <!-- Customer Support Section -->
    <section id="customer-details">
        <div class="section-header">
            <h2>Customer Support Agents</h2>
        </div>
        <div class="table-wrapper">
            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="customerSupport" items="${customerSupports}">
                    <tr>
                        <td>${customerSupport.userId}</td>
                        <td>${customerSupport.name}</td>
                        <td>${customerSupport.email}</td>
                        <td>${customerSupport.mobile}</td>
                        <td>
                            <a href="updateUser?updatingUserId=${customerSupport.userId}" class="update-btn">Edit</a>
                            <button class="delete-btn" onclick="openDeleteModal(${customerSupport.userId});">Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </section>

</div>

<!-- Confirmation Modal -->
<div id="confirmModal" class="modal">
    <div class="modal-content" style="color: #0e0710;">
        <h2>Confirm Delete</h2>
        <p style="color: #0e0710;">Are you sure you want to delete this User ? User ID: <span
                id="userIdSpan"></span></p>
        <div class="modal-buttons">

            <form action="deleteUser" method="post">
                <input type="hidden" id="userId" name="userID">

                <button class="delete-btn">Delete</button>
            </form>
            <button id="cancelDelete" style="background-color: gray;" class="update-btn">Cancel</button>
        </div>
    </div>
</div>

<script>

    // Delete modal functionality
    function openDeleteModal(userId) {
        // Set the stockId value in the hidden input
        document.getElementById('userId').value = userId;
        document.getElementById('userIdSpan').innerHTML = userId;
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

<script src="./js/adminDash.js"></script>

<jsp:include page="includes/alert.jsp"/>
</body>
</html>

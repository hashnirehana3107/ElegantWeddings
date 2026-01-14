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

    <!-- Welcome Box -->
    <section class="welcome-box">
        <img src="https://static.vecteezy.com/system/resources/previews/005/544/718/non_2x/profile-icon-design-free-vector.jpg"
             alt="CSR Icon">
        <div>
            <h2>Welcome, ${user.name}</h2>
            <p>Customer Service Representative</p>
            <p>Email: ${user.email}</p>
            <p>Monile: ${user.mobile}</p>
        </div>
    </section>


    <div class="container">

        <div class="card">
            <h2>Customer Inquiries</h2>
            <table id="inquiries-table">
                <thead>
                <tr>
                    <th>Message Id</th>
                    <th>Customer Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Date Recieved</th>
                    <th>Status</th>
                    <th>Reply</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="message" items="${messages}">
                    <tr>
                        <td>${message.messageId}</td>
                        <td>${message.customerId}</td>
                        <td>${message.name}</td>
                        <td>${message.email}</td>
                        <td>
                            <fmt:formatDate value="${message.date}" pattern="yyyy-MM-dd"/>
                        </td>
                        <td>
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
                        </td>
                        <td>
                            <a href="replyMessage?messageId=${message.messageId}" class="btn reply-btn">Reply</a>
                        </td>
                        <td>
                            <button class="btn archive-btn" style="background-color: red;"
                                    onclick="openDeleteModal(${message.messageId});">Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>

    <!-- Confirmation Modal -->
    <div id="confirmModal" class="modal">
        <div class="modal-content">
            <h2>Confirm Delete</h2>
            <h2 style="color: #0d47a1;">Are you sure you want to delete this message ? Message ID: <span
                    id="messageIdSpan"></span></h2>
            <p style="color: red;">This action cannot be undone.</p>
            <div class="modal-buttons">

                <form action="deleteMessage" method="post">
                    <input type="hidden" id="messageId" name="messageId">

                    <button class="btn archive-btn" style="background-color: red;">Delete</button>
                </form>
                <button id="cancelDelete" class="btn reply-btn" style="background-color: gray;">Cancel</button>
            </div>
        </div>
    </div>

    <script>

        // Delete modal functionality
        function openDeleteModal(messageId) {
            // Set the stockId value in the hidden input
            document.getElementById('messageId').value = messageId;
            document.getElementById('messageIdSpan').innerHTML = messageId;
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    if (!session.getAttribute("role").equals("customer")) {
        response.sendRedirect("login");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Elegant Wedding Planner</title>
    <link rel="stylesheet" href="./css/headerFooter.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Montserrat:wght@300;400;500;600&family=Playfair+Display:wght@400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="./css/contactUs.css">
</head>

<body>
<!-- Header -->
<div id="full-page-overlay"></div>
<header>
    <jsp:include page="includes/topNavbar.jsp"/>


    <div class="main-header">
        <div class="container">
            <div class="logo">
                <h1>Elegant<span>Weddings</span></h1>
                <div class="logo-divider">
                    <i class="fas fa-heart"></i>
                </div>

            </div>

            <jsp:include page="includes/homeNavbar.jsp"/>
        </div>
</header>

<!-- Main Content Area -->

<div class="contact-container">
    <!-- Left Side: Image -->
    <div class="contact-image">
        <img src="https://img.freepik.com/free-photo/princess-prince-digital-art_23-2151610479.jpg?t=st=1741947298~exp=1741950898~hmac=874f506e122ac10fc44ead992433c3479dd063ff77f091d98021cc9d130d59a5&w=996"
             alt="Wedding Couple">
    </div>

    <!-- Right Side: Form -->
    <div class="contact-form">
        <h2>Contact Us</h2>
        <p>We would love to hear from you! Whether you want to book a consultation or ask a question, send us a
            message.</p>

        <form action="contactUs" method="post">
            <label for="your-name">Your Full Name *</label>
            <input type="text" id="your-name" name="name" required>

            <label for="email">E-mail Address *</label>
            <input type="email" id="email" name="email" required>

            <label for="phone">Phone Number *</label>
            <input type="tel" id="phone" name="mobile" required>

            <label for="message">Tell us about your inquiry</label>
            <textarea id="message" name="message" rows="4" required></textarea>

            <button type="submit">SEND MESSAGE</button>
        </form>
    </div>
</div>


<!-- Footer -->
<footer class="footer">
    <div class="footer-top">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-section">
                    <h3>About Us</h3>
                    <div class="footer-logo">
                        <h2>Elegant<span>Weddings</span></h2>
                    </div>

                    <div class="footer-social">
                        <a href="https://www.facebook.com/" target="_blank">
                            <i class="fab fa-facebook-f"></i></a>
                        <a href="https://www.instagram.com/" target="_blank">
                            <i class="fab fa-instagram"></i></a>
                        <a href="https://www.pinterest.com/" target="_blank">
                            <i class="fab fa-pinterest"></i></a>
                        <a href="https://www.youtube.com/" target="_blank">
                            <i class="fab fa-youtube"></i></a>
                    </div>
                </div>

                <div class="footer-section">
                    <h3>Our Services</h3>
                    <ul class="footer-links">
                        <li><a href="venue.jsp"><i class="fas fa-angle-right"></i> Venue Selection</a></li>
                        <li><a href="invitation.jsp"><i class="fas fa-angle-right"></i> Invitation Card </a></li>
                        <li><a href="entertainment.jsp"><i class="fas fa-angle-right"></i> Entertainment </a></li>
                        <li><a href="catering.jsp"><i class="fas fa-angle-right"></i> Catering </a></li>
                        <li><a href="photos.jsp"><i class="fas fa-angle-right"></i> Photos & Videos</a></li>
                        <li><a href="decorations.jsp"><i class="fas fa-angle-right"></i> Decorations</a></li>

                    </ul>
                </div>

                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="gallery.jsp"><i class="fas fa-angle-right"></i> Gallery </a></li>
                        <li><a href="price.jsp"><i class="fas fa-angle-right"></i> Price</a></li>
                        <li><a href="FAQ.jsp"><i class="fas fa-angle-right"></i> FAQs</a></li>
                        <li><a href="event.jsp"><i class="fas fa-angle-right"></i> Events</a></li>
                        <li><a href="contactUs.jsp"><i class="fas fa-angle-right"></i> Contact Us</a></li>
                        <li><a href="review.jsp"><i class="fas fa-angle-right"></i> Reviews</a></li>
                    </ul>
                </div>

                <div class="footer-section">
                    <h3>Newsletter</h3>
                    <p>Subscribe to our newsletter for wedding tips and special offers!</p>
                    <form class="newsletter-form">
                        <div class="input-group">
                            <input type="email" placeholder="Your Email Address">
                            <button type="submit"><i class="fas fa-paper-plane"></i></button>
                        </div>
                    </form>
                    <div class="contact-info">
                        <p><i class="fas fa-phone"></i> +1 (234) 567-890</p>
                        <p><i class="fas fa-envelope"></i> info@elegantweddings.com</p>
                        <p><i class="fas fa-map-marker-alt"></i> 123 Wedding Street, NY 10001</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">

            <p>&copy; 2025 ElegantWeddings. All rights reserved.</p>

        </div>
    </div>
</footer>

<jsp:include page="includes/alert.jsp"/>
</body>
</html>
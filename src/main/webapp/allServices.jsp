<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="./css/all services.css">
</head>

<body>
<jsp:include page="includes/header.jsp"/>

<!-- Main Content Area -->
<!-- Services Section -->

<h1 class="services-title">Our Premium Services</h1>

<section class="services">
    <a href="venue.jsp">
        <div class="service-item">
            <div class="icon">
                <img src="https://cdn-icons-png.freepik.com/256/9378/9378479.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                     alt="Venue Selection" width="150px" height="150px"/>
            </div>
            <h3>Venue Selection</h3>
            <p>Make your event unforgettable with the perfect venue.</p>
        </div>
    </a>

    <a href="invitation.jsp">
        <div class="service-item">
            <div class="icon">
                <img src="https://cdn-icons-png.freepik.com/256/15006/15006410.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                     alt="Invitation Card" width="150px" height="150px"/>
            </div>
            <h3>Invitation Cards</h3>
            <p>Personalized invites for your special occasion.</p>
        </div>
    </a>

    <a href="entertainment.jsp">
        <div class="service-item">
            <div class="icon">
                <img src="https://cdn-icons-png.freepik.com/256/3918/3918225.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                     alt="Entertainment" width="150px" height="150px"/>
            </div>
            <h3>Entertainment</h3>
            <p>Engage your guests with high-quality entertainment.</p>
        </div>
    </a>

    <a href="catering.jsp">
        <div class="service-item">
            <div class="icon">
                <img src="https://cdn-icons-png.freepik.com/256/15242/15242348.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                     alt="Catering" width="150px" height="150px"/>
            </div>
            <h3>Catering</h3>
            <p>Delicious meals tailored to your event.</p>
        </div>
    </a>

    <!-- Centered Services -->
    <a href="photos.jsp">
        <div class="service-item centered">
            <div class="icon">
                <img src="https://cdn-icons-png.freepik.com/256/1293/1293648.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                     alt="Photos & Videos" width="150px" height="150px"/>
            </div>
            <h3>Photos & Videos</h3>
            <p>Capture every moment with professional photography and video.</p>
        </div>
    </a>

    <a href="decorations.jsp">
        <div class="service-item centered">
            <div class="icon">
                <img src="https://cdn-icons-png.freepik.com/256/15252/15252847.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                     alt="Decorations" width="150px" height="150px"/>
            </div>
            <h3>Decorations</h3>
            <p>Transform your space with elegant decorations.</p>
        </div>

    </a>
</section>


<!-- Footer -->
<footer class="footer">
    <div class="footer-top">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-section">
                    <h3>Social Media</h3>
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
                        <li><a href="birthday.jsp"><i class="fas fa-angle-right"></i> Birthday</a></li>
                        <li><a href="anniversary.jsp"><i class="fas fa-angle-right"></i> Anniversary</a></li>
                    </ul>
                </div>

                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="gallery.jsp"><i class="fas fa-angle-right"></i> Gallery </a></li>
                        <li><a href="price.jsp"><i class="fas fa-angle-right"></i> Price</a></li>
                        <li><a href="FAQ.jsp"><i class="fas fa-angle-right"></i> FAQs</a></li>
                        <li><a href="review.jsp"><i class="fas fa-angle-right"></i> Review</a></li>
                        <li><a href="contactUs.jsp"><i class="fas fa-angle-right"></i> Contact Us</a></li>
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
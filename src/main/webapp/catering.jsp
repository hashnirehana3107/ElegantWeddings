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
    <link rel="stylesheet" href="./css/catering.css">
</head>

<body>
<jsp:include page="includes/header.jsp"/>
<div class="service-page">
    <section class="service-header">
        <div class="service-image">

        </div>
        <div class="service-details">
            <p class="service-type">Catering Services</p><br>
            <h1 class="service-name">Exquisite Catering for Weddings, Birthdays & Anniversaries</h1><br>
            <p class="service-description">
                Enjoy a delightful dining experience with our premium catering services.
                Choose from a variety of menu options tailored for weddings, birthdays,
                and anniversaries. Book now to make your event special!
            </p>
        </div>
    </section>

    <section class="preparation-guidelines">
        <h2>Our Catering Packages</h2> <br>
        <div class="venue-container">
            <div class="venue-card">
                <img src="https://img.freepik.com/free-photo/variety-premade-meals-supermarket-deli_60438-4016.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                     alt="Classic Buffet">
                <h3>Classic Buffet</h3>
                <p>A traditional buffet with a variety of appetizers, main courses, and desserts.</p>
                <p><strong>Price: $30 per person</strong></p>
                <p class="price">$3000</p>
                <button class="cart-btn" onclick="addToCart('Classic Buffet', 3000)">Add to Cart</button>
            </div>
            <div class="venue-card">
                <img src="https://img.freepik.com/free-photo/close-up-set-table-classic-style_8353-9916.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                     alt="Premium Banquet">
                <h3>Premium Banquet</h3>
                <p>Luxurious gourmet dishes with professional table service.</p>
                <p><strong>Price: $50 per person</strong></p>
                <p class="price">$5000</p>
                <button class="cart-btn" onclick="addToCart('Premium Banquet', 5000)">Add to Cart</button>
            </div>
            <div class="venue-card">
                <img src="https://img.freepik.com/free-photo/wide-selection-apetizers-including-olive-cheese-salad-varieties_114579-1543.jpg?ga=GA1.1.1076691303.1741879013"
                     alt="Vegan & Healthy">
                <h3>Vegan & Healthy</h3>
                <p>Delicious plant-based dishes for a healthy and eco-friendly event.</p>
                <p><strong>Price: $35 per person</strong></p>
                <p class="price">$3500</p>
                <button class="cart-btn" onclick="addToCart('Luxury Rooftop', 3500)">Add to Cart</button>
            </div>
            <div class="venue-card">
                <img src="https://img.freepik.com/premium-photo/high-angle-view-cake-table_1048944-16345016.jpg?ga=GA1.1.1076691303.1741879013"
                     alt="Dessert Delight">
                <h3>Dessert Delight</h3>
                <p>An exquisite selection of cakes, pastries, and sweets.</p>
                <p><strong>Price: $20 per person</strong></p>
                <p class="price">$2000</p>
                <button class="cart-btn" onclick="addToCart('Dessert Delight', 2000)">Add to Cart</button>
            </div>

        </div>
    </section>

    <section class="service-terms">
        <h2>Service Terms</h2>
        <p>
            <br>
            Our catering services include professional chefs and servers. Menu customization is available.
            Please confirm your order at least 7 days before the event. Contact our support team for assistance.
        </p>
    </section>
</div>

<script>
    function addToCart(serviceName, price) {
        let cart = JSON.parse(localStorage.getItem("cart")) || [];
        cart.push({name: serviceName, price: price});
        localStorage.setItem("cart", JSON.stringify(cart));
        alert(serviceName + " has been added to your cart!");
    }
</script>


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
                        <li><a href="review..jsp"><i class="fas fa-angle-right"></i> Reviews</a></li>
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
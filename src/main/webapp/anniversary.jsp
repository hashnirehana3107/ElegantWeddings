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
    <link rel="stylesheet" href="./css/annivesary.css">
</head>
<body>
<jsp:include page="includes/header.jsp"/>
<main>
    <h1> Anniversary</h1>

    <section id="a-service">
        <h2>Entertainment</h2>
        <p>Choose from live bands, DJs, or performers to keep your guests entertained throughout the anniversary
            celebration.</p>
        <img src="https://img.freepik.com/premium-photo/night-party-decoration_926199-2309194.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Jazz Band">
        <img src="https://img.freepik.com/premium-photo/corporate-banquet-with-russian-folk-style-fairy-tale-charm_1279815-295048.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Jazz Band"><br>
        <a href="entertainment.jsp">
            <button>Select</button>
        </a>
    </section>

    <section id="a-service">
        <h2>Photos & Videos</h2>
        <p>Capture your special moments with our professional photography and videography services.</p>
        <img src="https://img.freepik.com/free-photo/portrait-attractive-young-couple-club-with-air-balloon_132075-7544.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Jazz Band">
        <img src="https://img.freepik.com/premium-photo/birthday-cake-with-candles-top-it_198067-394080.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Jazz Band"><br>
        <a href="photos.jsp">
            <button>Select</button>
        </a>
    </section>

    <section id="a-service">
        <h2>Catering</h2>
        <p>We offer a variety of cuisines and customized menus prepared by top chefs to suit your anniversary
            celebration theme.</p>
        <img src="https://img.freepik.com/free-photo/horizontal-shot-candy-buffet-restaurant-table-full-delicious-desserts-cakes-cheesecakes-creamy-sweets-party-festive-gathering-cafe-confectionery-celebration_7502-5848.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Jazz Band">
        <img src="https://img.freepik.com/free-photo/close-up-people-serving-themselves-fruits-buffet-restaurant_8353-9872.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Jazz Band"><br>
        <a href="catering.jsp">
            <button>Select</button>
        </a>
    </section>

    <section id="a-service">
        <h2>Invitation Cards</h2>
        <p>Personalized and beautifully designed anniversary invitations to match your theme.</p>
        <img src="https://img.freepik.com/free-vector/25-years-anniversary-stationery-collection_23-2148793715.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Jazz Band">
        <img src="https://img.freepik.com/premium-photo/giveaway-anniversary-contest-invitation-social-media-banner-template_1199132-2735.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Jazz Band"><br>
        <a href="invitation.jsp">
            <button>Select</button>
        </a>
    </section>

    <section id="a-service">
        <h2>Venue Selection</h2>
        <p>We help you find the perfect venue, from intimate garden settings to luxurious ballrooms.</p>
        <img src="https://img.freepik.com/free-photo/decorations-made-chrysanthemums-threads-stand-along-glance-path-dark-hall_1304-3398.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Jazz Band">
        <img src="https://img.freepik.com/free-photo/beautiful-christmas-interior-decoration_181624-32496.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Jazz Band"><br>
        <a href="venue.jsp">
            <button>Select</button>
        </a>
    </section>

    <section id="a-service">
        <h2>Decorations</h2>
        <p>Personalized and exquisitely designed anniversary decorations to perfectly complement your theme.</p>
        <img src="https://img.freepik.com/free-photo/beautiful-table-arrangement-with-flowers_23-2149636928.jpg?t=st=1742388755~exp=1742392355~hmac=659613345e8dc644eae0fc29d5155147bdf1cde6e0a224fce9a14d16e5a4f9c9&w=900"
             alt="Jazz Band">
        <img src="https://img.freepik.com/premium-photo/decorated-hall-preparing-party_236836-19553.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Jazz Band"><br>
        <a href="decorations.jsp">
            <button>Select</button>
        </a>
    </section>
</main>


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
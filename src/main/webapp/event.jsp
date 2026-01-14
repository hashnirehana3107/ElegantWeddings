<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
    <link rel="stylesheet" href="./css/event.css">
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

<main>
    <section class="event">
        <img src="https://cdn-icons-png.freepik.com/256/6491/6491137.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Wedding Event">
        <div class="event-content">
            <h2>Wedding Events</h2>
            <p>Experience a dream wedding with our expert planning, beautiful decorations, and seamless execution.</p>
            <a href="wedding.jsp">
                <button>View More</button>
            </a>
        </div>
    </section>

    <section class="event">
        <img src="https://cdn-icons-png.freepik.com/256/6794/6794503.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Birthday Event">
        <div class="event-content">
            <h2>Birthday Parties</h2>
            <p>Celebrate your birthday in style with custom themes, entertainment, and delicious catering.</p>
            <a href="birthday.jsp">
                <button>View More</button>
            </a>
        </div>
    </section>

    <section class="event">
        <img src="https://cdn-icons-png.freepik.com/256/11791/11791599.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Anniversary Event">
        <div class="event-content">
            <h2>Anniversary Celebrations</h2>
            <p>Make your anniversary unforgettable with elegant decor, romantic settings, and special moments.</p>
            <a href="anniversary.jsp">
                <button>View More</button>
            </a>
        </div>
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
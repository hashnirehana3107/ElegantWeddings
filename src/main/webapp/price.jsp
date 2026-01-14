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
    <link rel="stylesheet" href="./css/price.css">
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

<section class="pricing-section1">
    <h2>&nbsp;</h2>
    <h1 class="section-title">Our Wedding Packages</h1>
    <div class="price-cards">
        <div class="card basic-package">
            <h2>Basic Package</h2>
            <p class="price">$2,500</p>
            <ul>
                <li><i class="fas fa-home"></i> Venue Selection</li>
                <li><i class="fas fa-gift"></i> Basic Decorations</li>
                <li><i class="fas fa-camera"></i> Photography</li>
            </ul>

            <button class="btn" onclick="addToCart('Basic Package', 2500)">Add to Cart</button>
        </div>

        <div class="card standard-package">
            <h2>Standard Package</h2>
            <p class="price">$3,000</p>
            <ul>
                <li><i class="fas fa-check-circle"></i> Everything in Basic</li>
                <li><i class="fas fa-utensils"></i> Catering Services</li>
                <li><i class="fas fa-music"></i> Entertainment</li>
            </ul>
            <button class="btn" onclick="addToCart('Standard Package', 3000)">Add to Cart</button>
        </div>

        <div class="card premium-package">
            <h2>Premium Package</h2>
            <p class="price">$5,500</p>
            <ul>
                <li><i class="fas fa-check-circle"></i> Everything in Standard</li>
                <li><i class="fas fa-crown"></i> Luxury Decorations</li>
                <li><i class="fas fa-calendar-check"></i> Wedding Planner</li>
            </ul>
            <button class="btn" onclick="addToCart('Premium Package', 5500)">Add to Cart</button>
            <div class="badge">Best Seller</div>
        </div>
    </div>

    <h2>&nbsp;</h2>
    <h1 class="section-title">Our Other Event Packages</h1>

    <div class="price-cards">
        <div class="card birthday-package">
            <h2>Birthday Package</h2>
            <p class="price">$1600</p>
            <ul>
                <li><i class="fas fa-home"></i> Venue Selection</li>
                <li><i class="fas fa-music"></i> Entertainment</li>
                <li><i class="fas fa-cogs"></i> Decorations</li>
                <li><i class="fas fa-utensils"></i> Catering</li>
                <li><i class="fas fa-camera"></i> Photography & Video</li>
            </ul>
            <button class="btn" onclick="addToCart('Birthday Package', 1600)">Add to Cart</button>
        </div>

        <div class="card anniversary-package">
            <h2>Anniversary Package</h2>
            <p class="price">$500</p>
            <ul>
                <li><i class="fas fa-home"></i> Venue Selection</li>
                <li><i class="fas fa-music"></i> Entertainment</li>
                <li><i class="fas fa-cogs"></i> Decorations</li>
                <li><i class="fas fa-utensils"></i> Catering</li>
                <li><i class="fas fa-camera"></i> Photography & Video</li>
            </ul>
            <button class="btn" onclick="addToCart('Anniversary Package', 1500)">Add to Cart</button>
        </div>
    </div>
</section>
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
<script src="./js/price.js"></script>

<jsp:include page="includes/alert.jsp"/>
</body>
</html>
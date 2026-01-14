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
    <link rel="stylesheet" href="./css/home.css">

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
    </div>
</header>


<!-- Carousel Section -->
<section id="carousel-container">
    <div id="carousel">
        <div class="carousel-item active">
            <img
                    src="https://images.unsplash.com/photo-1595407753234-0882f1e77954?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                    alt="Image 1"
            />
        </div>

        <div class="carousel-item">
            <img
                    src="https://images.unsplash.com/photo-1511285560929-80b456fea0bc?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                    alt="Image 4"
            />
        </div>
        <div class="carousel-item">
            <img
                    src="https://plus.unsplash.com/premium_photo-1681841364476-8ae10f8f93b0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                    alt="Image 5"
            />
        </div>
    </div>
    <button type="button" id="carousel-prev">❮</button>
    <button type="button" id="carousel-next">❯</button>

    <div id="carousel-overlay-center">

        <h2>Experience a dream wedding with our expert planning, beautiful decorations, and seamless execution.</h2>
        <a href="customerDashboard">
            <button type="button" class="schedule-button">Book Now</button>
        </a>
    </div>

    <div id="carousel-overlay-bottom">
        <div class="contact-item">
            <div class="contact-img-container">
                <img src="https://cdn-icons-png.freepik.com/256/15058/15058724.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                     alt="Location"/>
            </div>
            <div class="contact-text-container">
                <h2>Location</h2>
                <p>123 Wedding Street, NY 10001</p>
            </div>
        </div>
        <div class="contact-item">
            <div class="contact-img-container">
                <img src="https://cdn-icons-png.freepik.com/256/9585/9585722.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                     alt="Email"/>
            </div>
            <div class="contact-text-container">
                <h2>Email</h2>
                <p>info@elegantweddings.com</p>
            </div>
        </div>
        <div class="contact-item">
            <div class="contact-img-container">
                <img src="https://cdn-icons-png.freepik.com/256/17302/17302537.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                     alt="Phone"/>
            </div>
            <div class="contact-text-container">
                <h2>Phone</h2>
                <p>+1 (234) 567-890</p>
            </div>
        </div>
    </div>
</section>


<!-- How it Works Section -->
<section class="how-it-works">
    <h1 class="section-header">Our Events</h1>
    <div class="content-container">
        <div class="content-item">
            <div class="circle">
                <img
                        class="image-in-div"
                        src="https://cdn-icons-png.freepik.com/256/11345/11345669.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                        alt="schedule"
                />
            </div>
            <h3>Wedding Planning</h3>
            <p>
                Experience a dream wedding with our expert planning, beautiful decorations, and seamless execution.
            </p>
        </div>
        <div class="content-item">
            <div class="circle">
                <img
                        class="image-in-div"
                        src="https://cdn-icons-png.freepik.com/256/13394/13394411.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                        alt="schedule"
                />
            </div>
            <h3>Birthday Planning</h3>
            <p>
                Celebrate your birthday in style with custom themes, entertainment, and delicious catering.

            </p>
        </div>
        <div class="content-item">
            <div class="circle">
                <img
                        class="image-in-div"
                        src="https://cdn-icons-png.freepik.com/256/3316/3316672.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                        alt="schedule"
                />
            </div>
            <h3>Anniversary Planning</h3>
            <p>
                Make your anniversary unforgettable with elegant decor, romantic settings, and special moments.
            </p>
        </div>
    </div>
</section>
<!-- Innovation Section -->
<section class="innovation-section"
         style="text-align: center; padding: 50px; background: linear-gradient(to right, #f3afff, #a9a0ff); color: #2e2f45;">
    <h1>
        Make Your Special Moments Unforgettable with
        <span class="website-name" style="color: #f53bff;">ElegantWeddings</span>
    </h1>
    <p style="font-size: 18px; max-width: 700px; margin: auto;">
        From magical weddings to joyful birthdays and heartwarming anniversaries,
        we bring your dream event to life. Our expert planning services ensure
        a stress-free and memorable celebration, tailored just for you.
    </p>
    <div style="margin-top: 30px;">
        <img src="https://img.freepik.com/premium-photo/newlyweds-are-cutting-wedding-cake-dessert-wedding-table-night-lights_195549-4330.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
             alt="Event Celebration"
             style="width: 20%;  border-radius: 10px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);">
        <img src="https://img.freepik.com/free-photo/happy-friends-with-birthday-cake_23-2147720225.jpg?ga=GA1.1.1076691303.1741879013"
             alt="Event Celebration"
             style="width: 20%;  border-radius: 10px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);">
    </div>
</section>


<!-- Services Section -->
<section id="services-section">
    <h1 class="section-header">Some of the services we provide</h1>
    <div class="service-icons-wrapper">
        <div class="service-icon">
            <a href="#">
                <div class="image-wrapper">
                    <img
                            class="image-in-div"
                            src="https://cdn-icons-png.freepik.com/256/9378/9378479.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                            alt="Venue Selection"
                    />
                </div>
            </a>
            <h2 class="service-description">Venue Selection</h2>
        </div>
        <div class="service-icon">
            <a href="#">
                <div class="image-wrapper">
                    <img
                            class="image-in-div"
                            src="https://cdn-icons-png.freepik.com/256/15252/15252847.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                            alt="Decoration"
                    />
                </div>
            </a>
            <h2 class="service-description">Decoration</h2>
        </div>
        <div class="service-icon">
            <a href="#">
                <div class="image-wrapper">
                    <img
                            class="image-in-div"
                            src="https://cdn-icons-png.freepik.com/256/15242/15242348.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                            alt="Catering"
                    />
                </div>
            </a>
            <h2 class="service-description">Catering</h2>
        </div>
        <div class="service-icon">
            <a href="#">
                <div class="image-wrapper">
                    <img
                            class="image-in-div"
                            src="https://cdn-icons-png.freepik.com/256/3918/3918225.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                            alt="Entertainment"
                    />
                </div>
            </a>
            <h2 class="service-description">Entertainment</h2>
        </div>
        <a href="allServices.jsp">
            <button class="more-button" type="button">MORE</button>
        </a>
    </div>
</section>

<!-- Optional Section -->


<!-- Why Choose Section -->
<section id="why-choose-section">
    <h1 class="section-header">Why choose Us?</h1>
    <div class="why-choose-wrapper">
        <div class="why-choose-item-right">
            <div class="why-choose-text">
                <h2>1. Personalized Planning</h2>
                <p>
                    We customize every event to match your unique style and preferences
                </p>
            </div>
            <div class="why-choose-icon-wrapper">
                <img
                        class="image-in-div"
                        src="https://cdn-icons-png.freepik.com/256/17441/17441695.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                        alt="Effortless Online Orders Icon"
                />
            </div>
        </div>
        <div class="why-choose-item-left">
            <div class="why-choose-icon-wrapper">
                <img
                        class="image-in-div"
                        src="https://cdn-icons-png.freepik.com/256/9360/9360501.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                        alt="Effortless Online Orders Icon"
                />
            </div>
            <div class="why-choose-text">
                <h2>2. Stunning Venues</h2>
                <p>
                    From luxurious ballrooms to serene gardens, we help you find the perfect setting.
                </p>
            </div>
        </div>
        <div class="why-choose-item-right">
            <div class="why-choose-text">
                <h2>3.Elegant Décor & Themes</h2>
                <p>
                    From classic romance to modern chic, we create stunning atmospheres.
                </p>
            </div>
            <div class="why-choose-icon-wrapper">
                <img
                        class="image-in-div"
                        src="https://cdn-icons-png.freepik.com/256/15252/15252869.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                        alt="Effortless Online Orders Icon"
                />
            </div>
        </div>
        <div class="why-choose-item-left">
            <div class="why-choose-icon-wrapper">
                <img
                        class="image-in-div"
                        src="https://cdn-icons-png.freepik.com/256/10219/10219831.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                        alt="Effortless Online Orders Icon"
                />
            </div>
            <div class="why-choose-text">
                <h2>4. Expert Coordination</h2>
                <p>
                    Our professional team ensures every detail is executed flawlessly.
                </p>
            </div>
        </div>
    </div>
</section>

<div class="review-section">
    <h2 class="section-title">What Our Customers Say</h2>

    <div class="review-container">
        <div class="review">
            <img src="https://img.freepik.com/free-photo/girl-smiling-looking-camera_23-2148194027.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                 class="profile-pic" alt="User">
            <div class="review-content">
                <h4>Sarah Johnson <span class="stars">★★★★★</span></h4>
                <p>"The wedding planning was beyond perfect. Everything was so well organized, and the decorations were
                    stunning!"</p>
                <small>Event: Wedding | Date: March 15, 2025</small>
            </div>
        </div>

        <div class="review">
            <img src="https://img.freepik.com/free-photo/portrait-man-looking-front-him-with-copy-space_23-2148422272.jpg?ga=GA1.1.1076691303.1741879013"
                 class="profile-pic" alt="User">
            <div class="review-content">
                <h4>Michael Smith <span class="stars">★★★★☆</span></h4>
                <p>"Had a great birthday party experience. The team was very professional and handled everything
                    smoothly."</p>
                <small>Event: Birthday | Date: March 10, 2025</small>
            </div>
        </div>

        <div class="review">
            <img src="https://img.freepik.com/free-photo/portrait-young-tender-woman-with-healthy-freckled-skin_158595-3947.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                 class="profile-pic" alt="User">
            <div class="review-content">
                <h4>Emily Davis <span class="stars">★★★★★</span></h4>
                <p>"Our anniversary celebration was unforgettable! The catering and venue decorations were
                    exceptional."</p>
                <small>Event: Anniversary | Date: March 5, 2025</small>
            </div>
        </div>

        <div class="review">
            <img src="https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?ga=GA1.1.1076691303.1741879013"
                 class="profile-pic" alt="User">
            <div class="review-content">
                <h4>David Martinez <span class="stars">★★★★★</span></h4>
                <p>"Excellent service! From invitations to decorations, everything was perfectly arranged. Highly
                    recommend!"</p>
                <small>Event: Wedding | Date: February 25, 2025</small>
            </div>
        </div>
        <div class="review">
            <img src="https://img.freepik.com/free-photo/portrait-young-man-with-green-hoodie_23-2148514952.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid"
                 class="profile-pic" alt="User">
            <div class="review-content">
                <h4>John Parker <span class="stars">★★★★☆</span></h4>
                <p>"The birthday party was fantastic! Everything was organized well, and the entertainment was
                    top-notch!"</p>
                <small>Event: Birthday | Date: March 20, 2025</small>
            </div>
        </div>

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
<script src="./js/home.js"></script>

<jsp:include page="includes/alert.jsp"/>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Elegant Wedding Planner</title>
    <link rel="stylesheet" href="./css/headerFooter.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Montserrat:wght@300;400;500;600&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/review.css">
</head>
<!-- Header -->
    <div id="full-page-overlay"></div>
    <header>
      <div id="top-bar">
        <span>Sign Up to receive a discount today</span>
        <span id="login-link"><a href="sign in.jsp">SIGN IN </a></span>
        <span><a href="FAQ.jsp">FAQs</a></span>
      </div>


        <div class="main-header">
            <div class="container">
                <div class="logo">
                    <h1>Elegant<span>Weddings</span></h1>
                    <div class="logo-divider">
                        <i class="fas fa-heart"></i>
                    </div>
                
                </div>

                <nav>
                <div id="main-navbar">
                    
                    <span><a href="home.jsp">Home</a></span>
                    <span><a href="event.jsp">Events</a></span>
                    <span><a href="gallery.jsp">Gallery</a></span>
                    <span><a href="price.jsp">Price</a></span>
                    <span><a href="allServices.jsp">Services</a></span>
                    <span><a href="contactUs.jsp">ContactUs</a></span>
                    
                        
               
                    <span>
                        
                        <a href="cart.jsp" id="cart-link">
                            <img src="https://cdn-icons-png.freepik.com/256/2037/2037366.png?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid" alt="Cart"  width="50px" height="40px" id="cart-icon">
                        </a>
                        
                   
                    </span>
                </div>
                </nav>
                </div>
        </div>
    </header>

    <!-- Main Content Area -->
    <section id="thank-you-section">
        <div id="headings">
            <h1>Thank You for Booking with Us!</h1>
            <p>We appreciate your trust in our event planning services. Please take a moment to rate your experience and help us improve.</p>
        </div>

        <div id="feedback-section">
        <form action="./submit_feedback.php" method="POST">
    <div class="star-rating">
        <input type="radio" id="5-stars" name="rating" value="5" />
        <label for="5-stars" class="star">&#9733;</label>
        
        <input type="radio" id="4-stars" name="rating" value="4" />
        <label for="4-stars" class="star">&#9733;</label>
        
        <input type="radio" id="3-stars" name="rating" value="3" />
        <label for="3-stars" class="star">&#9733;</label>
        
        <input type="radio" id="2-stars" name="rating" value="2" />
        <label for="2-stars" class="star">&#9733;</label>
        
        <input type="radio" id="1-star" name="rating" value="1" />
        <label for="1-star" class="star">&#9733;</label>
    </div>

    <label for="customer-name">Write your  name:</label>
    <input type="text" name="customer-name" id="customer-name">


    <label for="review">Write a review (optional):</label><br>
    <textarea id="review" name="review" rows="4" cols="50"></textarea>
    
    <div class="button-container">
        <input type="submit" value="Submit Feedback" name="submit-btn" class="button">
        <button type="button" class="button"><a href="home.jsp">Maybe Later</a></button>
    </div>
    
</form>
        </div>
    </section>

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
<body>


<jsp:include page="includes/alert.jsp"/>
</body>
</html>
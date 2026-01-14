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
    <link rel="stylesheet" href="./css/invitation.css">
</head>

<body>
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
    
    <div class="service-page">
        <section class="service-header">
            <div class="service-image">
                
            </div>
            <div class="service-details">
                <p class="service-type">Invitation Card Services</p><br>
                <h1 class="service-name">Elegant Invitation Cards for Your Special Events</h1><br>
                <p class="service-description">
                    Create beautifully designed invitation cards for weddings, birthdays, and anniversaries.
                Choose from a variety of themes and styles to match your event's aesthetics. 
                Customize your invitations and make your event unforgettable!
                </p>
            </div>
        </section>

        <section class="preparation-guidelines">
            <h2>Available Cards</h2> <br>
            <div class="venue-container">
                <div class="venue-card">
                    <img src="https://img.freepik.com/premium-vector/beautiful-rose-flower-watercolor-wedding-invitation-template_67642-1313.jpg?ga=GA1.1.1076691303.1741879013" alt="Floral Elegance">
                    <h3>Floral Elegance</h3>
                    <p>Classic floral-themed invitation cards with customizable text and colors.</p>
                    <p class="price">$400</p>
                    <button class="cart-btn" onclick="addToCart('Floral Elegance', 400)">Add to Cart</button>
                </div>
                <div class="venue-card">
                    <img src="https://img.freepik.com/premium-vector/luxurious-gold-black-wedding-invitation-template-wedding-card-adorned-with-glittering-gold-bokeh_611989-496.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid" alt="Golden Glamour">
                    <h3>Golden Glamour</h3>
                    <p>Luxurious gold-foil invitation cards perfect for grand events.</p>
                    <p class="price">$500</p>
                    <button class="cart-btn" onclick="addToCart('Golden Glamour', 500)">Add to Cart</button>
                </div>
                <div class="venue-card">
                    <img src="https://img.freepik.com/premium-vector/elegant-watercolor-wedding-invitation-card-with-greenery-leaves_51849-174.jpg?ga=GA1.1.1076691303.1741879013" alt="Minimalist Chic">
                    <h3>Minimalist Chic</h3>
                    <p>Modern and stylish invitations with a clean and elegant design.</p>
                    <p class="price">$300</p>
                    <button class="cart-btn" onclick="addToCart('Minimalist Chic', 300)">Add to Cart</button>
                </div>
                <div class="venue-card">
                    <img src="https://img.freepik.com/premium-vector/romantic-floral-flowers-marriage-wedding-nuptials-invitation-template_467123-2631.jpg?ga=GA1.1.1076691303.1741879013" alt="Vintage Romance">
                <h3>Vintage Romance</h3>
                <p>Timeless and artistic designs inspired by vintage themes.</p>
                <p class="price">$400</p>
                <button class="cart-btn" onclick="addToCart('Vintage Romance', 400)">Add to Cart</button>
                </div>
               
            </div>
        </section>

        <section class="service-terms">
            <h2>Service Terms</h2>
            <p>
                <br>
                Our invitation card service includes customization and printing options. 
            Orders must be placed at least 5 days before the event. Contact our support team for assistance.
            </p>
        </section>
    </div>

    <script>
        function addToCart(serviceName, price) {
            let cart = JSON.parse(localStorage.getItem("cart")) || [];
            cart.push({ name: serviceName, price: price });
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

<jsp:include page="includes/alert.jsp"/>
</body>
</html>
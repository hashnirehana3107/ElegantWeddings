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
    
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&family=Montserrat:wght@300;400;500;600&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/wedding.css">
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
                </nav>
                
        </div>
    </header>


    <main>
        <h1> Wedding Ceremony</h1>
        <section id="w-service">
            <h2>Entertainment</h2>
            <p>Choose from live bands, DJs, or classical performances to keep your guests entertained throughout the event.</p>
            <img src="https://img.freepik.com/free-photo/couple-hugging-their-dance_1157-250.jpg?t=st=1742386610~exp=1742390210~hmac=bc31e7fc0c5e09db7a709c92937733f7a4726fea7a96ed41389c9cab12f86262&w=900" alt="Jazz Band">
            <img src="https://img.freepik.com/premium-photo/newlyweds-happily-cut-laugh-taste-wedding-cake_419896-8939.jpg?w=900" alt="Jazz Band"><br>
            <a href="entertainment.jsp"><button>Select </button></a>
        </section>

        <section id="w-service">
            <h2>Photos & Videos</h2>
            <p>Capture your special moments with our professional photography and videography services.</p>
            <img src="https://img.freepik.com/premium-photo/group-people-photographing-through-camera_1048944-4026614.jpg?w=900" alt="Jazz Band">
            <img src="https://img.freepik.com/premium-photo/professional-wedding-photographer-taking-pictures-bride-groom-nature-autumn_114963-19895.jpg?w=900" alt="Jazz Band"><br>
            <a href="photos.jsp"><button>Select </button></a>
        </section>

        <section id="w-service">
            <h2>Catering</h2>
            <p>We offer a variety of cuisines and customized menus prepared by top chefs to suit your wedding theme.</p>
            <img src="https://img.freepik.com/premium-photo/thai-buffet-dinner-beautifully-arranged-wedding-sunshine_42044-3632.jpg?w=900" alt="Jazz Band">
            <img src="https://img.freepik.com/free-photo/sparkling-glassware-stands-long-table-prepared-wedding-di_8353-688.jpg?ga=GA1.1.1076691303.1741879013" alt="Jazz Band"><br>
            <a href="catering.jsp"><button>Select </button></a>
        </section>

        <section id="w-service">
            <h2>Invitation Cards</h2>
            <p>Personalized and beautifully designed wedding invitations to match your theme.</p>
            <img src="https://img.freepik.com/premium-vector/elegant-floral-wedding-invitation-card-set_95966-2815.jpg?w=900" alt="Jazz Band">
            <img src="https://img.freepik.com/premium-vector/elegant-wedding-invitation-template-with-beautiful-floral-watercolor_95966-2593.jpg?w=900" alt="Jazz Band"><br>
            <a href="invitation.jsp"><button>Select </button></a>
        </section>

        <section id="w-service">
            <h2>Venue Selection</h2>
            <p>We help you find the perfect venue, from beachfront locations to luxurious ballrooms.</p>
            <img src="https://img.freepik.com/free-photo/decorated-ceremonial-area-outdoors-with-modern-transparent-chairs-beautiful-festoon-with-lots-trees-plants_8353-10828.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid" alt="Jazz Band">
            <img src="https://img.freepik.com/free-photo/wonderful-wedding-ceremony-place-near-sea-decorated-by-flowers_8353-9869.jpg?ga=GA1.1.1076691303.1741879013" alt="Jazz Band"><br>
            <a href="venue.jsp"><button>Select </button></a>
        </section>

        <section id="w-service">
            <h2>Decorations</h2>
            <p>Personalized and exquisitely designed wedding decorations to perfectly complement your theme.</p>
            <img src="https://img.freepik.com/free-photo/elegant-wedding-set-up_23-2151858547.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid" alt="Jazz Band">
            <img src="https://img.freepik.com/premium-photo/backdrop-flowers-arrangement-wedding-ceremony-event_42044-410.jpg?ga=GA1.1.1076691303.1741879013&semt=ais_hybrid" alt="Jazz Band"><br>
            <a href="decorations.jsp"><button>Select </button></a>
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
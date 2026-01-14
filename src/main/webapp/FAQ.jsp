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
    <link rel="stylesheet" href="./css/FAQ.css">
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

    <!-- Main Content Area -->
    <div class="faq-container">
        <h1> FAQs</h1>
    
        <div class="faq-item">
            <input type="checkbox" id="faq1" class="faq-checkbox">
            <label for="faq1" class="faq-question">What event planning services do you offer?</label>
            <div class="faq-answer">
                <p>We offer comprehensive event planning services including venue selection, invitation cards, entertainment, catering, photos & videos, decoration, and other events like birthdays and anniversaries.</p>
            </div>
        </div>
    
        <div class="faq-item">
            <input type="checkbox" id="faq2" class="faq-checkbox">
            <label for="faq2" class="faq-question">How does your event planning process work?</label>
            <div class="faq-answer">
                <p>Our event planning process is simple and stress-free. 
                    Start by scheduling a consultation through our website or app, and our team will work with you to understand your requirements and create a customized plan for your event.</p>
            </div>
        </div>
    
        <div class="faq-item">
            <input type="checkbox" id="faq3" class="faq-checkbox">
            <label for="faq3" class="faq-question">What are your operating hours?</label>
            <div class="faq-answer">
                <p>Our office is open from 9AM to 6PM, Monday to Friday. 
                    We are also available on weekends and holidays by appointment to accommodate your event planning needs.</p>
            </div>
        </div>
    
        <div class="faq-item">
            <input type="checkbox" id="faq4" class="faq-checkbox">
            <label for="faq4" class="faq-question">Do you offer last-minute event planning services?</label>
            <div class="faq-answer">
                <p>Yes, we offer last-minute and expedited event planning services for clients who need quick turnaround times. 
                    Please contact us for availability and pricing for these services.</p>
            </div>
        </div>
    
        <div class="faq-item">
            <input type="checkbox" id="faq5" class="faq-checkbox">
            <label for="faq5" class="faq-question">How should I prepare for my initial consultation?</label>
            <div class="faq-answer">
                <p>For your initial consultation, please have an idea of your event date, budget, guest count, and any specific details or preferences you have in mind. 
                    This will help us better understand your vision and create a plan that meets your needs.</p>
            </div>
        </div>
    
        <div class="faq-item">
            <input type="checkbox" id="faq6" class="faq-checkbox">
            <label for="faq6" class="faq-question">What happens if there is an issue on the day of the event?</label>
            <div class="faq-answer">
                <p>In the unlikely event that an issue arises on the day of the event, our team will be on-site to handle any problems and ensure that everything runs smoothly. 
                    We have contingency plans in place to address unexpected situations.</p>
            </div>
        </div>
    
        <div class="faq-item">
            <input type="checkbox" id="faq7" class="faq-checkbox">
            <label for="faq7" class="faq-question">Are your event planning practices environmentally friendly?</label>
            <div class="faq-answer">
                <p>Yes, we are committed to eco-friendly event planning practices. 
                    We use sustainable materials, minimize waste, and work with vendors who share our commitment to environmental responsibility.</p>
            </div>
        </div>
    

    
        <div class="faq-item">
            <input type="checkbox" id="faq8" class="faq-checkbox">
            <label for="faq9" class="faq-question">How do I pay for your services?</label>
            <div class="faq-answer">
                <p>You can pay for our services using various payment methods, including credit/debit cards, online payment portals, and bank transfers. 
                    We also offer payment plans for larger events to help manage your budget.</p>
            </div>
        </div>
    
        <div class="faq-item">
            <input type="checkbox" id="faq9" class="faq-checkbox">
            <label for="faq10" class="faq-question">Is there a minimum budget requirement for your event planning services?</label>
            <div class="faq-answer">
                <p>Yes, we have a minimum budget requirement for our event planning services. 
                    Please check our website or contact us for details on the minimum budget amount and what it includes.</p>
            </div>
        </div>
    
        <div class="faq-item">
            <input type="checkbox" id="faq10" class="faq-checkbox">
            <label for="faq11" class="faq-question">What are your prices for different services?</label>
            <div class="faq-answer">
                <p>Our prices vary depending on the services you require and the scope of your event. 
                    Please visit our pricing page on our website or contact us for a detailed quote based on your specific needs.</p>
            </div>
        </div>
    
        <div class="faq-item">
            <input type="checkbox" id="faq11" class="faq-checkbox">
            <label for="faq12" class="faq-question">Do you offer packages or discounts for multiple services?</label>
            <div class="faq-answer">
                <p>Yes, we offer packages that combine multiple services at a discounted rate. 
                    Please check our website or contact us for more information on our available packages and discounts.</p>
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

<jsp:include page="includes/alert.jsp"/>
</body>
</html>
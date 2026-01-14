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
    <link rel="stylesheet" href="./css/gallery.css">
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


<section class="gallery-section">
    <h1>Our Gallery</h1>
    <p><i>Explore our stunning wedding moments and decorations.</i></p>

    <h2>&nbsp;</h2><br>
    <h2><b>Decorations</b></h2>
    <br>
    <div class="gallery">
        <div class="gallery-item">
            <img src="https://img.freepik.com/premium-photo/potted-plants-sale-street-market_1048944-8361284.jpg?w=1380"
                 alt="Decorations" onclick="openLightbox(this)">
            <img src="https://img.freepik.com/free-photo/beautiful-wedding-altar-made-garland-spearworts-greene_8353-1775.jpg?t=st=1741901748~exp=1741905348~hmac=110a2477e40d351bfb412a7a6ad091a1b0d1d8e68b386fc926e1523c98396add&w=1380"
                 alt="Decorations" onclick="openLightbox(this)">
            <img src="https://img.freepik.com/premium-photo/light-birthday-cake-decorated-with-white-flowers-background-restaurant_616126-862.jpg?w=1380"
                 onclick="openLightbox(this)">
            <img src="https://img.freepik.com/premium-photo/luxury-photo-area-with-inflatable-balloons-reaturant-photozone-gold-blue-balloons-decor-childrens-party_644339-78.jpg?w=1380"
                 alt="Decorations" onclick="openLightbox(this)">
            <img src="https://img.freepik.com/free-photo/decorated-tables-luxury-wedding-restaurant_1303-19596.jpg?t=st=1741901804~exp=1741905404~hmac=ddc92ea2647d6029793d9c50d3c6fc4a0102ee0c8b7ea0a96258d85ac85a78fa&w=1380"
                 onclick="openLightbox(this)">
        </div>

        <h2>&nbsp;</h2>
        <h2><b>Wedding Ceremony</b></h2>
        <div class="gallery">
            <div class="gallery-item">
                <img src="https://img.freepik.com/free-photo/newlyweds-girls-throw-their-petals_1157-546.jpg?t=st=1741896825~exp=1741900425~hmac=31d4723609e145b66c79e79c269a0dac8f41d40b35f0fa45962ce86e69a626cc&w=1380"
                     alt="Wedding Image 1" onclick="openLightbox(this)">
                <img src="https://img.freepik.com/free-photo/full-shot-smiley-people-posing-wedding_23-2149956422.jpg?t=st=1741897501~exp=1741901101~hmac=d112e3d18ba344a0c3dfbb26b89ff1d1ffea2060a8c9208966755a6f7b88a2d7&w=1380"
                     alt="Wedding Image 2" onclick="openLightbox(this)">
                <img src="https://img.freepik.com/free-photo/young-women-enjoying-bachelorette-party_23-2149278415.jpg?t=st=1741897741~exp=1741901341~hmac=0f561f28a2ba46b940442c16cde5ec68f87669478f6e0cf793e04fca9f99ef26&w=1380"
                     alt="Wedding Image 3 " onclick="openLightbox(this)">
                <img src="https://img.freepik.com/premium-photo/young-caucasian-couple-s-wedding-day_53876-39772.jpg?w=1380"
                     alt="Wedding Image 4" onclick="openLightbox(this)">
                <img src="https://img.freepik.com/premium-photo/man-woman-are-holding-hands-front-curtain-that-says-hi_1113980-2405.jpg?w=1380"
                     alt="Wedding Image 5" onclick="openLightbox(this)">
            </div>


            <h2>&nbsp;</h2><br>
            <h2><b>Birthday Events</b></h2>
            <br>
            <div class="gallery">
                <div class="gallery-item">
                    <img src="https://img.freepik.com/premium-photo/festive-birthday-table_199683-3197.jpg?w=1380"
                         alt="Birthday Events" onclick="openLightbox(this)">
                    <img src="https://img.freepik.com/premium-photo/birthday-outdoor-before-party-balloons-cake_576739-138.jpg?w=1380"
                         alt="Birthday Events" onclick="openLightbox(this)">
                    <img src="https://img.freepik.com/premium-photo/smiling-woman-celebrating-birthday-yard_1048944-28172314.jpg?w=1380"
                         onclick="openLightbox(this)">
                    <img src="https://img.freepik.com/free-photo/group-happy-friends-having-fun-together-celebrating-birthday-outdoor-park-friends-say-toast-picnic-party-outdoor_613910-21138.jpg?t=st=1741901256~exp=1741904856~hmac=835aa17ceed12b6b7e7fe753cd290c57dd817204e80599c57a4689ec4aa178f7&w=1380"
                         alt="Birthday Events" onclick="openLightbox(this)">
                    <img src="https://img.freepik.com/premium-photo/beaming-woman-with-dark-hair-wearing-sequin-silver-dress_116547-92348.jpg?w=1380"
                         onclick="openLightbox(this)">
                </div>

                <h2>&nbsp;</h2><br>
                <h2><b>Anniversary Events</b></h2>
                <br>
                <div class="gallery">
                    <div class="gallery-item">
                        <img src="https://img.freepik.com/premium-photo/happy-couple-with-party-caps-balloons_380164-202051.jpg?w=1380"
                             alt="Anniversary Events" onclick="openLightbox(this)">
                        <img src="https://img.freepik.com/premium-photo/smiling-group-young-people-have-fun-indoors-christmas-decorated-room-celebrating-new-year-holidays_146671-32013.jpg?w=1380"
                             alt="Anniversary Events" onclick="openLightbox(this)">
                        <img src="https://img.freepik.com/free-photo/couple-embracing-new-years-party_23-2148349091.jpg?t=st=1741900977~exp=1741904577~hmac=3447bc3345a3bd4af542e3dd5a11a60c897bf5dfcc2e68b61a968d6481252848&w=1380"
                             alt="Anniversary Events " onclick="openLightbox(this)">
                        <img src="https://img.freepik.com/free-photo/young-couple-celebrating-new-years-eve_329181-13339.jpg?t=st=1741900793~exp=1741904393~hmac=b594a6f9d433bc441bbbab67659e2b15b4d9b3767808fd9800370bf03525ddfa&w=1380"
                             alt="Anniversary Events" onclick="openLightbox(this)">
                        <img src="https://img.freepik.com/free-photo/portrait-attractive-young-couple-club-with-air-balloon_132075-7544.jpg?t=st=1741900925~exp=1741904525~hmac=89c236a4edbbfd4cbf66c4111f6f42d121b54bcd4354bcced7e75a69feb8deb9&w=1380"
                             alt="Anniversary Events" onclick="openLightbox(this)">
                    </div>


                    <h2>&nbsp;</h2><br>
                    <h2><b>Catering Service</b></h2>
                    <br>
                    <div class="gallery">
                        <div class="gallery-item">
                            <img src="https://img.freepik.com/premium-photo/sweet-table-plates-cakes-muffins-table-with-sweets-buffet-dessert-table-party-goodies-party-reception-decorated-delicious-restaurant-candy-bar_180731-4107.jpg?w=1380"
                                 alt="Catering Service" onclick="openLightbox(this)">
                            <img src="https://img.freepik.com/free-photo/high-angle-delicious-food-arrangement_23-2149617130.jpg?t=st=1741902339~exp=1741905939~hmac=66ef2d1507140a008ca7ce833cf9790eb694ea396e08f81506b5c1626cfdc928&w=1380"
                                 alt="Catering Service" onclick="openLightbox(this)">
                            <img src="https://img.freepik.com/premium-photo/high-angle-view-food-table_1048944-6353648.jpg?w=1380"
                                 onclick="openLightbox(this)">
                            <img src="https://img.freepik.com/premium-photo/catering-service-restaurant-table-with-snacks-food-event_367038-2516.jpg?w=1380"
                                 alt="Catering Service" onclick="openLightbox(this)">
                            <img src="https://img.freepik.com/free-photo/open-food-containers_1203-2061.jpg?t=st=1741902485~exp=1741906085~hmac=ce51afae583988e2f36185ea07a56e399408fea8910f97a6594ee10a2e69b1d9&w=1380"
                                 onclick="openLightbox(this)">
                        </div>

                        <h2>&nbsp;</h2><br>
                        <h2><b>Entertainment </b></h2>
                        <br>
                        <div class="gallery">
                            <div class="gallery-item">
                                <img src="https://img.freepik.com/free-photo/bride-couple-waving-while-dacning-with-confetti_8353-12337.jpg?t=st=1741902033~exp=1741905633~hmac=7a84d36070965e7618f602760fe02c164344165a4fb4716a4af71fab40b934d8&w=996"
                                     alt="Entertainment" onclick="openLightbox(this)">
                                <img src="https://img.freepik.com/premium-photo/wedding-applause-couple-holding-hands-celebration-with-support-from-clapping-guests-friends-family-back-view-bride-groom-celebrate-trust-hope-success-love-social-event_590464-110781.jpg?w=1380"
                                     alt="Entertainment" onclick="openLightbox(this)">
                                <img src="https://img.freepik.com/free-photo/wedding-couple-dancing-their-first-dance_1303-10483.jpg?t=st=1741902152~exp=1741905752~hmac=994b1acb3f0ed5ad8d799e8aa9fbfb0c4c71c7707fb1fc2bff6a7d989a586662&w=1380"
                                     alt="Entertainment " onclick="openLightbox(this)">
                                <img src="https://img.freepik.com/premium-photo/dj-mixing-music-partyxa_225446-508.jpg?w=1380"
                                     alt="Entertainment" onclick="openLightbox(this)">
                                <img src="https://img.freepik.com/free-photo/musicial-music-live-band-performing-stage-with-different-lights-beautiful-blonde-vocal-singer-girl_627829-10069.jpg?t=st=1741902239~exp=1741905839~hmac=6d5d364308329dd8c4154ffbfb151978601dcd406fc659d214a9478e723092e0&w=1380"
                                     alt="Entertainment" onclick="openLightbox(this)">
                            </div>


                            <h2>&nbsp;</h2><br>
                            <h2><b>Wedding Venue</b></h2>
                            <br>
                            <div class="gallery">
                                <div class="gallery-item">
                                    <img src="https://img.freepik.com/free-photo/photorealistic-wedding-venue-with-intricate-decor-ornaments_23-2151481491.jpg?t=st=1741897085~exp=1741900685~hmac=52d128580bc583e3d7f1a8a2562918e24738f1dce1555c737428c06ad9cd2e61&w=1380"
                                         alt="Wedding Venue" onclick="openLightbox(this)">
                                    <img src="https://img.freepik.com/premium-photo/well-decorated-marriage-house-hundred-stories-splendor-celebration_1243992-15780.jpg?w=1060"
                                         alt="Wedding Venue" onclick="openLightbox(this)">
                                    <img src="https://img.freepik.com/premium-photo/decorations-lawn-wedding-reception-against-sky_1048944-1935917.jpg?w=1380"
                                         onclick="openLightbox(this)">
                                    <img src="https://img.freepik.com/premium-photo/beautiful-outgoing-wedding-set-up-jewish-hupa-romantic-wedding-ceremony-wedding-outdoor-lawn-water-view_105751-431.jpg?w=1380"
                                         alt="Wedding Venue" onclick="openLightbox(this)">
                                    <img src="https://img.freepik.com/premium-photo/gazebo-by-sea_1048944-12004938.jpg?w=1060"
                                         onclick="openLightbox(this)">
                                </div>

                                <h2>&nbsp;</h2><br>
                                <h2><b>Wedding Invitation Cards</b></h2>
                                <br>
                                <div class="gallery">
                                    <div class="gallery-item">
                                        <img src="https://img.freepik.com/free-psd/elegant-wedding-poster-template_23-2148945292.jpg?t=st=1741899027~exp=1741902627~hmac=5efd5e00d4b075c4925578311c2498b9f28f132ea8be26e1e5d877913b5c2b83&w=826"
                                             alt="Wedding Invitation" onclick="openLightbox(this)">
                                        <img src="https://img.freepik.com/free-vector/indian-wedding-invitation_52683-44378.jpg?t=st=1741898979~exp=1741902579~hmac=9e01bc20af67b2bb49d8a70b5957f0ba21a1fffdf90bda32f33dfe936fa3682c&w=826"
                                             alt="Wedding Invitation" onclick="openLightbox(this)">
                                        <img src="https://img.freepik.com/free-vector/hand-drawn-floral-wedding-invitation-template_23-2149018411.jpg?t=st=1741899009~exp=1741902609~hmac=c5d8ec4dee0c7bd26738f31db4763f2baab6bba94564e4e0e79de2d4068341da&w=826"
                                             alt="Wedding Invitation " onclick="openLightbox(this)">
                                        <img src="https://img.freepik.com/free-vector/wedding-invitation-template_23-2148853705.jpg?t=st=1741899941~exp=1741903541~hmac=9eb1e37302b931a561c13ac619dee6b34d6256a71708f7f12ee0794cfc085b03&w=826"
                                             alt="Wedding Invitation" onclick="openLightbox(this)">
                                        <img src="https://img.freepik.com/free-vector/floral-wedding-invitation-card_21799-3586.jpg?t=st=1741899982~exp=1741903582~hmac=3874e8fe4c6331cee1b7bad32659a7ec9dd9908e992837a895288ff4f9d84706&w=826"
                                             alt="Wedding Invitation" onclick="openLightbox(this)">

                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</section>

<div id="lightbox" class="lightbox">
    <span class="close" onclick="closeLightbox()">&times;</span>
    <img id="lightbox-img" src="" alt="">
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
<script src="./js/gallery.js"></script>

<jsp:include page="includes/alert.jsp"/>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach ; c:if -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (like dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <title>Rate Course</title>
    <link href="../templatemo_586_scholar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/fontawesome.css">
    <link rel="stylesheet" href="../css/templatemo-scholar.css">
    <link rel="stylesheet" href="../css/owl.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
</head>

<body>

<!-- ***** Preloader Start ***** -->
<div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
</div>
<!-- ***** Preloader End ***** -->

<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.html" class="logo">
                        <h1>RATE COURSES</h1>
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Serach Start ***** -->
                    <div class="search-input">
                        <form id="search" action="#">
                            <input type="text" placeholder="Search the course" id='searchText' name="searchKeyword" onkeypress="handle" />
                            <i class="fa fa-search"></i>
                        </form>
                    </div>
                    <!-- ***** Serach Start ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
                        <li class="scroll-to-section"><a href="#courses">Courses</a></li>
                        <li class="scroll-to-section"><a href="#team">Top 8 Rated</a></li>
                        <li class="scroll-to-section"><a href="#events">Schedule Calendar</a></li>
                        <li class="scroll-to-section"><a href="/logout">Logout</a></li>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->

<div class="main-banner" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="owl-carousel owl-banner">
                </div>
            </div>
        </div>
    </div>
</div>

<!-- <div class="services section" id="services">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-6">
        <div class="service-item">
          <div class="icon">
            <img src="assets/images/service-01.png" alt="online degrees">
          </div>
          <div class="main-content">
            <h4>Online Degrees</h4>
            <p>Whenever you need free templates in HTML CSS, you just remember TemplateMo website.</p>
            <div class="main-button">
              <a href="#">Read More</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="service-item">
          <div class="icon">
            <img src="assets/images/service-02.png" alt="short courses">
          </div>
          <div class="main-content">
            <h4>Short Courses</h4>
            <p>You can browse free templates based on different tags such as digital marketing, etc.</p>
            <div class="main-button">
              <a href="#">Read More</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="service-item">
          <div class="icon">
            <img src="assets/images/service-03.png" alt="web experts">
          </div>
          <div class="main-content">
            <h4>Web Experts</h4>
            <p>You can start learning HTML CSS by modifying free templates from our website too.</p>
            <div class="main-button">
              <a href="#">Read More</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div> -->

<div class="section about-us">
    <div class="container">
        <!-- <div class="row">
          <div class="col-lg-6 offset-lg-1">
            <div class="accordion" id="accordionExample">
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Where shall we begin?
                  </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    Dolor <strong>almesit amet</strong>, consectetur adipiscing elit, sed doesn't eiusmod tempor incididunt ut labore consectetur <code>adipiscing</code> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingTwo">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    How do we work together?
                  </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    Dolor <strong>almesit amet</strong>, consectetur adipiscing elit, sed doesn't eiusmod tempor incididunt ut labore consectetur <code>adipiscing</code> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingThree">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Why SCHOLAR is the best?
                  </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    There are more than one hundred responsive HTML templates to choose from <strong>Template</strong>Mo website. You can browse by different tags or categories.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingFour">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                    Do we get the best support?
                  </button>
                </h2>
                <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    You can also search on Google with specific keywords such as <code>templatemo business templates, templatemo gallery templates, admin dashboard templatemo, 3-column templatemo, etc.</code>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-5 align-self-center">
            <div class="section-heading">
              <h6>About Us</h6>
              <h2>What make us the best academy online?</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravid risus commodo.</p>
              <div class="main-button">
                <a href="#">Discover More</a>
              </div>
            </div>
          </div>
        </div> -->
    </div>
</div>

<section class="section courses" id="courses" >
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-heading">
                    <h6>UPT Courses</h6>
                    <h2>UPT Courses</h2>
                </div>
            </div>
        </div>
        <ul class="event_filter">
            <li>
                <a class="is_active" href="#!" data-filter="*">Show All</a>
            </li>
            <li>
                <a href="#!" data-filter=".firstYear">First Year</a>
            </li>
            <li>
                <a href="#!" data-filter=".secondYear">Second Year</a>
            </li>
            <li>
                <a href="#!" data-filter=".thirdYear">Third Year</a>
            </li>
        </ul>
        <div class="row event_box">
            <c:forEach var="course" items="${courses}">
                <div class="col-lg-4 col-md-6 align-self-center mb-30 event_outer col-md-6 firstYear">
                    <div class="events_item">
                        <div class="thumb">
                            <a href="#"><img src="../../../../templatemo_586_scholar/assets/images/course-01.jpg" alt=""></a>
                            <span class="category">${course.duration} weeks</span>
                            <span class="price"><h6>JOIN</h6></span>
                        </div>
                        <div class="down-content">
                            <span class="author">${course.lecturer}</span>
                            <h4>${course.name}</h4>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>

</section>

<!-- <div class="section fun-facts">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="wrapper">
          <div class="row">
            <div class="col-lg-3 col-md-6">
              <div class="counter">
                <h2 class="timer count-title count-number" data-to="150" data-speed="1000"></h2>
                 <p class="count-text ">Happy Students</p>
              </div>
            </div>
            <div class="col-lg-3 col-md-6">
              <div class="counter">
                <h2 class="timer count-title count-number" data-to="804" data-speed="1000"></h2>
                <p class="count-text ">Course Hours</p>
              </div>
            </div>
            <div class="col-lg-3 col-md-6">
              <div class="counter">
                <h2 class="timer count-title count-number" data-to="50" data-speed="1000"></h2>
                <p class="count-text ">Employed Students</p>
              </div>
            </div>
            <div class="col-lg-3 col-md-6">
              <div class="counter end">
                <h2 class="timer count-title count-number" data-to="15" data-speed="1000"></h2>
                <p class="count-text ">Years Experience</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div> -->

<!-- <div class="team section" id="team">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-6">
        <div class="team-member">
          <div class="main-content">
            <img src="assets/images/member-01.jpg" alt="">
            <span class="category">UX Teacher</span>
            <h4>Sophia Rose</h4>
            <ul class="social-icons">
              <li><a href="#"><i class="fab fa-facebook"></i></a></li>
              <li><a href="#"><i class="fab fa-twitter"></i></a></li>
              <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="team-member">
          <div class="main-content">
            <img src="assets/images/member-02.jpg" alt="">
            <span class="category">Graphic Teacher</span>
            <h4>Cindy Walker</h4>
            <ul class="social-icons">
              <li><a href="#"><i class="fab fa-facebook"></i></a></li>
              <li><a href="#"><i class="fab fa-twitter"></i></a></li>
              <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="team-member">
          <div class="main-content">
            <img src="assets/images/member-03.jpg" alt="">
            <span class="category">Full Stack Master</span>
            <h4>David Hutson</h4>
            <ul class="social-icons">
              <li><a href="#"><i class="fab fa-facebook"></i></a></li>
              <li><a href="#"><i class="fab fa-twitter"></i></a></li>
              <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6">
        <div class="team-member">
          <div class="main-content">
            <img src="assets/images/member-04.jpg" alt="">
            <span class="category">Digital Animator</span>
            <h4>Stella Blair</h4>
            <ul class="social-icons">
              <li><a href="#"><i class="fab fa-facebook"></i></a></li>
              <li><a href="#"><i class="fab fa-twitter"></i></a></li>
              <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>  -->
<!--
  <div class="section testimonials">
    <div class="container">
      <div class="row">
        <div class="col-lg-7">
          <div class="owl-carousel owl-testimonials">
            <div class="item">
              <p>“Please tell your friends or collegues about TemplateMo website. Anyone can access the website to download free templates. Thank you for visiting.”</p>
              <div class="author">
                <img src="assets/images/testimonial-author.jpg" alt="">
                <span class="category">Full Stack Master</span>
                <h4>Claude David</h4>
              </div>
            </div>
            <div class="item">
              <p>“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravid.”</p>
              <div class="author">
                <img src="assets/images/testimonial-author.jpg" alt="">
                <span class="category">UI Expert</span>
                <h4>Thomas Jefferson</h4>
              </div>
            </div>
            <div class="item">
              <p>“Scholar is free website template provided by TemplateMo for educational related websites. This CSS layout is based on Bootstrap v5.3.0 framework.”</p>
              <div class="author">
                <img src="assets/images/testimonial-author.jpg" alt="">
                <span class="category">Digital Animator</span>
                <h4>Stella Blair</h4>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-5 align-self-center">
          <div class="section-heading">
            <h6>TESTIMONIALS</h6>
            <h2>What they say about us?</h2>
            <p>You can search free CSS templates on Google using different keywords such as templatemo portfolio, templatemo gallery, templatemo blue color, etc.</p>
          </div>
        </div>
      </div>
    </div>
  </div> -->

<div>

</div>

<iframe src="https://calendar.google.com/calendar/embed?height=600&wkst=1&bgcolor=%237986CB&ctz=Europe%2FTirane&title=Rate%20Courses%20Calendar&showPrint=0&showCalendars=1&showTabs=0&src=cmFsZnR1c2hhMjRAZ21haWwuY29t&src=NjY4N2U1YjkwZWVmZGE1MWI5NDE0OWExNjNmZDRmZjQzMjUwZDUzMDM0NTFhMmJlZWYyNzkwYmFkMDFlNjdmZUBncm91cC5jYWxlbmRhci5nb29nbGUuY29t&color=%23039BE5&color=%237986CB" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe><div class="section events" id="events">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-heading">
                    <h6>Schedule</h6>
                    <h2>Upcoming Events</h2>
                </div>
            </div>
            <div class="col-lg-12 col-md-6">
                <div class="item">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="image">
                                <img src="../../../../templatemo_586_scholar/assets/images/event-01.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <ul>
                                <li>
                                    <span class="category">Web Design</span>
                                    <h4>UI Best Practices</h4>
                                </li>
                                <li>
                                    <span>Date:</span>
                                    <h6>16 Feb 2036</h6>
                                </li>
                                <li>
                                    <span>Duration:</span>
                                    <h6>22 Hours</h6>
                                </li>
                                <li>
                                    <span>Price:</span>
                                    <h6>$120</h6>
                                </li>
                            </ul>
                            <a href="#"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-6">
                <div class="item">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="image">
                                <img src="../../../../templatemo_586_scholar/assets/images/event-02.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <ul>
                                <li>
                                    <span class="category">Front End</span>
                                    <h4>New Design Trend</h4>
                                </li>
                                <li>
                                    <span>Date:</span>
                                    <h6>24 Feb 2036</h6>
                                </li>
                                <li>
                                    <span>Duration:</span>
                                    <h6>30 Hours</h6>
                                </li>
                                <li>
                                    <span>Price:</span>
                                    <h6>$320</h6>
                                </li>
                            </ul>
                            <a href="#"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-6">
                <div class="item">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="image">
                                <img src="../../../../templatemo_586_scholar/assets/images/event-03.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <ul>
                                <li>
                                    <span class="category">Full Stack</span>
                                    <h4>Web Programming</h4>
                                </li>
                                <li>
                                    <span>Date:</span>
                                    <h6>12 Mar 2036</h6>
                                </li>
                                <li>
                                    <span>Duration:</span>
                                    <h6>48 Hours</h6>
                                </li>
                                <li>
                                    <span>Price:</span>
                                    <h6>$440</h6>
                                </li>
                            </ul>
                            <a href="#"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="contact-us section" id="contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-6  align-self-center">
                <div class="section-heading">
                    <h6>Contact Us</h6>
                    <h2>Feel free to contact us anytime</h2>
                    <p>Thank you for choosing our templates. We provide you best CSS templates at absolutely 100% free of charge. You may support us by sharing our website to your friends.</p>
                    <div class="special-offer">
                        <span class="offer">off<br><em>50%</em></span>
                        <h6>Valide: <em>24 April 2036</em></h6>
                        <h4>Special Offer <em>50%</em> OFF!</h4>
                        <a href="#"><i class="fa fa-angle-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="contact-us-content">
                    <form id="contact-form" action="" method="post">
                        <div class="row">
                            <div class="col-lg-12">
                                <fieldset>
                                    <input type="name" name="name" id="name" placeholder="Your Name..." autocomplete="on" required>
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your E-mail..." required="">
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <textarea name="message" id="message" placeholder="Your Message"></textarea>
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <button type="submit" id="form-submit" class="orange-button">Send Message Now</button>
                                </fieldset>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <div class="container">
        <div class="col-lg-12">
            <p>Copyright © 2036 Scholar Organization. All rights reserved. &nbsp;&nbsp;&nbsp; Design: <a href="https://templatemo.com" rel="nofollow" target="_blank">TemplateMo</a></p>
        </div>
    </div>
</footer>

<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
<script src="../templatemo_586_scholar/vendor/jquery/jquery.min.js"></script>
<script src="../templatemo_586_scholar/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../js/isotope.min.js"></script>
<script src="../js/owl-carousel.js"></script>
<script src="../js/counter.js"></script>
<script src="../js/custom.js"></script>

</body>
</html>
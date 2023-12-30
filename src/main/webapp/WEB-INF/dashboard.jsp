<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach ; c:if -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (like dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

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
                    <a href="/" class="logo">
                        <h1>RATE COURSES</h1>
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Serach Start ***** -->
                    <div class="search-input">
                        <form action="${pageContext.request.contextPath}/search" method="get" class="d-flex">
                            <input type="text" name="name" placeholder="Search the course" id="searchText" />
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>

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

         <div class="row event_box">
             <c:forEach var="course" items="${courses}">
                 <div class="col-lg-4 col-md-6 align-self-center mb-30 event_outer col-md-6 firstYear">
                     <div class="events_item">
                         <div class="thumb">
                             <a href="/course/${course.id}"><img src="../templatemo_586_scholar/assets/images/course-01.jpg" alt=""></a>
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


    <div class="container" id ="events">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-heading">
                    <h6>Schedule</h6>
                    <h2>Upcoming Events</h2>
                </div>
            </div>
            <iframe src="https://calendar.google.com/calendar/embed?height=600&wkst=1&bgcolor=%237986CB&ctz=Europe%2FTirane&title=Rate%20Courses%20Calendar&showPrint=0&showCalendars=1&showTabs=0&src=cmFsZnR1c2hhMjRAZ21haWwuY29t&src=NjY4N2U1YjkwZWVmZGE1MWI5NDE0OWExNjNmZDRmZjQzMjUwZDUzMDM0NTFhMmJlZWYyNzkwYmFkMDFlNjdmZUBncm91cC5jYWxlbmRhci5nb29nbGUuY29t&color=%23039BE5&color=%237986CB" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe><div class="section events" id="events">
        </div>
    </div>


<!-- Top 8 Rated Courses -->
  <section class="top-rated-courses ">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-heading">
                    <h6>Top 8 Rated Courses</h6>
                    <h2>Our Highest Rated Courses</h2>
                </div>
            </div>
        </div>
        <div class="row">
                <div class="col-lg-3 col-md-6 align-self-center mb-30">
                    <div class="course-item">
                        <div class="thumb">
                            <!-- You can place the course image here -->
                            <img src="/img/c.png" alt="Course Image">
                        </div>
                        <div class="down-content">
                            <h4>${course.name}</h4>
                            <div class="rating">
                                Rating: ${feedback.rating}
                                <!-- You can include star icons or any other rating representation here -->
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</section>
<footer>
    <div class="container">
        <div class="col-lg-12">
            <p>Rate Courses University Project</p>
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
<script src="../js/join.js"></script>

</body>
</html>
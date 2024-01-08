
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
                        <li class="scroll-to-section"><a href="/dashboard#top" class="active">Home</a></li>
                        <li class="scroll-to-section"><a href="/dashboard#courses">Courses</a></li>
                        <li class="scroll-to-section"><a href="/dashboard#team">Top 8 Rated</a></li>
                        <li class="scroll-to-section"><a href="/dashboard#events">Schedule Calendar</a></li>
                        <li class="scroll-to-section"><a href="/logout">Logout</a></li>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
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

<br>

<div class="container">
    <div class="content">
        <h1>${course.name}</h1><br>
        <div class="info-section">
            <span class="info-label">Lecturer:</span>
            <span class="info-value">${course.lecturer}</span>
        </div>
        <div class="info-section">
            <span class="info-label">Duration:</span>
            <span class="info-value">${course.duration}</span>
        </div>
        <div class="info-section">
            <span class="info-label">Location:</span>
            <span class="info-value">${course.location}</span>
        </div>
        <div class="info-section">
            <span class="info-label">Number of Students Enrolled:</span>
            <span class="info-value">${studentsNum}</span>
        </div> <br>
        <h5>Description:</h5>
        <p>${course.description}</p>
    </div>

    <br><br>

    <a href="/feedback/${course.id}">
        <button type="button">Leave Feedback</button>
    </a>
    <br><br>

    <!-- Display Existing Feedback -->
    <h2>Existing Feedback:</h2><br>
    <c:if test="${empty feedbacks}">
        <p>No feedback yet. Be the first to leave one!</p>
    </c:if>
    <c:forEach var="feedback" items="${feedbacks}">
        <p>${feedback.student.firstName}</p>
        <p>${feedback.description}</p>
        <div class="star-rating">
            <c:forEach var="i" begin="1" end="${feedback.rating}">
                <span class="star-filled">★</span>
            </c:forEach>
            <c:forEach var="i" begin="${feedback.rating + 1}" end="5">
                <span>☆</span>
            </c:forEach> <br>
        </div>
        <!--
        test="feedback.student == user.id}">
        <button type="button">Update Feedback</button>
        <button type="button">Delete Feedback</button>
        -->
        <p>Posted on: <fmt:formatDate value="${feedback.createdAt}" pattern="yyyy-MM-dd"/></p>
    </c:forEach>

</div>




<script src="../templatemo_586_scholar/vendor/jquery/jquery.min.js"></script>
<script src="../templatemo_586_scholar/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../js/isotope.min.js"></script>
<script src="../js/owl-carousel.js"></script>
<script src="../js/counter.js"></script>
<script src="../js/custom.js"></script>
<script src="../js/join.js"></script>

</body>
</html>

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
    <link rel="stylesheet" href="../css/course.css">
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
                                <button class="border-0 purple" type="submit"><i class="fa fa-search"></i></button>
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
                    <!-- Add content to your banner if needed -->
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container mt-4">
    <div class="content">
        <h1 class="mb-4">${course.name}</h1>


        <!-- Purple bordered box for information -->
        <div class="border rounded p-3 mb-4" style="background-color:#7b6ada">
            <div class="info-section">
                <span class="info-label text-white">Lecturer:</span>
                <span class="info-value text-white">${course.lecturer}</span>
            </div>
            <div class="info-section">
                <span class="info-label text-white">Duration:</span>
                <span class="info-value text-white">${course.duration}</span>
            </div>
            <div class="info-section">
                <span class="info-label text-white">Location:</span>
                <span class="info-value text-white">${course.location}</span>
            </div>
            <div class="info-section">
                <span class="info-label text-white">Overall Rating:</span>
                <span class="info-value text-white">${course.average}</span>
            </div>
            <div class="info-section">
                <span class="info-label text-white">Number of Students Enrolled:</span>
                <span class="info-value text-white">${studentsNum}</span>
            </div>
        </div>

        <div class="mt-4">
            <h5>Description:</h5>
            <p>${course.description}</p>
        </div>

        <div class="mt-4">
            <c:choose>
                <c:when test="${enrolled eq false}">
                    <!-- If the student is not enrolled, show the enroll button -->
                    <form action="/enroll/${course.id}" method="post">
                        <button class="btn btn-primary" type="submit">Enroll in Course</button>
                    </form>
                </c:when>
                <c:otherwise>
                    <!-- If the student is enrolled, show the drop button and "Leave Feedback" button -->
                    <form action="/drop/${course.id}" method="post">
                        <button class="btn btn-danger" type="submit">Drop</button>
                    </form>

                    <!-- "Leave Feedback" button -->
                    <div class="content mt-4">
                        <a href="/feedback/${course.id}" class="btn btn-success">Leave Feedback</a>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>



        <div class="mt-4">
            <h2>Existing Feedback:</h2>
            <c:if test="${empty feedbacks}">
                <p>No feedback yet. Be the first to leave one!</p>
            </c:if>

            <div class="d-flex flex-wrap justify-content-between">
                <c:forEach var="feedback" items="${feedbacks}" varStatus="loop">
                    <div class="feedback mb-4 p-3 border rounded">
                        <p class="fw-bold">${feedback.student.firstName} ${feedback.student.lastName}</p>
                        <p>Posted on: <fmt:formatDate value="${feedback.createdAt}" pattern="dd-MM-yyyy"/></p>
                        <br>
                        <p>${feedback.description}</p>
                        <div class="star-rating">
                            <c:forEach var="i" begin="1" end="${feedback.rating}">
                                <span class="star-filled">★</span>
                            </c:forEach>
                            <c:forEach var="i" begin="${feedback.rating + 1}" end="5">
                                <span>☆</span>
                            </c:forEach>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>



<!-- JavaScript for star rating -->
<script src="../js/ExistingFeedback.js"></script>

<script src="../templatemo_586_scholar/vendor/jquery/jquery.min.js"></script>
<script src="../templatemo_586_scholar/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../js/isotope.min.js"></script>
<script src="../js/owl-carousel.js"></script>
<script src="../js/counter.js"></script>
<script src="../js/custom.js"></script>

</body>
</html>

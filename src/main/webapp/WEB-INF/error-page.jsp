
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                            <button class="border-0 purple" type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>

                    <ul class="nav">
                        <li class="scroll-to-section"><a href="/dashboard" class="active">Home</a></li>
                        <li class="scroll-to-section"><a href="/dashboard">Courses</a></li>
                        <li class="scroll-to-section"><a href="/dashboard">Top 8 Rated</a></li>
                        <li class="scroll-to-section"><a href="/calendar">Schedule Calendar</a></li>
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

<div class="content mt-4">
    <div class="content mt-4">

        <div class="alert alert-info text-center border border-purple" role="alert" style="background-color: transparent; color: #7952b3;">
            <h1><strong>Thank you!</strong></h1>
            <br>
            <h3>You have already provided feedback for this course. Your participation in improving the quality of our courses is greatly appreciated.</h3>
            <br>
            <style>
            .btn-purple-hover {
                background-color: #7952b3;
                color: white;
                transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
            }

            .btn-purple-hover:hover {
                background-color: white;
                color: #7952b3;
            }
            </style>

            <a href="/dashboard" class="btn btn-purple-hover">Go to Dashboard</a>
        </div>
    </div>



</div>
<div id="calendar"></div>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="../templatemo_586_scholar/vendor/jquery/jquery.min.js"></script>
<script src="../templatemo_586_scholar/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../js/isotope.min.js"></script>
<script src="../js/owl-carousel.js"></script>
<script src="../js/counter.js"></script>
<script src="../js/custom.js"></script>

</body>
</html>

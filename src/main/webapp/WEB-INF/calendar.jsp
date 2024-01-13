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
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <div class="section-heading">
                <h2>Upcoming Courses</h2>
            </div>
        </div>
    </div>
    <div class="row">
        <style>
        .iframe-container {
        overflow: hidden;
        /* 16:9 aspect ratio for responsive iframe */
        padding-bottom: 56.25%;
        position: relative;
        height: 0;
        }

        .iframe-container iframe {
        border: solid 1px #777;
        height: 100%;
        left: 0;
        position: absolute;
        top: 0;
        width: 100%;
        }
        </style>
        <div class="col-lg-12">
            <div class="iframe-container">
                <iframe src="https://calendar.google.com/calendar/embed?height=600&wkst=1&bgcolor=%237986CB&ctz=Europe%2FTirane&title=Rate%20Courses%20Calendar&showPrint=0&showCalendars=1&showTabs=0&src=cmFsZnR1c2hhMjRAZ21haWwuY29t&src=NjY4N2U1YjkwZWVmZGE1MWI5NDE0OWExNjNmZDRmZjQzMjUwZDUzMDM0NTFhMmJlZWYyNzkwYmFkMDFlNjdmZUBncm91cC5jYWxlbmRhci5nb29nbGUuY29t&color=%23039BE5&color=%237986CB"
                        frameborder="0" scrolling="no"></iframe>
            </div>
        </div>
    </div>
</div>

<div id="calendar"></div>


<footer>
    <div class="container">
        <div class="col-lg-12">
            <p>Rate Courses University Project</p>
        </div>
    </div>
</footer>
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

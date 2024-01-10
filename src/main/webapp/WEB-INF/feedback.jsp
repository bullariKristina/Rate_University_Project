<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <title>Rate Course</title>
  <link rel="stylesheet" href="../css/feedback.css">
</head>

<body>


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

<div class="wrapper">
  <form:form action="/submitFeedback" method="post" modelAttribute="newFeedback">
  <form:hidden path="student" value="${user.id}"/>
  <form:hidden path="course" value="${course.id}"/>

  <div class="content">We highly value your feedback! Kindly take a moment to rate your experience and provide us with your valuable feedback.</div>
  <br>
  <form path="rating">
    <div class="rate-box">
      <input type="radio" id="star1" name="rating" value="1"/>
      <label for="star1"></label>
      <input type="radio" id="star2" name="rating" value="2"/>
      <label for="star2"></label>
      <input type="radio" id="star3" name="rating" value="3"/>
      <label for="star3"></label>
      <input type="radio" id="star4" name="rating" value="4"/>
      <label for="star4"></label>
      <input type="radio" id="star5" name="rating" value="5"/>
      <label for="star5"></label>
    </div><br>
      <form:textarea path="description" placeholder="Describe your experience" rows="3" cols="30"/>
    <br> <br>

    <input type="submit" value="Submit"/>
    </form:form>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- JavaScript for star rating -->
<script src="../js/feedback.js"></script>


</body>
</html>

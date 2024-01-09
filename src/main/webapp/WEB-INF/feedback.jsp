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
  <!-- <link rel="stylesheet" href="../css/feedback.css"> -->
</head>

<body>

<!-- ***** Preloader Start *****
<div id="js-preloader" class="js-preloader">
  <div class="preloader-inner">
    <span class="dot"></span>
    <div class="dots">
      <span></span>
      <span></span>
      <span></span>
    </div>
  </div>
</div> -->

<div class="wrapper">
  <form:form action="/submitFeedback" method="post" modelAttribute="newFeedback">
    <form:hidden path="student" value="${user.id}"/>
    <form:hidden path="course" value="${course.id}"/>

    <div class="content">We highly value your feedback! Kindly take a moment to rate your experience and provide us with your valuable feedback.</div>
    <br>
    <div class="rate-box">
      <form:radiobutton path="rating" value="1" label=""/>
      <form:radiobutton path="rating" value="2" label=""/>
      <form:radiobutton path="rating" value="3" label=""/>
      <form:radiobutton path="rating" value="4" label=""/>
      <form:radiobutton path="rating" value="5" label=""/>
    </div><br>
    <form:textarea path="description" placeholder="Describe your experience" rows="3" cols="30"/>
    <br>

    <input type="submit" value="Submit Feedback"/>
  </form:form>
</div>


<!-- JavaScript for star rating -->
<!-- <script src="../js/feedback.js"></script> -->


</body>
</html>

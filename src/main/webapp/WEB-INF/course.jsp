<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Course Details</title>
    <link rel="stylesheet" href="/css/course.css">

</head>
<body>
<div class="background-header">
    <div class="content">
        <h1>Course Details: ${course.name}</h1>
        <h2>Description:</h2>
        <p>${course.description}</p>

        <!-- Feedback Form -->
        <h2>Feedback</h2>
        <form action="/submitFeedback" method="post">
            <input type="text" name="feedback" placeholder="Enter your feedback" required><br><br>

            <!-- Hidden input field for storing the selected rating -->
            <input type="hidden" id="rating" name="rating" value="0">

            <!-- Star rating section -->
            <h2>Your Rating</h2>
            <div class="star-rating" id="starRating">
                <span class="star" data-value="1">☆</span>
                <span class="star" data-value="2">☆</span>
                <span class="star" data-value="3">☆</span>
                <span class="star" data-value="4">☆</span>
                <span class="star" data-value="5">☆</span>
            </div> <br>

            <input type="submit" value="Submit Feedback">
        </form>

        <!-- Display Existing Feedback -->
        <h2>Existing Feedback:</h2>
        <c:forEach var="feedback" items="${feedbackList}">
            <p>${feedback.description}</p>
            <div class="star-rating">
                <c:forEach var="i" begin="1" end="${feedback.rating}">
                    <span class="star-filled">★</span>
                </c:forEach>
                <c:forEach var="i" begin="${feedback.rating + 1}" end="5">
                    <span>☆</span>
                </c:forEach>
            </div>
            <p>Updated at: <fmt:formatDate value="${feedback.updatedAt}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
            <hr>
        </c:forEach>
    </div>
</div>

<!-- JavaScript for star rating -->
<script src="/js/feedback.js"></script>

</body>
</html>

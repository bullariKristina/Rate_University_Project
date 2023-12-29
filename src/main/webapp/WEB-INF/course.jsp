<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- c:out ; c:forEach ; c:if -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (like dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Course Details</title>
    <link rel="stylesheet" href="/css/course.css">
</head>

<body>
    <div class="background-header">
        <!-- Your existing content -->
        <div class="content">
            <h1>Course Details: ${course.name}</h1>
            <h2>Description:</h2>
            <p> ${course.description}</p>

            <!-- Feedback Form -->
            <h2>Feedback</h2>
            <form action="/submitFeedback" method="post">
                <input type="text" name="feedback" placeholder="Enter your feedback" required><br><br>
                <!-- Rating from 1 to 5 -->
                <label for="rating">Rate (1 to 5):</label>
                <input type="number" id="rating" name="rating" min="1" max="5" required><br><br>
                <input type="submit" value="Submit Feedback">
            </form>

            <c:forEach var="feedback" items="${feedbackList}">
                <p>${feedback.description}</p>
            </c:forEach>
        </div>
    </div>
</body>
</html>


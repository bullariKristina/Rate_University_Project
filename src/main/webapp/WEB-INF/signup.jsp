<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach ; c:if -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (like dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Login and Registration </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/signup.css">
</head>
<body>
<div class="container">
    <input type="checkbox" id="flip">
    <div class="cover">
        <div class="front">
            <img src="../img/upt.png" alt="">
            <div class="text">
                <span class="text-1">UPT<br>Rate Courses</span>
                <span class="text-2">Let's get connected</span>
            </div>
        </div>
    </div>
    <div class="forms">
        <div class="form-content">
            <!-- LOGIN FORM-->
            <div class="login-form">
                <div class="title">Login</div>
                <form:form action="/login" method="post" modelAttribute="newLogin">
                    <div class="input-boxes">
                        <div class="input-box">
                            <form:label path="email"></form:label>
                            <i class="fas fa-envelope"></i>
                            <form:input class="form-control" type="text" path="email" placeholder="Enter your email"></form:input>
                        </div>
                        <div class="input-box">
                            <form:label path="password"></form:label>
                            <i class="fas fa-lock"></i>
                            <form:input type="password" path="password" placeholder="Enter your password" ></form:input>
                        </div>

                        <form:errors path="email" class="errors text-danger"></form:errors>
                        <form:errors path="password" class="errors text-danger"></form:errors>
                        <div class="button input-box">
                            <input type="submit" value="submit">
                        </div>
                        <div class="text sign-up-text">Don't have an account? <label for="flip">Sigup now</label></div>
                    </div>
                </form:form>
            </div>

            <!-- REGISTER FORM-->
            <div class="signup-form">
                <div class="title">Signup</div>
                <form:form action="/register" method="post" modelAttribute="newStudent" >
                    <div class="input-boxes">
                        <div class="input-box">
                            <form:label path="firstName"></form:label>
                            <i class="fas fa-user-graduate"></i>
                            <form:input type="text"  placeholder="Enter your first name" path="firstName"></form:input>
                        </div>
                        <div class="input-box">
                            <form:label path="lastName"></form:label>
                            <i class="fas fa-user-graduate"></i>
                            <form:input type="text"  placeholder="Enter your last name" path="lastName"></form:input>
                        </div>
                        <div class="input-box">
                            <form:label path="email"></form:label>
                            <i class="fas fa-envelope"></i>
                            <form:input type="text" placeholder="Enter your email" path="email"></form:input>
                        </div>
                        <div class="input-box">
                            <form:label path="password"></form:label>
                            <i class="fas fa-lock"></i>
                            <form:input type="password"  placeholder="Enter your password" path="password"></form:input>
                        </div>
                        <div class="input-box">
                            <form:label path="confirm"></form:label>
                            <i class="fas fa-lock"></i>
                            <form:input type="password"  placeholder="Enter your confirm password" path="confirm"></form:input>
                        </div>
                        <div class="button input-box">
                            <input type="submit" value="Sumbit">
                        </div>
                        <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>

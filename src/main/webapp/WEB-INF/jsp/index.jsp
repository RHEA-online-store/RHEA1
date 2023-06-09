<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
<head>
  <title>Главная</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>


<head>
  <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <style type="text/css">
        .logos_block {
            padding: 5px;
        }

        .logos_block img {
            height: 40px;
            margin-right: 10px;
            margin-bottom: 10px;
        }
    </style>
  <title>RHEA - online store</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>


<body>
<div>
  <h3>${pageContext.request.userPrincipal.name}</h3>
  <sec:authorize access="!isAuthenticated()">
    <h4><a href="/login">Войти</a></h4>
    <h4><a href="/registration">Зарегистрироваться</a></h4>
  </sec:authorize>
  <sec:authorize access="isAuthenticated()">
    <h4><a href="/logout">Выйти</a></h4>
  </sec:authorize>
  <h4><a href="/shop">Shop</a></h4>
  <h4><a href="/admin">Пользователи (только админ)</a></h4>
</div>
</body>


<body>
<div class="container">
  <div th:replace="~{navigation :: navigation(Home)}"></div>
  <h2 style="color: #005139;">RHEA - online store</h2>
  <p style="text-align: justify;">
    RHEA store on the Spring (Java) framework. Specifically, for this project I used Spring Boot, MVC
    (model-view-controller), the Thymeleaf templating engine, and Spring Security for authentication and access control.
    I also took the Hibernate ORM as an implementation of the Java Persistence API. For the database for this project I used PostgreSQL
    and the Git version control system. </p>

  <div th:replace="footer :: footer"></div>
</div>
</body>


</html>
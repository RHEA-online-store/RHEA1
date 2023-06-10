<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="th" uri="http://www.thymeleaf.org"%>
<%@ taglib prefix="sec" uri="http://www.thymeleaf.org/extras/spring-security"%>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Spring Store</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <div th:replace="fragments/navigation :: navigation(activeTab)"></div>
  <h2>Details &#127811;</h2>
  <span><%="id: " + selectedProduct.getId() + ", " + selectedProduct.getTitle() + " " + selectedProduct.getPrice() + "руб."%></span>
  <p style="margin-top: 10px;">
    <a class="btn btn-success"
       href="/cart/add/<%=selectedProduct.getId()%>?topage=stayonpage">Add to cart
    </a>
  </p>
</div>
</body>
</html>
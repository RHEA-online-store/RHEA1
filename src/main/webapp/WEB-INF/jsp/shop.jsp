<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.w3.org/1999/xhtml" lang="en">

<head>
  <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Spring Store</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
  <div th:replace="~{navigation :: navigation('Shop')}"></div>
  <h2>Shop</h2>

  <span th:if="${products.content.isEmpty()}">Products list is empty</span>

    <table>
        <thead>
        <th>ID</th>
        <th>Title</th>
        <th>Price, руб.</th>
        <th></th>
        <th></th>
        <th></th>
        </thead>
        <c:forEach items="${products}" var="product">
          <tr>
            <td>${product.ID}</td>
            <td>${product.Title}</td>
            <td>${product.Price}</td>
            <td>
            <td><a class="btn btn-secondary" th:href="@{'/details/' + ${product.id}}">Details</a></td>
            <td><a class="btn btn-success" th:href="@{'/cart/add/' + ${product.id}}">Add to cart</a></td>
            <td sec:authorize="hasRole('ADMIN')"><a class="btn btn-danger" th:href="@{'/remove/' + ${product.id}}">Delete</a>
            </td>

          </tr>
        </c:forEach>
      </table>
  </table>

</div>
</body>

</html>
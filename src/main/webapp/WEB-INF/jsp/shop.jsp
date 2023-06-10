<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html xmlns:th="http://www.thymeleaf.org" xmlns:sec="http://www.w3.org/1999/xhtml" lang="en">
  <head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RHEA Store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </head>
  <body>
    <div class="container">
      <div th:replace="~{navigation :: navigation(Shop)}"></div>
      <h2>Shop</h2>
      <div class="section search">
        <h3>Поиск</h3>
        <form action="/searchProducts" method="post">
          <input type="text" name="search-term" class="text-input" placeholder="Введите название товара...">
        </form>
      </div>
      <span th:if="${products.getSize() == 0}">Products list is empty</span>
      <table th:if="${products.getSize() > 0}" class="table table-hover">
        <thead class="thead-light">
          <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Price, руб.</th>
            <th></th>
            <th></th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <tr th:each="product : ${products.content}">
            <td th:text="${product.id}"></td>
            <td th:text="${product.title}"></td>
            <td th:text="${product.price}"></td>
            <td><a class="btn btn-secondary" th:href="@{'/details/' + ${product.id}}">Details</a></td>
            <td><a class="btn btn-success" th:href="@{'/cart/add/' + ${product.id}}">Add to cart</a></td>
            <td sec:authorize="hasRole('ADMIN')"><a class="btn btn-danger" th:href="@{'/remove/' + ${product.id}}">Delete</a></td>
          </tr>
        </tbody>
      </table>
    </div>
  </body>
</html>
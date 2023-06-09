<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>

<html xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/extras/spring-security" lang="en">

<body>
<div th:fragment="navigation(activeTab)">
  <nav class="navbar navbar-expand navbar-light bg-light">
    <a class="navbar-brand" style="color: #457725;" href="/">ℝℍ𝔼𝔸
      <!--                 <img src="images/programming.gif">-->
    </a>
    <div id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item" th:classappend="${activeTab == 'Home' ? 'active' : ''}">
          <a class="nav-link" th:href="@{/}">Home</a>
        </li>
        <li class="nav-item" th:classappend="${activeTab == 'Shop' ? 'active' : ''}">
          <a class="nav-link" th:href="@{/shop}">Shop</a>
        </li>
        <li class="nav-item" th:classappend="${activeTab == 'Cart' ? 'active' : ''}">
          <a class="nav-link" th:href="@{/cart}">Cart</a>
        </li>
        <li class="nav-item" sec:authorize="hasRole('SELLER') or hasRole('USER')">
          <a class="nav-link" th:href="@{/orders}">Orders</a>
        </li>
        <li class="nav-item" sec:authorize="isAnonymous()">
          <a class="nav-link btn btn-success" th:href="@{/login}">Login</a>
        </li>
        <li class="nav-item" sec:authorize="isAuthenticated()">
          <form th:action="@{/logout}" method="post">
            <input type="submit" class="btn btn-info" value="Logout"/>
          </form>
        </li>
      </ul>
    </div>
  </nav>
</div>
</body>
</html>
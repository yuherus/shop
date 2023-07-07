<%@ page import="com.example.demo.model.ParentCategory" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Huy_Laptop
  Date: 7/4/2023
  Time: 10:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<nav class="py-0.75 bg-body-tertiary ">
  <div class="container-fluid d-flex flex-wrap justify-content-end">
    <ul class="nav">
      <li class="nav-item"><a href="#" class="nav-link link-body-emphasis px-2">Trợ giúp</a></li>
      <li class="nav-item"><a href="#" class="nav-link link-body-emphasis px-2">Hệ thống cửa hàng</a></li>
      <li class="nav-item d-flex"><a href="#" class="nav-link link-body-emphasis px-2">English</a>
        <a href="#" class="nav-link link-body-emphasis px-2 ">Tiếng Việt</a>
      </li>
    </ul>
  </div>
</nav>

<nav class="navbar navbar-expand-sm navbar-light sticky-ontop border-bottom border-secondary" style="background-color: #fff;">
  <div class="container-fluid">
    <a class="navbar-brand" href="index">
      <img src="./asset/img/Uniqlo_logo_Japanese.svg.png" alt="logo" class="logo_img">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item dropdown">
          <a class="nav-link px-3 fs-6 fw-bold text-dark" href="product" id="navbarNuDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            NỮ
          </a>
          <div class="dropdown-menu " aria-labelledby="navbarDropdown">
            <c:forEach items="${listParentCategory}" var="pcategory">
              <a class="dropdown-item" href="category?pcateId=${pcategory.parentCategoryId}">${pcategory.parentCategoryName}</a>
            </c:forEach>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link px-3 fs-6 fw-bold text-dark" href="product" id="navbarNamDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            NAM
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <c:forEach items="${listParentCategory}" var="pcategory">
              <a class="dropdown-item" href="category?pcateId=${pcategory.parentCategoryId}">${pcategory.parentCategoryName}</a>
            </c:forEach>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link px-3 fs-6 fw-bold text-dark" href="product" id="navbarTreemDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            TRẺ EM
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <c:forEach items="${listParentCategory}" var="pcategory">
            <a class="dropdown-item" href="category?pcateId=${pcategory.parentCategoryId}">${pcategory.parentCategoryName}</a>
            </c:forEach>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link px-3 fs-6 fw-bold text-dark" href="product" id="navbarSosinhDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            TRẺ SƠ SINH
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <c:forEach items="${listParentCategory}" var="pcategory">
              <a class="dropdown-item" href="category?pcateId=${pcategory.parentCategoryId}">${pcategory.parentCategoryName}</a>
            </c:forEach>
          </div>
        </li>
      </ul>

      <div class="d-flex">
        <button class="btn" id="search-button"  type="button"><i class="bi bi-search" style="font-size: 20px;"></i></button>
        <div class="dropdown">
          <button class="btn" type="button" id="navbarMenuDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <a href=<%= (session.getAttribute("user1") == null) ? "login.jsp":"javascript:void(0);" %>><i class="bi bi-person" style="font-size: 24px; color:#000000"></i></a>
          </button>
          <% if (session.getAttribute("user1") != null) { %>
          <div class="dropdown-menu" aria-labelledby="navbarMenuDropdown">
            <a class="dropdown-item" href="#">Hồ sơ</a>
            <a class="dropdown-item" href="#">Phiếu giảm giá</a>
            <a class="dropdown-item" href="#">Lịch sử mua hàng</a>
            <a class="dropdown-item" href="#">Lịch sử đơn hàng</a>
            <a class="dropdown-item" href="#">Yêu thích</a>
            <a class="dropdown-item" href="logout">Đăng xuất</a>
          </div>
          <%
            }
          %>
        </div>
        <button class="btn " type="button"><i class="bi bi-heart " style="font-size: 20px;"></i></button>
        <button class="btn " type="button"><a href="cart" style="color: black"><i class="bi bi-cart3" style="font-size: 20px; "></i></a></button>
      </div>

      <div id="search-bar" class="hidden">
        <form action="search" method="post">
          <input type="text" id="search-input" name="search-input" placeholder="Nhập từ khóa">
          <button id="search-btn" type="submit" ><i class="bi bi-search" style="font-size: 20px;"></i></button>
          <button id="close-btn" type="button"><i class="bi bi-x-lg" style="font-size: 20px;"></i></button>
        </form>
      </div>
    </div>
  </div>
</nav>

<script>
  const header = document.getElementById('header');
  const searchButton = document.getElementById('search-button');
  const searchBar = document.getElementById('search-bar');
  searchButton.addEventListener('click', function() {
    searchBar.classList.remove('hidden');
  });
  const closeButton = document.getElementById('close-btn');
  closeButton.addEventListener('click', function() {
    searchBar.classList.add('hidden');
  });
</script>
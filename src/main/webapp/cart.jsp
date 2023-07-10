<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Huy_Laptop
  Date: 7/7/2023
  Time: 12:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GIỎ HÀNG | UNIQLO</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
  <link rel="stylesheet" href="./asset/css/style.css">
  <link rel="stylesheet" href="./asset/css/detail.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="contained">
  <div class=" ms-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item "><a href="#" class="text-black-50">UNIQLO</a></li>
        <li class="breadcrumb-item active" aria-current="page">GIỎ HÀNG</li>
      </ol>
    </nav>
  </div>
  <h2 class="fw-bold my-5">GIỎ HÀNG</h2>
  <div class="mt-3 mb-5 d-flex justify-content-between">
    <div class="left-cart">
      <c:forEach items="${sessionScope.cart}" var="cartItem">
      <div class="cart-item d-flex border-bottom border-dark-50 mt-3 pb-4">
        <div class="image-section">
          <img style="width:100%;" src="${cartItem.product.imgLink}" alt="">
        </div>
        <div class="ms-4">
          <div class="cart-info-wrap d-flex">
            <div class="cart-info d-block">
              <p class="fs-4 fw-bold">${cartItem.product.productName}</p>
              <div class="fs-6 mt-1 text-black-50">Mã sản phẩm: ${cartItem.product.productId}</div>
              <div class="fs-6 mt-1">Màu sắc: 00 WHITE</div>
              <div class="fs-6 mt-1">Kích cỡ: Nam S</div>
              <div class="fs-6 mt-3">
                <c:if test="${cartItem.product.onsale == false}"><fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${cartItem.product.price}" /> VNĐ</c:if>
                <c:if test="${cartItem.product.onsale == true}"><fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${cartItem.product.salePrice}" /> VNĐ</c:if>
              </div>
            </div>
            <div class="remove-icon d-flex justify-content-end mt-1" style="height:30px; width:30px; font-size: 30px; background-image:url('https://asset.uniqlo.com/g/icons/remove.svg')"></div>
          </div>
          <div class="cart-item-total mt-3 d-flex justify-content-between">
            <div>
              <span class="fs-6 fw-bold">SỐ LƯỢNG</span>
              <select class="form-select mt-3" aria-label="Default select example">
                <option selected>${cartItem.quantity}</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
              </select>
            </div>
            <div class="fs-6">
              TỔNG: <span class="fw-bold">
                <c:if test="${cartItem.product.onsale == false}"><fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${cartItem.product.price * cartItem.quantity}" /> VNĐ</c:if>
                <c:if test="${cartItem.product.onsale == true}"><fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${cartItem.product.salePrice * cartItem.quantity}" /> VNĐ</c:if>
               </span>
            </div>
          </div>
        </div>
      </div>
      </c:forEach>
    </div>
    <div class="right-cart">
      <div class="border border-dark-50 py-4 px-3">
        <div class="fs-5 fw-bold mb-4">TỔNG ĐƠN HÀNG| ${sessionScope.cart.size()} SẢN PHẨM</div>
        <c:set var="total" value="0" />
        <c:forEach items="${sessionScope.cart}" var="item">
          <c:if test="${item.product.onsale == false}"> <c:set var="subtotal" value="${item.product.price * item.quantity}" /></c:if>
          <c:if test="${item.product.onsale == true}">  <c:set var="subtotal" value="${item.product.salePrice * item.quantity}" /></c:if>
          <c:set var="total" value="${total + subtotal}" />
        </c:forEach>
        <div class="d-flex justify-content-between fs-6"><span class="text-secondary">Tổng cộng</span> <span class="text-secondary"><fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${total}" /> VNĐ</span></div>
        <div class="d-flex justify-content-between fs-6"><span class="text-secondary">Phí vận chuyển</span> <span class="text-secondary">0 VNĐ</span></div>
        <div class="d-flex justify-content-between fs-5 mt-4"><span class="fw-bold ">TỔNG</span> <span class="fw-bold"><fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${total}" /> VNĐ</span></div>
        <div class="d-flex justify-content-between fs-6"><span class="text-secondary">Đã bao gồm thuế giá trị gia tăng</span> <span class="text-secondary"> <fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${total * 0.1}" /> VNĐ</span></div>
        <div class="d-flex justify-content-between align-items-end mt-4"><span class="fw-bold fs-5">TỔNG ĐƠN ĐẶT HÀNG</span> <span class="fw-bold fs-6 ">
          <fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${total * 1.1}" /> VNĐ</span></div>
      </div>

      <div class="cart-right border-bottom border-top border-dark-50 py-3 my-4 fw-medium fs-6"><img style="width:8%; margin-right:8px;" src="https://cdn.onlinewebfonts.com/svg/img_268521.png" alt=""><span>Phiếu giảm giá</span></div>
      <div class="cart-right fw-medium py-2 fs-6"><img style="width:8%; margin-right:8px;" src="https://asset.uniqlo.com/g/icons/gift.svg" alt=""><span>Tùy chọn quà tặng</span></div>
      <div class="my-4 d-flex"> <span class="fw-medium fs-6 pe-3">Miễn phí giao hàng áp dụng cho đơn hàng giao tận nơi từ 1.500.000VND và tất cả các đơn nhận tại cửa hàng (Click & Collect).</span> <img style="width:20px" src="https://asset.uniqlo.com/g/icons/info.svg" alt=""></div>
      <button class="product-btn mt-3 py-3 px-3 fw-bold" style=" background-color:#ff0000; color:#fff; width:100%; border:none;">THANH TOÁN</button>
      <button class="product-btn my-3 py-3 px-3 fw-bold" style="border:1px solid #000; background-color:#fff; width:100%;">TIẾP TỤC MUA SẮM</button>
      <span class="text-secondary">Đặt mua thêm 766.000 VND (bao gồm VAT), hoặc chọn hình thức Click & Collect, để được miễn phí giao hàng.</span>
    </div>
  </div>

  <h2 class="my-5 pt-2">ĐÃ XEM GẦN ĐÂY</h2>

  <div class="swiper mySwiper">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
        <div class="card card-content" >
          <img src="https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/424873/item/vngoods_69_424873.jpg?width=750"  alt="product-img">
          <div class="m-2 ">
            <div class="d-inline"><img src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/424873/chip/goods_08_424873_chip.jpg" style="width: 8%;" alt="">
            </div>
            <div class="d-flex justify-content-between my-1 ">
              <span class="text-secondary fw-bold">NỮ</span>
              <span class="text-secondary fw-bold">XS-XXL</span>
            </div>
            <span class="text-dark fw-bold fs-6 mb-4">U Áo Thun Cổ Tròn Ngắn Tay</span>
            <div class="text-secondary">NEW</div>
            <div class="old-price">299000 VNĐ</div>
            <div class="sale-price">244000 VNĐ</div>
            <div class="product-rate">
              <i class="bi bi-star-fill text-warning"></i>
              <i class="bi bi-star-fill text-warning"></i>
              <i class="bi bi-star-fill text-warning"></i>
              <i class="bi bi-star-fill text-warning"></i>
              <i class="bi bi-star-half text-warning"></i>
              <span class="ms-2">(999+)</span>
            </div>
          </div>
        </div>
      </div>
      <div class="swiper-slide">Slide 2</div>
      <div class="swiper-slide"><div class="card card-content" >
        <img src="https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/424873/item/vngoods_69_424873.jpg?width=750"  alt="product-img">
        <div class="m-2 ">
          <div class="d-inline"><img src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/424873/chip/goods_08_424873_chip.jpg" style="width: 8%;" alt="">
          </div>
          <div class="d-flex justify-content-between my-1 ">
            <span class="text-secondary fw-bold">NỮ</span>
            <span class="text-secondary fw-bold">XS-XXL</span>
          </div>
          <span class="text-dark fw-bold fs-6 mb-4">U Áo Thun Cổ Tròn Ngắn Tay</span>
          <div class="text-secondary">NEW</div>
          <div class="old-price">299000 VNĐ</div>
          <div class="sale-price">244000 VNĐ</div>
          <div class="product-rate">
            <i class="bi bi-star-fill text-warning"></i>
            <i class="bi bi-star-fill text-warning"></i>
            <i class="bi bi-star-fill text-warning"></i>
            <i class="bi bi-star-fill text-warning"></i>
            <i class="bi bi-star-half text-warning"></i>
            <span class="ms-2">(999+)</span>
          </div>
        </div>
      </div>
      </div>
      <div class="swiper-slide">Slide 4</div>
      <div class="swiper-slide"><div class="card card-content" >
        <img src="https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/424873/item/vngoods_69_424873.jpg?width=750"  alt="product-img">
        <div class="m-2 ">
          <div class="d-inline"><img src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/424873/chip/goods_08_424873_chip.jpg" style="width: 8%;" alt="">
          </div>
          <div class="d-flex justify-content-between my-1 ">
            <span class="text-secondary fw-bold">NỮ</span>
            <span class="text-secondary fw-bold">XS-XXL</span>
          </div>
          <span class="text-dark fw-bold fs-6 mb-4">U Áo Thun Cổ Tròn Ngắn Tay</span>
          <div class="text-secondary">NEW</div>
          <div class="old-price">299000 VNĐ</div>
          <div class="sale-price">244000 VNĐ</div>
          <div class="product-rate">
            <i class="bi bi-star-fill text-warning"></i>
            <i class="bi bi-star-fill text-warning"></i>
            <i class="bi bi-star-fill text-warning"></i>
            <i class="bi bi-star-fill text-warning"></i>
            <i class="bi bi-star-half text-warning"></i>
            <span class="ms-2">(999+)</span>
          </div>
        </div>
      </div>
      </div>
      <div class="swiper-slide">Slide 6</div>
    </div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>
  </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
  var swiper = new Swiper(".mySwiper", {
    slidesPerView: 4,
    spaceBetween: 30,
    keyboard: {
      enabled: true,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  });
</script>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Huy_Laptop
  Date: 7/5/2023
  Time: 12:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TẠO MỘT TÀI KHOẢN | UNIQLO</title>
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
        <div class="page-layout row ms-2">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item "><a href="#" class="text-black-50">UNIQLO</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Nam</li>
                </ol>
            </nav>
        </div>
        <div class="my-4 pd-4 ms-4 fw-bold fs-3">SẢN PHẨM</div>
        <ul class="nav nav-underline nav-fill">
            <li class="nav-item">
                <a class="nav-link active fw-bold fs-5" aria-current="page" href="#">NỮ</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-secondary fw-bold fs-5" href="#">NAM</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-secondary fw-bold fs-5" href="#">TRẺ EM</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-secondary fw-bold fs-5">TRẺ SƠ SINH</a>
            </li>
        </ul>

        <div class="poster"> <img style="width:100%" src="https://im.uniqlo.com/global-cms/spa/res8ccc08f5c430bfdacfd2f7b132cc9b65fr.jpg" alt="poster"></div>
        <div class="row">
            <div class="result d-flex col-12 justify-content-between">
                <div class="col-auto my-5"><p class="fw-bold fs-6">Kết quả</p>
                    <p class="fs-6">${productList.size()} Items</p>
                </div>
                <div class="col-auto my-5">
                    <p class="fw-bold fs-6">Sắp xếp theo</p>
                    <select class="form-select" style="border-radius: 0;" aria-label="Default select example">
                        <option selected>Tiêu biểu</option>
                        <option value="1">Tiêu biểu</option>
                        <option value="2">Hàng mới về</option>
                        <option value="3">Từ thấp đến cao</option>
                        <option value="4">Từ cao đến thấp</option>
                        <option value="5">Xếp hạng cao nhất</option>
                    </select>
                </div>
            </div>
            <div class="col-3">
                <div class="accordion accordion-flush" id="accordionFlushExample">
                <c:forEach items="${listParentCategory}" var="pcategory">
                    <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse${pcategory.parentCategoryId}" aria-expanded="false" aria-controls="flush-collapse${pcategory.parentCategoryId}">
                                        ${pcategory.parentCategoryName}
                                </button>
                            </h2>
                        <div id="flush-collapse${pcategory.parentCategoryId}" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                <ul class="no-dot">
                                    <li><a href="category?pcateId=${pcategory.parentCategoryId}" class="text-dark" style="text-decoration: none; ">Tất Cả ${pcategory.parentCategoryName}</a></li>
                                    <c:forEach items="${listCategory}" var="category">
                                        <c:if test="${category.parentCategory.parentCategoryId == pcategory.parentCategoryId}">
                                        <li><a href="category?cateId=${category.categoryId}" class="text-dark" style="text-decoration: none; ">${category.categoryName}</a></li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                </div>
            </div>
            <div class="col-9">
                <div class="row">
                    <c:forEach items="${productList}" var="product">
                    <div class="col-3">
                        <a href="detail?pid=${product.productId}" style="text-decoration: none">
                            <div class="card card-content" >
                                <img src="${product.imgLink}"  alt="product-img">
                                <div class="m-2 ">
                                    <div class="d-inline"><img src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/424873/chip/goods_08_424873_chip.jpg" style="width: 8%;" alt="">
                                    </div>
                                    <div class="d-flex justify-content-between my-1 ">
                                        <span class="text-secondary fw-bold">NAM</span>
                                        <span class="text-secondary fw-bold">XS-XXL</span>
                                    </div>
                                    <span class="text-dark fw-bold fs-6 mb-4">${product.productName}</span>
                                    <div class="text-secondary">NEW</div>
                                    <c:if test="${product.onsale == true}">
                                        <div class="old-price">${product.price} VNĐ</div>
                                        <div class="sale-price">${product.salePrice} VNĐ</div>
                                    </c:if>
                                    <c:if test="${product.onsale == false}">
                                        <div class="text-dark fw-bold fs-5">${product.price} VNĐ</div>
                                    </c:if>
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
                        </a>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-3"></div>
            <div class="col-9 text-center py-4 border-top">
                <a href="" class="fw-bold more-product" style="text-decoration: none; color:#000000">TẢI THÊM <img src="https://www.svgrepo.com/download/80156/down-arrow.svg" style=" flex-shrink: 0;width: 1rem;height: 1rem; background-repeat: no-repeat;  background-size: 1rem; margin-left: 4px; " alt=""></a>
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
                <div class="swiper-slide">Slide 3</div>
                <div class="swiper-slide">Slide 4</div>
                <div class="swiper-slide">Slide 5</div>
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


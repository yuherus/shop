<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UNIQLO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="./asset/css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body>

<jsp:include page="/header.jsp"></jsp:include>

<div class="swiper mySwiper1 swiper-v">
    <div class="swiper-wrapper">
        <div class="swiper-slide">
            <div class="swiper2 mySwiper2 swiper-h">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="./asset/img/slide1.jpg" alt="img1">
                    </div>
                    <div class="swiper-slide">
                        <img src="./asset/img/slide2.jpg" alt="img2">
                    </div>
                    <div class="swiper-slide">
                        <img src="./asset/img/slide3.jpg" alt="img3">
                    </div>
                    <div class="swiper-slide">
                        <img src="./asset/img/slide4.jpg" alt="img4">
                    </div>
                </div>
                <!-- Chưa fix được để nó hiện lên :( -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
        <div class="swiper-slide">
            <div class="swiper2 mySwiper2 swiper-h">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="./asset/img/slide5.jpg" alt="img5">
                    </div>
                    <div class="swiper-slide">
                        Slide 2
                    </div>
                    <div class="swiper-slide">
                        Slide 3
                    </div>
                    <div class="swiper-slide">
                        Slide 4
                    </div>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
        <div class="swiper-slide"><img src="./asset/img/slide9.jpg" alt="im9"></div>
        <div class="swiper-slide"><img src="./asset/img/slide13.jpg" alt="img13"></div>
        <div class="swiper-slide"><img src="./asset/img/slide17.jpg" alt="img17"></div>
        <div class="swiper-slide"><img src="./asset/img/slide21.jpg" alt="img21"></div>
        <div class="swiper-slide"><img src="./asset/img/slide25.jpg" alt="img25"></div>
        <div class="swiper-slide"><img src="./asset/img/slide29.jpg" alt="img29"></div>
    </div>
    <div class="swiper-pagination"></div>
</div>

<div class="contained">
    <div class="notifi container-fluid">
        <div class="notifi-title pb-2">THÔNG BÁO QUAN TRỌNG</div>
        <div class="notifi-text fw-bold text-underline py-1"><a href="">- [THÔNG BÁO] ĐIỀU CHỈNH GIÁ ĐẶC BIỆT CHO CỬA HÀNG ONLINE VÀ TẤT CẢ CỬA HÀNG</a>
        </div>
        <div class="notifi-text fw-bold text-underline py-1"><a href=""> - CHƯƠNG TRÌNH NHẬN SẢN PHẨM TRẢI NGHIỆM</a>
        </div>
        <div class="notifi-text fw-bold text-underline py-1"><a href="">- THÔNG TIN VỀ KÊNH TRUYỀN THÔNG CHÍNH THỨC CỦA UNIQLO</a>
        </div>

    </div>
</div>

<div class="contained">
    <div class="content-card">
        <h2><span class="fw-bold fs-3">TIỆN ÍCH TỪ ỨNG DỤNG</span></h2>
        <div class="swiper mySwiper3">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="card mb-3">
                        <img src="./asset/img/card1.jpg" class="card-img-top" alt="card1">
                        <div class="card-body">
                            <h5 class="card-title">COUPON CHO ĐƠN HÀNG ĐẦU TIÊN</h5>
                            <p class="card-text">Tải ứng dụng UNIQLO ngay và tận hưởng 150.000VNĐ cho đơn hàng đầu tiên trên app.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="card mb-3">
                        <img src="./asset/img/card1.jpg" class="card-img-top" alt="card1">
                        <div class="card-body">
                            <h5 class="card-title">COUPON CHO ĐƠN HÀNG ĐẦU TIÊN</h5>
                            <p class="card-text">Tải ứng dụng UNIQLO ngay và tận hưởng 150.000VNĐ cho đơn hàng đầu tiên trên app.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="card mb-3">
                        <img src="./asset/img/card1.jpg" class="card-img-top" alt="card1">
                        <div class="card-body">
                            <h5 class="card-title">COUPON CHO ĐƠN HÀNG ĐẦU TIÊN</h5>
                            <p class="card-text">Tải ứng dụng UNIQLO ngay và tận hưởng 150.000VNĐ cho đơn hàng đầu tiên trên app.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="card mb-3">
                        <img src="./asset/img/card1.jpg" class="card-img-top" alt="card1">
                        <div class="card-body">
                            <h5 class="card-title">COUPON CHO ĐƠN HÀNG ĐẦU TIÊN</h5>
                            <p class="card-text">Tải ứng dụng UNIQLO ngay và tận hưởng 150.000VNĐ cho đơn hàng đầu tiên trên app.</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="card mb-3">
                        <img src="./asset/img/card1.jpg" class="card-img-top" alt="card1">
                        <div class="card-body">
                            <h5 class="card-title">COUPON CHO ĐƠN HÀNG ĐẦU TIÊN</h5>
                            <p class="card-text">Tải ứng dụng UNIQLO ngay và tận hưởng 150.000VNĐ cho đơn hàng đầu tiên trên app.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
        <a href="#" style="display:block; border:#101010 1px solid; width: 100%; text-align:center; padding: 5px 0; text-decoration:none; color:#101010"><span class="fw-bold fs-6">XEM THÊM</span></a>
    </div>
</div>


<div class="contained">
    <div class="row fw-bold fs-3"><span>INFORMATION</span></div>
    <div class="row">
        <div class="col-6 py-2"><a href="" class="info-text">Hướng Dẫn Mua Sắm</a></div>
        <div class="col-6 py-2"><a href="" class="info-text">Đặt Hàng Số Lượng Lớn</a></div>
    </div>
    <div class="row">
        <div class="col-6 py-2"><a href="" class="info-text">TODAY'S PICK UP</a></div>
        <div class="col-6 py-2"><a href="" class="info-text">APP</a></div>
    </div>
    <div class="row">
        <div class="col-6 py-2"><a href="" class="info-text">Đăng Ký Bản Tin Điện Tử</a></div>
        <div class="col-6 py-2"><a href="" class="info-text">Tin Tức UNIQLO</a></div>
    </div>
</div>

    <jsp:include page="/footer.jsp"></jsp:include>


<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script>
    var swiper = new Swiper(".mySwiper1", {
        direction: "vertical",
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        mousewheel: true,
        keyboard: true,
    });

    var swiper2 = new Swiper(".mySwiper2", {
        direction: "horizontal",
        loop: true,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
            enabled: true,
        },
        keyboard: true,
    });

    var swiper3 = new Swiper(".mySwiper3", {
        slidesPerView: 4,
        spaceBetween: 20,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
            enabled: true,
        },
        keyboard: true,
    });

</script>
</body>
</html>
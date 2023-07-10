<%--
  Created by IntelliJ IDEA.
  User: Huy_Laptop
  Date: 7/7/2023
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CHI TIẾT | UNIQLO</title>
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
                <li class="breadcrumb-item "><a href="#" class="text-black-50">NAM</a></li>
                <li class="breadcrumb-item "><a href="#" class="text-black-50">${product.category.parentCategory.parentCategoryName}</a></li>
                <li class="breadcrumb-item "><a href="#" class="text-black-50">${product.category.categoryName}</a></li>
                <li class="breadcrumb-item active" aria-current="page">${product.productName}</li>
            </ol>
        </nav>
    </div>
    <div class="d-flex justify-content-between align-items-start pt-5">
        <div class="left-detail">
            <div class="d-flex justify-content-between mb-4">
                <div class="pt-1 ps-1" style="width: 134px;">  </div>
                <div class="swiper mySwiper" style="width:519px;">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="${product.imgLink}" alt=""></div>
                        <div class="swiper-slide"><img src="${product.imgLink}" alt=""></div>
                        <div class="swiper-slide"><img src="${product.imgLink}" alt=""></div>
                        <div class="swiper-slide"><img src="${product.imgLink}" alt=""></div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <span class="pt-2 text-secondary">1/6</span>
                </div>
            </div>
            <div class="d-flex justify-content-between py-3 border-bottom border-light-subtle">
                <span class="fw-bold fs-4">MÔ TẢ</span>
                <span class="text-black-50">Mã sản phẩm: <br> ${product.productId}</span>
            </div>
            <div class="accordion" id="accordionExample">
                <div class="border-bottom border-light-subtle">
                    <h2 class="accordion-header">
                        <button class="accordion-btn collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Tổng quan
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                        <div class="accordion-body" style="line-height: 24px;">
                            Bộ sưu tập Uniqlo U là thành quả của đội ngũ thiết kế quốc tế tận tâm và lành nghề có trụ sở tại Trung tâm Nghiên cứu và Phát triển Paris của chúng tôi do Giám đốc Nghệ thuật Christophe Lemaire đứng đầu.
                            <br><br>
                            - Áo thun cổ tròn đơn giản bằng vải jersey dày dặn.
                            <br>
                            - Vải jersey khô được dệt chặt có độ bền cao và vẫn giữ chất lượng cao sau mỗi lần giặt.
                            <br>
                            - Thiết kế cổ tròn có dây buộc lấy cảm hứng từ đường viền cổ áo thun quân đội cổ điển.
                            <br>
                            - Dây buộc giúp cổ áo giữ được hình dạng.
                            <br>
                            - Kiểu dáng rộng rãi phù hợp với cả nam và nữ.
                        </div>
                    </div>
                </div>
                <div class="border-bottom border-light-subtle">
                    <h2 class="accordion-header">
                        <button class="accordion-btn collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            Chất liệu
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            Mã sản phẩm 461556<br><br>
                            Xin lưu ý mã số nhận diện của sản phẩm có thể có sự khác biệt, kể cả khi đó là cùng một mặt hàng.<br>
                            VẢI<br>
                            100% Bông<br>
                            HƯỚNG DẪN GIẶT<br>
                            Giặt máy nước lạnh<br>
                            IMPORTED AND MARKETED BY<br>
                            Uniqlo India Pvt. Ltd.,<br>
                            Caddie Commercial Tower, Level 5, Hospitality District Aerocity,<br>
                            New Delhi -110037, India<br>
                            - Những hình ảnh sản phẩm có thể bao gồm những màu không có sẵn.<br>
                        </div>
                    </div>
                </div>
            </div>
            <a href="#" class="product-detail-policy border-bottom border-light-subtle text-dark" style="margin-bottom:88px; text-decoration:none;">
                Chính sách hoàn trả
            </a>
            <div class="pb-2 d-flex border-bottom border-light-subtle">
                <span class="fw-bold fs-5 pe-4">ĐÁNH GIÁ</span>
                <div class="product-rate pt-1">
                    <i class="bi bi-star-fill text-warning"></i>
                    <i class="bi bi-star-fill text-warning"></i>
                    <i class="bi bi-star-fill text-warning"></i>
                    <i class="bi bi-star-fill text-warning"></i>
                    <i class="bi bi-star-half text-warning"></i>
                    <span class="ms-2">(999+)</span>
                </div>
            </div>
            <div class="py-3 border-bottom border-light-subtle">
                <div class="d-flex justify-content-between">
                    <div style="width:134px;">
                        <span class="fw-bold fs-5 pe-4">ĐÁNH GIÁ CỦA KHÁCH HÀNG</span>
                        <div class="product-rate pt-1">
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <span class="ms-2" style="font-size: 0.8rem;">(999+)</span>
                        </div>
                        <div class="product-rate pt-1">
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star text-warning" style="font-size: 0.8rem;"></i>
                            <span class="ms-2" style="font-size: 0.8rem;">(999+)</span>
                        </div>
                        <div class="product-rate pt-1">
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star text-warning" style="font-size: 0.8rem;"></i>
                            <span class="ms-2" style="font-size: 0.8rem;">(999+)</span>
                        </div>
                        <div class="product-rate pt-1">
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star text-warning" style="font-size: 0.8rem;"></i>
                            <span class="ms-2" style="font-size: 0.8rem;">(999+)</span>
                        </div>
                        <div class="product-rate pt-1">
                            <i class="bi bi-star-fill text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star text-warning" style="font-size: 0.8rem;"></i>
                            <i class="bi bi-star text-warning" style="font-size: 0.8rem;"></i>
                            <span class="ms-2" style="font-size: 0.8rem;">(999+)</span>
                        </div>
                    </div>

                    <div style="width:442px">
                        <span class="fs-5 fw-bold">QUẦN ÁO CÓ VỪA KHÔNG</span>
                    </div>
                </div>
                <button class="product-btn mt-3 py-2 px-5 fw-bold" style="border:1px solid #000; background-color:#fff;">VIẾT BÀI ĐÁNH GIÁ</button>
            </div>

            <div class="border-bottom border-light-subtle fw-bold py-3">159 bài đánh giá</div>

        </div>
        <div class="right-detail">
            <span class="fw-bold fs-1">${product.productName}</span>
            <div class="d-flex justify-content-between pb-4">
                <div style="width:442px;">
                    <c:if test="${product.onsale == true}">
                        <div class="old-price fs-5">${product.price} VNĐ</div>
                        <div class="sale-price fs-3">${product.salePrice} VNĐ</div>
                    </c:if>
                    <c:if test="${product.onsale == false}">
                        <div class="text-dark fw-bold fs-3">${product.price} VNĐ </div>
                    </c:if>
                    <span class="text-danger fs-6">Limited Offer Từ 06 Jul 2023 - 12 Jul 2023
                            </span>
                </div>
                <div class="product-rate pt-1">
                    <i class="bi bi-star-fill text-warning"></i>
                    <i class="bi bi-star-fill text-warning"></i>
                    <i class="bi bi-star-fill text-warning"></i>
                    <i class="bi bi-star-fill text-warning"></i>
                    <i class="bi bi-star-half text-warning"></i>
                    <span class="ms-2">(999+)</span>
                </div>

            </div>
            <div class="fs-6 mb-3 pb-3 border-bottom border-dark-50">Vải AIRism mượt mà với vẻ ngoài của cotton. Thiết kế sọc hẹp đa năng.
            </div>

            <div class="product-color">
                <span class="fw-bold fs-6">MÀU SẮC: 00 WHITE</span>
                <div class="product-color_list">
                    <div class="product-color_img"><img style="width:100%;" src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/422992/chip/goods_02_422992_chip.jpg" alt=""></div>
                    <div class="product-color_img"><img style="width:100%;" src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/461914/chip/goods_00_461914_chip.jpg" alt=""></div>
                    <div class="product-color_img"><img style="width:100%;" src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/461914/chip/goods_09_461914_chip.jpg" alt=""></div>
                    <div class="product-color_img"><img style="width:100%;" src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/461914/chip/goods_32_461914_chip.jpg" alt=""></div>
                    <div class="product-color_img"><img style="width:100%;" src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/461914/chip/goods_36_461914_chip.jpg" alt=""></div>
                    <div class="product-color_img"><img style="width:100%;" src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/461914/chip/goods_67_461914_chip.jpg" alt=""></div>
                    <div class="product-color_img"><img style="width:100%;" src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/455359/chip/goods_07_455359_chip.jpg" alt=""></div>
                    <div class="product-color_img"><img style="width:100%;" src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/455359/chip/goods_11_455359_chip.jpg" alt=""></div>
                    <div class="product-color_img"><img style="width:100%;" src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/455359/chip/goods_23_455359_chip.jpg" alt=""></div>
                </div>
            </div>

            <div class="product-size">
                <span class="fw-bold fs-6">KÍCH CỠ: NAM XL</span>
                <div class="product-size_list">
                    <div class="product-size_item">
                        XS
                    </div>
                    <div class="product-size_item">
                        S
                    </div>
                    <div class="product-size_item">
                        M
                    </div>
                    <div class="product-size_item">
                        L
                    </div>
                    <div class="product-size_item">
                        XL
                    </div>
                    <div class="product-size_item">
                        XXL
                    </div>
                </div>
            </div>
            <button class="product-btn mt-3 py-3 px-5 fw-bold" style="border:1px solid #000; background-color:#fff; width:100%;">KÍCH THƯỚC THEO CHIỀU CAO</button>
            <div class="mt-3" style="width:100%">
                <div class="size-table-wrap d-flex justify-content-end">
                    <a href="" class="text-black">
                        <span class="me-1"><img src="https://asset.uniqlo.com/g/icons/size_chart.svg" alt=""></span>
                        <span class="fw-bold fs-6 ">BẢNG KÍCH CỠ</span>
                    </a>
                </div>
            </div>
            <div class="fw-bold fs-6 mb-3">SỐ LƯỢNG</div>
            <select class="form-select mb-3" style="width:30%" aria-label="Default select example">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>
            <span class=text-secondary>Còn ít hàng</span>
            <a href="add-to-cart?pid=${product.productId}" style="text-decoration: none; color: #fff;">
            <button type="button" class="product-btn mt-3 py-3 px-5 fw-bold" style=" background-color:#ff0000; color:#fff; width:100%; border:none;"  data-bs-toggle="modal" data-bs-target="#exampleModal">
                THÊM VÀO GIỎ HÀNG</button>
            </a>
<%--            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--                <div class="modal-dialog modal-dialog-centered">--%>
<%--                    <div class="modal-content">--%>
<%--                        <div class="modal-header">--%>
<%--                            <span class="modal-title fs-5 fw-bold" id="exampleModalLabel">1 SẢN PHẦM ĐÃ ĐƯỢC THÊM VÀO GIỎ HÀNG </span>--%>
<%--                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                        </div>--%>
<%--                        <div class="modal-body">--%>
<%--                            <div class="d-flex justify-content-between fs-5"><div> <span class="fw=bold">TỔNG</span> | 9 sản phẩm </div> <span class="fw-bold">3.471.000 VNĐ</span></div>--%>
<%--                            <div class="d-flex justify-content-between fs-5 fw-bold"> <span>PHÍ VẬN CHUYỂN</span> <span>0 VNĐ</span></div>--%>
<%--                        </div>--%>
<%--                            <div class="d-flex justify-content-between pb-3 mx-3">--%>
<%--                                <button class="product-btn mt-2 py-2 px-2 fw-bold" style="background-color:#000; color: #fff; width:216px;">XEM GIỎ HÀNG</button>--%>
<%--                                <button class="product-btn mt-2 py-2 px-2 fw-bold" data-bs-dismiss="modal" aria-label="Close" style="border:1px solid #000; background-color:#fff; width:216px;">TIẾP TỤC MUA SẮM</button>--%>
<%--                            </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

            <div class="d-flex justify-content-between pb-3 border-bottom border-black-50">
                <button class="product-btn mt-3 py-1 px-2 fw-bold" style="border:1px solid #000; background-color:#fff; width:216px;">THÊM VÀO DANH SÁCH MONG MUỐN</button>
                <button class="product-btn mt-3 py-1 px-2 fw-bold" style="border:1px solid #000; background-color:#fff; width:216px;">TÌM SẢN PHẨM CÒN HÀNG TRONG CỬA HÀNG</button>
            </div>
            <div class="mt-3 fw-bold text-secondary">
                <span>CHIA SẺ</span>
                <div class="pt-2">
                    <img class="pe-3" src="https://asset.uniqlo.com/g/icons/loginwith_twitter.svg" alt="">
                    <img src="https://asset.uniqlo.com/g/icons/loginwith_facebook.svg" alt="">
                </div>
            </div>
        </div>
    </div>

    <div class="mt-5 pt-5 fs-5 fw-bold">Cách phối đồ chuẩn</div>

    <div class="row">
        <div class="col-3 my-3">
            <img style="width:100%;" src="https://api.fastretailing.com/ugc/v1/uq/gl/OFFICIAL_IMAGES/230104083028_official_styling_120016401_c-600-800" alt="">
        </div>
        <div class="col-3 my-3">
            <img style="width:100%;" src="https://api.fastretailing.com/ugc/v1/uq/gl/OFFICIAL_IMAGES/230130013030_official_styling_120016518_c-600-800" alt="">
        </div>
        <div class="col-3 my-3">
            <img style="width:100%;" src="https://api.fastretailing.com/ugc/v1/uq/gl/OFFICIAL_IMAGES/230202021530_official_styling_120016542_c-600-800" alt="">
        </div>
        <div class="col-3 my-3">
            <img style="width:100%;" src="https://api.fastretailing.com/ugc/v1/uq/gl/OFFICIAL_IMAGES/230202021530_official_styling_120016543_c-600-800" alt="">
        </div>
    </div>

    <h2 class="my-5 pt-2">ĐÃ XEM GẦN ĐÂY</h2>

    <div class="swiper mySwiper2">
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
            <div class="swiper-slide">
                <div class="card card-content" >
                    <img src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/442224/item/goods_38_442224.jpg"  alt="product-img">
                    <div class="m-2 ">
                        <div class="d-inline"><img src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/424873/chip/goods_08_424873_chip.jpg" style="width: 8%;" alt="">
                        </div>
                        <div class="d-flex justify-content-between my-1 ">
                            <span class="text-secondary fw-bold">NỮ</span>
                            <span class="text-secondary fw-bold">XS-XXL</span>
                        </div>
                        <span class="text-dark fw-bold fs-6 mb-4">Thắt Lưng Bản Rộng</span>
                        <div class="text-secondary">NEW</div>
                        <div class="old-price">784000 VNĐ</div>
                        <div class="sale-price">688000 VNĐ</div>
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
            <div class="swiper-slide"><div class="card card-content" >
                <img src="https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/458183/item/vngoods_03_458183.jpg"  alt="product-img">
                <div class="m-2 ">
                    <div class="d-inline"><img src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/424873/chip/goods_08_424873_chip.jpg" style="width: 8%;" alt="">
                    </div>
                    <div class="d-flex justify-content-between my-1 ">
                        <span class="text-secondary fw-bold">NAM</span>
                        <span class="text-secondary fw-bold">XS-XXL</span>
                    </div>
                    <span class="text-dark fw-bold fs-6 mb-4">Áo Khoác Giả Lông Cừu</span>
                    <div class="text-secondary">NEW</div>
                    <div class="old-price">799000 VNĐ</div>
                    <div class="sale-price">544000 VNĐ</div>
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
            <div class="swiper-slide">
                <div class="card card-content" >
                    <img src="https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/450195/item/vngoods_69_450195.jpg"  alt="product-img">
                    <div class="m-2 ">
                        <div class="d-inline"><img src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/424873/chip/goods_08_424873_chip.jpg" style="width: 8%;" alt="">
                        </div>
                        <div class="d-flex justify-content-between my-1 ">
                            <span class="text-secondary fw-bold">NAM</span>
                            <span class="text-secondary fw-bold">XS-XXL</span>
                        </div>
                        <span class="text-dark fw-bold fs-6 mb-4">AirSense Áo Khoác (Siêu Nhẹ)</span>
                        <div class="text-secondary">NEW</div>
                        <div class="old-price">252000 VNĐ</div>
                        <div class="sale-price">199000 VNĐ</div>
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
            <div class="swiper-slide"><div class="card card-content" >
                <img src="https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/450535001/item/vngoods_32_450535001.jpg?width=320"  alt="product-img">
                <div class="m-2 ">
                    <div class="d-inline"><img src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/424873/chip/goods_08_424873_chip.jpg" style="width: 8%;" alt="">
                    </div>
                    <div class="d-flex justify-content-between my-1 ">
                        <span class="text-secondary fw-bold">NAM</span>
                        <span class="text-secondary fw-bold">XS-XXL</span>
                    </div>
                    <span class="text-dark fw-bold fs-6 mb-4">Áo Len Extra Fine Merino Cổ Dài</span>
                    <div class="text-secondary">NEW</div>
                    <div class="old-price">399000 VNĐ</div>
                    <div class="sale-price">344000 VNĐ</div>
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
            <div class="swiper-slide">
                <div class="card card-content" >
                    <img src="https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/456779/item/vngoods_06_456779.jpg"  alt="product-img">
                    <div class="m-2 ">
                        <div class="d-inline"><img src="https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/424873/chip/goods_08_424873_chip.jpg" style="width: 8%;" alt="">
                        </div>
                        <div class="d-flex justify-content-between my-1 ">
                            <span class="text-secondary fw-bold">NAM</span>
                            <span class="text-secondary fw-bold">XS-XXL</span>
                        </div>
                        <span class="text-dark fw-bold fs-6 mb-4">Áo Polo Dry-EX</span>
                        <div class="text-secondary">NEW</div>
                        <div class="old-price">489000 VNĐ</div>
                        <div class="sale-price">391000 VNĐ</div>
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
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        loop:true,
    });

    var swiper = new Swiper(".mySwiper2", {
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

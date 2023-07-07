<%--
  Created by IntelliJ IDEA.
  User: Huy_Laptop
  Date: 7/3/2023
  Time: 9:23 AM
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
  <link rel="stylesheet" href="asset/css/style.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body>
<div class="page-wrap ">
  <jsp:include page="/header.jsp"></jsp:include>

  <div class="page-layout row ms-4">

    <div class="col-6">
      <div class="form-heading d-flex pb-3" >
        <span class="fs-2">TẠO MỘT TÀI KHOẢN</span>
      </div>
      <div class="form-content p-3 border border-light-subtle">
        <span class="fs-3 pb">XEM LẠI</span>
        <span class="fs-4 ">ĐỊA CHỈ EMAIL</span>
        <p class="my-4">tuanhuy03ns@gmail.com</p>
        <p class="mb-5">Vui lòng kiểm tra lại các thông tin vừa nhập. Xác nhận địa chỉ email là điều kiện bắt buộc để hoàn thành đăng ký tại khoản. Vui lòng nhập mã xác nhận được gửi đến email vừa cung cáp của quý khách ở trang tiếp theo.</p>
        <p class="text-danger mb-5">Vui lòng kiểm tra chắc chắn rằng quý khách có thể nhận email đến từ địa chỉ "noreply-enews@mail.vn.uniqlo.com".</p>
        <div class="d-flex mb-5">
          <button class="btn btn-primary bg-black text-white me-4 border border-black">GỬI MÃ XÁC NHẬN</button>
          <button class="btn btn-primary bg-white border border-black"><a href="/signup.jsp" class="text-black text-decoration-none">QUAY LẠI TRANG ĐĂNG KÝ</a></button>
        </div>
        <p>Nếu màn hình này hiển thị lần nữa sau khi gửi mã xác nhận, vui lòng tham khảo tại đây để biết thêm thông tin chi tiết.</p>
      </div>
    </div>
  </div>
</div>
</body>
</html>
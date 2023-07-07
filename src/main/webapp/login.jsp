<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đăng Nhập</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
  <link rel="stylesheet" href="asset/css/style.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</head>
<body>
<%
  String InputEmail= request.getAttribute("InputEmail")+"";
  InputEmail = (InputEmail.equals("null"))?"":InputEmail ;

  String baoLoi = request.getAttribute("baoLoi")+"";
  baoLoi = (baoLoi.equals("null"))?"":baoLoi ;

%>

<div class="login-header" style="border-bottom: #e7e7e7 solid 1px; height:60px; padding:0 20px 10px; margin-top:40px;">
  <a href="index">
  <img src="asset/img/Uniqlo_logo_Japanese.svg.png" alt="header-logo" style="height:80% ">
  </a>
</div>
<div class="login-form" style="margin-top:80px;">
  <div class="container-fluid" style="border-top:#e7e7e7 solid 1px; padding:20px; border-bottom:#e7e7e7 solid 1px;" >
    <div class="row">
      <div class="col-6" style="border-right: #e7e7e7 solid 1px ;">
        <div class="form-heading d-flex justify-content-between pb-3" >
          <span class="fs-2">ĐĂNG NHẬP</span>
          <span class="text-success"> Bắt buộc*</span>
        </div>
        <div class="form-intro  d-flex justify-content-between">
          <span class="fs-6">Đăng nhập bằng địa chỉ email và mật khẩu của bạn</span>
          <div class="form-tooltip-icon">
            <i class="bi bi-info-circle"></i>
          </div>
        </div>
        <div class="text-danger">
          <%=baoLoi %>
        </div>
        <form action="login" method="post">
          <div class="my-3">
            <label for="InputEmail" class="form-label"><span class="fs-5 font-weight-bold">ĐỊA CHỈ EMAIL</span></label>
            <input type="email" class="form-control" id="InputEmail" name="InputEmail" value="<%=InputEmail%>">
          </div>
          <div class="mb-3">
            <label for="InputPassword" class="form-label"><span class="fs-5 font-weight-bold">MẬT KHẨU</span></label>
            <input type="password" class="form-control" id="InputPassword" name="InputPassword" aria-describedby="passHelp">
            <div id="passHelp" class="form-text fs-7">Mật khẩu phải có ít nhất 8 ký tự và có cả chữ cái và số.</div>
          </div>
          <div class="mb-3 form-check pd-1">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Hiện mật khẩu</label>
          </div>
          <div class="form-link py-1"><a href="" class="text-dark fs-6 fw-bold">ĐIỀU KHOẢN SỬ DỤNG</a>
          </div>
          <div class="form-link py-1"><a href="" class="text-dark fs-6 fw-bold">CHÍNH SÁCH BẢO MẬT</a>
          </div>
          <button type="submit" class="btn btn-dark btn-lg mt-4">ĐĂNG NHẬP</button>
        </form>
        <div class="form-link py-1"><a href="" class="text-dark fs-6 fw-bold">QUÊN MẬT KHẨU CỦA BẠN</a>
        </div>
      </div>
      <div class="col-6 ">
        <span class="fs-2">TẠO 1 TÀI KHOẢN</span>
        <div class="form-intro  d-flex my-3">
          <span class="fs-6">Hãy tạo tài khoản ngay ! Bạn có thể nhận được các dịch vụ đặc biệt cho riêng bạn như kiểm tra lịch sử mua hàng và nhận phiếu giảm giá cho thành viên. Đăng ký miễn phí ngay hôm nay!</span>
        </div>
        <button type="button" class="btn btn-dark btn-lg mt-4"><a href="signup.jsp" class="text-white" style="text-decoration: none;">TẠO TÀI KHOẢN</a></button>
      </div>
    </div>
  </div>
</div>
<footer>
  <span class="mt-3 py-5 d-flex justify-content-center fw-semibold">BẢN QUYỀN THUỘC VỀ CÔNG TY UNIQLO. BẢO LƯU MỌI QUYỀN</span>
</footer>
</body>
</html>


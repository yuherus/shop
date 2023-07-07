<%@ page import="com.example.demo.model.Users" %>
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

<%
  String InputEmail= request.getAttribute("InputEmail")+"";
  InputEmail = (InputEmail.equals("null"))?"":InputEmail ;

  String baoLoi = request.getAttribute("baoLoi")+"";
  baoLoi = (baoLoi.equals("null"))?"":baoLoi ;

  Users user = (Users) request.getAttribute("user");
  user = (user==null)?new Users():user;
%>

<div class="page-wrap ">
  <jsp:include page="/header.jsp"></jsp:include>


  <div class="page-layout row ms-4">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item "><a href="#" class="text-black-50">UNIQLO</a></li>
        <li class="breadcrumb-item active " aria-current="page">TẠO TÀI KHOẢN</li>
      </ol>
    </nav>
    <div class="col-8">
      <div class="form-heading d-flex justify-content-between pb-3" >
        <span class="fs-2">TẠO MỘT TÀI KHOẢN</span>
        <i class="bi bi-file-lock2 my-auto fs-3"></i>
      </div>
      <div class="form-content p-3 mb-5 border border-light-subtle">
        <div class="form-heading row  pb-3" >
          <span class="fs-6 col-8">Chúng tôi sẽ gửi thư xác nhận đến địa chỉ email được liên kết với tài khoản của bạn. Hãy kiểm tra email đến từ chúng tôi.</span>
          <span class="text-success col-4 d-flex justify-content-end"> Bắt buộc*</span>
        </div>
        <div class="text-danger" id="baoLoi">
          <%=baoLoi %>
        </div>
        <form class="form" action="confirm" method="post">
          <div class="my-3 pb-3 row">
            <label for="InputEmail" class="form-label col-sm-3"><span class="fs-5 font-weight-bold">ĐỊA CHỈ EMAIL*</span></label>
            <div class="col-sm-9"><input type="email" class="form-control" id="InputEmail" name="InputEmail" placeholder="Nhập email hợp lệ" required="required" value="<%=InputEmail%>"></div>
          </div>
          <div class="mb-3 row">
            <label for="InputPassword" class="form-label col-sm-3"><span class="fs-5 font-weight-bold">MẬT KHẨU*</span></label>
            <div class="col-sm-9"><input type="password" class="form-control" id="InputPassword" name="InputPassword" required="required" aria-describedby="passHelp">
              <div id="passHelp" class="form-text fs-7">Mật khẩu phải có ít nhất 8 ký tự và có cả chữ cái và số.</div></div>
          </div>
          <div class="mb-3 pb-3 form-check pd-1">
            <input type="checkbox" class="form-check-input" id="Check1" onchange="togglePasswordVisibility()" >
            <label class="form-check-label fs-6" for="Check1">Hiện mật khẩu</label>
          </div>
          <div class="mb-3 row">
            <label for="InputBod" class="form-label col-sm-3"><span class="fs-5 font-weight-bold">SINH NHẬT</span></label>
            <div class="col-auto"><input type="date" class="form-control" id="InputBod" name="InputBod" aria-describedby="dobHelp" required="required">
              <div id="dobHelp" class="form-text fs-7">Không thể chỉnh sửa ngày sinh sau khi bạn đăng ký tài khoản. </div></div>
          </div>

          <div class="mb-3 pb-3 row">
              <div class="col-sm-3"><span class="fs-5 font-weight-bold">GIỚI TÍNH</span></div>
              <div class="col-auto">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                  <label class="form-check-label" for="inlineRadio1">NAM</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                  <label class="form-check-label" for="inlineRadio2">NỮ</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" >
                  <label class="form-check-label" for="inlineRadio3">BỎ CHỌN</label>
                </div>
              </div>
          </div>

          <div class=""><span class="fs-5 font-weight-bold">XÁC NHẬN ĐĂNG KÝ</span></div>
          <div class="pt-3 pb-5 border-bottom">
            <input class="form-check-input" type="checkbox" value="option1" id="flexCheckDefault1" name="acceptEmail">
            <label class="form-check-label fs-6" for="flexCheckDefault1">
              Thư điện tử UNIQLO
            </label>
          </div>

          <div class="fw-bold mt-3 fs-3"><span>TIN NHẮN VĂN BẢN VÀ CÀI ĐẶT RIÊNG</span></div>
          <div class="fw-bold mt-3 fs-5"><span>ỨNG DỤNG UNIQLO VÀ DỮ LIỆU CÁ NHÂN CỦA BẠN</span></div>
          <div class=" mt-3 fs-6"><span>UNIQLO cam kết tôn trọng các quyền của khách hàng khi lưu trữ dữ liệu cá nhân của họ trong hệ thống. Thỏa thuận bên dưới sẽ giúp khách hàng lựa chọn việc có để cho dữ liệu cá nhân của mình được lưu trữ và xử lý vì mục đích cung cấp dịch vụ tương ứng. Vì mục đích của thỏa thuận bên dưới, sẽ gửi “tin nhắn văn bản”, nghĩa là thông báo cung cấp những thông tin quan trọng liên quan đến dịch vụ đến cho khách hàng.</span></div>
          <div class="fw-bold mt-3 fs-5"><span>ĐỒNG Ý NHẬN QUẢNG CÁO TIẾP THỊ (TIN NHẮN KHÔNG CÁ NHÂN HÓA)</span></div>
          <div class=" mt-3 fs-6"><span>Tôi đồng ý cho phép Uniqlo sử dụng dữ liệu cá nhân của tôi để gửi cho tôi tin nhắn tiếp thị theo dạng tin nhắn văn bản không cá nhân hóa</span></div>
          <div class="pt-2 pb-3">
            <input class="form-check-input" type="checkbox" value="option2" id="flexCheckDefault2">
            <label class="form-check-label fs-6" for="flexCheckDefault2">
              Tin nhắn văn bản
            </label>
          </div>
          <div class="fw-bold mt-3 fs-5"><span>ĐỒNG Ý NHẬN QUẢNG CÁO TIẾP THỊ (TIN NHẮN CÁ NHÂN HÓA)</span></div>
          <div class=" mt-3 fs-6"><span>Tôi đồng ý cho phép Uniqlo sử dụng dữ liệu cá nhân của tôi để gửi cho tôi tin nhắn tiếp thị theo dạng tin nhắn văn bản cá nhân hóa</span></div>
          <div class="pt-2 pb-3 border-bottom">
            <input class="form-check-input" type="checkbox" value="option3" id="flexCheckDefault3">
            <label class="form-check-label fs-6" for="flexCheckDefault3">
              Tin nhắn văn bản
            </label>
          </div>
          <div class="fw-bold mt-3 fs-5"><span>THỎA THUẬN THÀNH VIÊN*</span></div>
          <div class=" mt-3 fs-6"><span>Bằng cách tạo tài khoản, bạn đồng ý với chính sách bảo mật và điều khoản sử dụng của UNIQLO.</span></div>
          <div class="pt-2 pb-3 ">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault4">
            <label class="form-check-label fs-6" for="flexCheckDefault4">
              Tôi đồng ý với ĐIỀU KHOẢN SỬ DỤNG và CHÍNH SÁCH BẢO MẬT CỦA UNIQLO
            </label>
          </div>
          <div class="form-link pt-1 pb-3"><a href="" class="text-dark pe-4    fs-5 fw-bold">ĐIỀU KHOẢN SỬ DỤNG</a>
            <a href="" class="text-dark fs-5 fw-bold">CHÍNH SÁCH BẢO MẬT</a>
          </div>
          <button type="submit" class="btn btn-dark btn-lg mt-4" onclick="validateForm()">ĐĂNG KÝ</button>
        </form>
      </div>
    </div>
  </div>

  <jsp:include page="/footer.jsp"></jsp:include>
</div>
<script>
  function togglePasswordVisibility() {
    var passwordInput = document.getElementById("InputPassword");
    var toggleCheckbox = document.getElementById("Check1");
    passwordInput.type = toggleCheckbox.checked ? "text" : "password";
  }

  function validateForm() {
    var checkbox = document.getElementById("flexCheckDefault4");
    if (!checkbox.checked) {
      alert("Bạn phải đồng ý với ĐIỀU KHOẢN SỬ DỤNG và CHÍNH SÁCH BẢO MẬT.");
      return false;
    }
  }
</script>
</body>
</html>

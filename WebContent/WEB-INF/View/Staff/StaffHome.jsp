<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Home</title>
    <link rel="stylesheet" href="css/Staff/StaffHome.css">
    <link rel="stylesheet" href="StaffManageProduct.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
</head>

<body>
    <div class="page">
        <div class="left">
            <ul class="category">
                <li class="content">
                    <i class="fas fa-home"></i>
                    <div class="content-item">Trang chủ </div>
                </li>
                <li class="content">
                    <i class="fas fa-folder-plus"></i>
                    <div class="content-item">Quản lí đơn hàng </div>
                </li>
                <li class="content">
                    <i class="fas fa-window-restore"></i>
                    <div class="dropdown">
                        <div class="nut_dropdown content-item">Quản lí Hàng hóa</div>
                        <div class="content_dropdown content-item">
                          <a href="http://localhost:8080/Food_Shop/ManageCate">Quản lí Danh mục</a>
                          <a href="http://localhost:8080/Food_Shop/ManageProduct">QUản lí Sản phẩm</a>
                        </div>
                      </div>
                </li>
                <li class="content">
                    <i class="fas fa-user-alt"></i>
                    <div class="content-item">Quản lí khách hàng</div>
                </li>
                <li class="content">
                    <i class="fas fa-clipboard"></i>
                    <div class="content-item">Xem ca làm việc</div>
                </li>
                <li class="content">
                    <i class="fas fa-chart-pie"></i>
                    <div class="content-item">Báo cáo </div>
                </li>
            </ul>
            <ul class="category-bottom">
                <li class="content">
                    <i class="fas fa-cog"></i>
                    <div class="content-item">Cấu hình </div>
                </li>
                <li class="content">
                    <i class="fas fa-question-circle"></i>
                    <div class="content-item">Trợ giúp </div>
                </li>
            </ul>
        </div>

        <div class="right">
            <div class="header">
                <div class="header-profile">
                    <i class="far fa-bell"></i>
                    <img src="https://tiemanhsky.com/wp-content/uploads/2020/03/61103071_2361422507447925_6222318223514140672_n_1.jpg"
                        alt="">
                    <div class="header-profile-name">
                        <div class="name">lethihoa_10</div> <br>
                        <div class="name">hoa1234@gmail.com</div>
                    </div>
                </div>
            </div>
            <div class="body">
                <h2>QUY ĐỊNH CHUNG CỦA CỬA HÀNG</h2>
                <div class="body-home"><br>
                   <h4>I – GIỜ LÀM VIỆC:</h4> <br>
                    Thực hiện theo quy định chung của công ty (nội quy lao động), trừ trường hợp công ty có quy định
                    khác. Cửa hàng trưởng phụ trách chấm công cho nhân viên và gởi về phòng nhân sự, bản copy cho phòng
                    bán hàng trước ngày 02 của tháng tiếp theo làm căn cứ kiểm tra giờ làm việc và tính lương.
                    <br>
                    Cửa hàng trưởng chịu trách nhiệm báo cáo công tác tuần của toàn bộ cửa hàng vào thứ hai của tuần
                    tiếp theo.
                    <br><br>
                   <h4>II/ NGOẠI HÌNH:</h4> <br>
                    Luôn mặc đồng phục đúng quy định theo cấp bậc.<br>
                    Đồng phục luôn sạch sẽ .ủi thẳng.<br>              
                    Phải tạo được vẻ mặt tươi tắn ,xing xắn .<br>
                    Tóc tai gọn gàng .<br><br>
                   <h4>III/ TƯ THẾ –TÁC PHONG:</h4> <br>
                   <h4>1. Tư thế đứng, đi ,ngồi: </h4>
                    Đứng thẳng hai bên shop ,hai tay nắm với nhau để phía trước .<br>
                    Luôn di chuyển trong shop cho dù không có khách để tạo vẻ sôi động.<br>
                    Bước đi nhanh nhẹn ,tạo cảm giác ân cân phục vụ.<br>
                    Luôn đứng ,chỉ thay phiên nhau ngồi 01 người mà thôi.<br><br>      
                    <h4>2. Tác phong làm việc:</h4>
                    Luôn tươi cười lễ phép.<br>
                    Tác phong nhanh nhẹn ,siêng năng<br>
                    Không đùn đẩy công việc ,không lánh nặng tìm nhẹ.<br>
                    Tuyệt đối không có hành vi gian dối ,tham lam.<br>
                    Tuyệt đối không có thái độ ,hành vi khác nhau khi có hay không có mặt cấp trên.<br>
                </div>
            </div>
        </div>
    </div>
    <script>
        /* Thêm hoặc xóa class show ra khỏi phần tử */
        function myFunction(id) {
            document.getElementById(id).classList.toggle("show");
        }
        //lấy tất cả các button menu
        var buttons = document.getElementsByClassName('dropbtn');
        //lấy tất cả các thẻ chứa menu con
        var contents = document.getElementsByClassName('dropdown-content');
        //lặp qua tất cả các button menu và gán sự kiện
        for (var i = 0; i < buttons.length; i++) {
            buttons[i].addEventListener("click", function(){
                //lấy value của button
                var id = this.value;
                //ẩn tất cả các menu con đang được hiển thị
                for (var i = 0; i < contents.length; i++) {
                    contents[i].classList.remove("show");
                }
                //hiển thị menu vừa được click
                myFunction(id);
            });
        }
        //nếu click ra ngoài các button thì ẩn tất cả các menu con
        window.addEventListener("click", function(){
             if (!event.target.matches('.dropbtn')){
                for (var i = 0; i < contents.length; i++) {
                    contents[i].classList.remove("show");
                }
             }
        });
    </script>
</body>

</html>

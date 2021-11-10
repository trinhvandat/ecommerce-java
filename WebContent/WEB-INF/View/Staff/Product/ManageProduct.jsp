<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Manage Product</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
     <style> 
     	<%@ include file="/css/Staff/Product/ManageProduct.css"%>
     </style>
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
                <div class="body-action">
                    <h2>Quản lí Sản phẩm</h2>
                    <div class="body-action-button-search">
                        <button class="button-add"><a
                                href="http://localhost:8080/Food_Shop/AddProduct">Thêm Sản phẩm
                            </a></button>
                        <input type="text" class="button-search" placeholder="Tìm kiếm sản phẩm">
                    </div>
                </div>
                <div class="body-category">
                    <table border="0">
                        <thead>
                        	<th>Mã sản phẩm</th>
                            <th class="product"> Tên sản phẩm </th>
                            <th>Giá tiền</th>
                            <th>Danh muc</th>
                            <th>Mô tả </th>
                            <th>Hình ảnh</th>
                            <th>Hành động</th>
                        </thead>
                        <tbody>
                            <c:forEach items="${product}" var="i">
									<tr>
									<td>${i.idPro }</td>
									<td>${i.namePro }</td>
									<td>${i.pricePro }</td>
									<td>${i.nameCate }</td>
									<td>${i.descript }</td>
									<td> <img src="${pageContext.request.contextPath}/img/img/${i.imgPro}"></td>
									 <td>
                                    	<button><a href="http://localhost:8080/Food_Shop/EditProduct?idProduct=${i.idPro}">Sửa</a></button>
                                    	<button><a href="http://localhost:8080/Food_Shop/ManageProduct?idP=${i.idPro}&actionP=keyP">Xóa</a></button>
                              		 </td>
								</tr>
							</c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
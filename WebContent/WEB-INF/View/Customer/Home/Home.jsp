<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Home</title>
            <link rel="stylesheet" href="css/Customer/Home/Home.css">
            <link rel="stylesheet" href="css/Customer/Home/animation.css">
            <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
                integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
                crossorigin="anonymous" />
        </head>

        <body>
            <div class="header-page">

                <div class="header">
                    <div class="header-sign">
                        <i class="fas fa-user"></i>
                        <a href="" class="sign">Đăng nhập | </a>
                        <a href="" class="register">Đăng ký</a>
                    </div>
                </div>

                <div class="body">
                    <div class="body-name">
                        <i class="fas fa-shopping-bag"></i>
                        <div class="brand-name-cart">
                            <div class="brand-name">NGASHOP</div>
                            <div class="slogan">Tươi ngon tròn vị </div>
                        </div>
                </div>

                <div class="search">
                        <input type="text" placeholder="Bạn muốn tìm gì...">
                        <div class="search-box">
                            <div class="search-box-text">
                                Tìm kiếm
                            </div>
                        </div>
	            </div>
	
				<i class="fas fa-shopping-cart cart">
					<div class="cart-display">
						<p>
							82
						</p>
					</div>
					<div class="cart-info">
						<p class="content">Sản Phẩm Mới Thêm</p>
						<ul class="cart-list">
							<li class="cart-list-content">
									<p>Hinh ảnh</p>
									<p class="text-cart">Tên sản phẩm</p>
									<p class="money" >Thành tiền</p>
									<p >Số lượng</p>
									<p>Xóa</p>
							<li>
							<c:forEach items="${cart}" var="i">
								<li class="cart-list-item">
									<img src="${pageContext.request.contextPath}/img/img/${i.imgPro}" alt="">
									<p class="text-cart">${i.namePro }</p>
									<p class="money" >${i.thanhtien}</p>
									<p > (${i.soluong})</p>
									<p><button>
									<a href="http://localhost:8080/Food_Shop/CustomerHome?idDelete=${i.idPro}&action=delete">Delete</a></button></p>
								<li>
							</c:forEach>
						</ul>
						<div class="cart-button">
							<button>Thanh toán</button>
						</div>
					</div>
				</i>
			</div>

                <div class="bottom">
                    <ul class="menu">
                        <li class="menu-item">TRANG CHỦ</li>
                        <li class="menu-item">GIỚI THIỆU</li>
                        <li class="menu-item">SẢN PHẨM </li>
                        <li class="menu-item">DỊCH VỤ</li>
                        <li class="menu-item">TIN TỨC</li>
                        <li class="menu-item">KHUYẾN MẠI</li>
                        <li class="menu-item">LIÊN HỆ</li>
                    </ul>

                </div>
            </div>

            <div class="body-page-category">
                <div class="category">
                    <div class="category-name">
                        <div class="category-name-text">
                            DANH MỤC
                        </div>
                    </div>
                    <ul class="category-detail">
                        <li class="category-item">
                            <i class="fas fa-arrow-alt-circle-right"></i>
                            <div class="category-item-text">
                                Trà sữa
                            </div>
                        </li>
                        <li class="category-item">
                            <i class="fas fa-arrow-alt-circle-right"></i>
                            <div class="category-item-text">
                                Cơm sườn
                            </div>
                        </li>
                        <li class="category-item">
                            <i class="fas fa-arrow-alt-circle-right"></i>
                            <div class="category-item-text">
                                Bún riêu
                            </div>
                        </li>
                        <li class="category-item">
                            <i class="fas fa-arrow-alt-circle-right"></i>
                            <div class="category-item-text">
                                Cơm chiên
                            </div>
                        </li>
                        <li class="category-item">
                            <i class="fas fa-arrow-alt-circle-right"></i>
                            <div class="category-item-text">
                                Bánh mì
                            </div>
                        </li>
                        <li class="category-item">
                            <i class="fas fa-arrow-alt-circle-right"></i>
                            <div class="category-item-text">
                                Xôi xéo
                            </div>
                        </li>
                        <li class="category-item">
                            <i class="fas fa-arrow-alt-circle-right"></i>
                            <div class="category-item-text">
                                Chè đậu đen
                            </div>
                        </li>
                        <li class="category-item">
                            <i class="fas fa-arrow-alt-circle-right"></i>
                            <div class="category-item-text">
                                Chè đậu đen
                            </div>
                        </li>
                    </ul>
                </div>
                <img src="http://mocquan.vn/wp-content/uploads/2019/03/190311-dong-gia-moc-banner-bai-viet.png" alt=""
                    class="img-item" class="avatar">
            </div>

            <div class="body-page-item-title">
                <div class="body-page-item-title-text">
                    Cơm Chiên
                </div>
            </div>
            <div class="body-page-item">
                <c:forEach items="${productComChien}" var="i">
                    <form method="post" action="http://localhost:8080/Food_Shop/CustomerHome">
                        <div class="item-select">
                        <input type="hidden" name ="idPro" value="${i.idPro}">
                         <input type="hidden" name ="nameCate" value="${i.nameCate}">
                            <img  src="${pageContext.request.contextPath}/img/img/${i.imgPro}" alt="" class="img-select-item">
                            <input type="hidden"  name ="imgPro" value="${i.imgPro}">
                            <div class="item-select-item" ><input type="hidden"  name ="namePro" value="${i.namePro}">${i.namePro}</div>
                            <div class="item-select-price" ><input type="hidden"  name ="pricePro" value="${i.pricePro}">${i.pricePro}₫</div>
                            
                            <div class="buy">
                                <div class="detail-see"><a href="http://localhost:8080/Food_Shop/DetailProduct?masp=${i.idPro}">
                                <i class="fas fa-eye"></i></a></div>
                                <button class="add-cart" name ="btnadd" >                             
                                 <i class="fas fa-cart-plus"></i> Thêm giỏi hàng
                                </button>
                            </div>
                        </div>
                    </form>
                   
                </c:forEach>
                
            </div>
            <div class="body-page-item-title">
                <div class="body-page-item-title-text">
                    Trà Sữa
                </div>
            </div>
            <div class="body-page-item">
                <c:forEach items="${productTraSua}" var="i">
                     <form method="post" action="http://localhost:8080/Food_Shop/CustomerHome">
                        <div class="item-select">
                        <input type="hidden" name ="idPro" value="${i.idPro}">
                            <img  src="${pageContext.request.contextPath}/img/img/${i.imgPro}" alt="" class="img-select-item">
                            <input type="hidden"  name ="imgPro" value="${i.imgPro}">
                            <div class="item-select-item" ><input type="hidden"  name ="namePro" value="${i.namePro}">${i.namePro}</div>
                            <div class="item-select-price" ><input type="hidden"  name ="pricePro" value="${i.pricePro}">${i.pricePro}₫</div>                          
                            <div class="buy">
                                <div class="detail-see"><a href="http://localhost:8080/Food_Shop/DetailProduct?masp=${i.idPro}">
                                <i class="fas fa-eye"></i></a></div>
                                <button class="add-cart" name ="btnadd" >
                                    <i class="fas fa-cart-plus"></i>
                                  Thêm giỏi hàng
                                </button>
                            </div>
                        </div>
                    </form>
                </c:forEach>
            </div>

            <div class="footer">
                <div class="footer-all">
                    <div class="footer-all-item">
                        <div class="footer-title-contact">LIÊN HỆ</div>
                        <ul class="footer-item-contact">
                            <li class="footer-item-text">Chúng tôi chuyên cung cấp các sản<br>
                                phẩm thực phẩm sạch an toàn cho<br>
                                sức khỏe con người</li>
                            <div class="footer-contact">
                                <li class="footer-item-text">
                                    <i class="fas fa-map-marker-alt"></i>
                                    <div class="footer-item-text-detail">
                                        Ladeco Building, 266 Doi Can <br>
                                        Street, Hà Nội, Vietnam </div>
                                </li>
                                <li class="footer-item-text">
                                    <i class="fas fa-phone"></i>
                                    <div class="footer-item-text-detail">
                                        0912117494 <br>
                                        Thứ 2 - Chủ nhật: 9:00 - 18:00 </div>
                                </li>
                                <li class="footer-item-text">
                                    <i class="fas fa-envelope"></i>
                                    <div class="footer-item-text-detail">
                                        Ngashoptheme@gmail.com</div>
                                </li>
                            </div>
                        </ul>
                    </div>

                    <div class="footer-all-item">
                        <div class="footer-title">DANH MỤC</div>
                        <ul class="footer-item">
                            <li class="footer-item-text">Trang chủ</li>
                            <li class="footer-item-text">Sản phẩm </li>
                            <li class="footer-item-text">Giới thiệu </li>
                            <li class="footer-item-text">Tin tức</li>
                            <li class="footer-item-text">Liên hệ</li>
                            <li class="footer-item-text">Chỉ đường</li>
                        </ul>
                    </div>

                    <div class="footer-all-item">
                        <div class="footer-title">HỖ TRỢ KHÁCH HÀNG</div>
                        <ul class="footer-item">
                            <li class="footer-item-text">Trang chủ</li>
                            <li class="footer-item-text">Sản phẩm </li>
                            <li class="footer-item-text">Giới thiệu </li>
                            <li class="footer-item-text">Tin tức</li>
                            <li class="footer-item-text">Liên hệ</li>
                            <li class="footer-item-text">Chỉ đường</li>
                        </ul>
                    </div>

                    <div class="footer-all-item">
                        <div class="footer-title">KẾT NỐI VỚI NGASHOP</div>
                        <ul class="footer-item">
                            <li class="footer-item-text">Trang chủ</li>
                            <li class="footer-item-text">Sản phẩm </li>
                            <li class="footer-item-text">Giới thiệu </li>
                            <li class="footer-item-text">Tin tức</li>
                            <li class="footer-item-text">Liên hệ</li>
                            <li class="footer-item-text">Chỉ đường</li>
                        </ul>
                    </div>

                </div>
            </div>


        </body>

        </html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> View Detail Product</title>
    <link rel="stylesheet" href="css/Customer/Home/DetailProduct.css">
    <link rel="stylesheet" href="/assets/css/animation.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
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
                    <p>82</p>
                </div>
                <div class="cart-info">
                    <p class="content">Sản Phẩm Mới Thêm</p>
                    <ul class="cart-list">
                        <li class="cart-list-item">
                            <img src="assets/img/_MG_2387.jpg" alt="">
                            <p class="text-cart">Chân váy da xẻ tà </p>
                            <p>₫95000</p>
                            <p>số lượng(10)</p>
                        </li>
                        <li class="cart-list-item">
                            <img src="assets/img/_MG_2387.jpg" alt="">
                            <p class="text-cart">Chân váy da xẻ tà </p>
                            <p>₫95000</p>
                            <p>số lượng(10)</p>
                        </li>
                        <li class="cart-list-item">
                            <img src="assets/img/_MG_2387.jpg" alt="">
                            <p class="text-cart">Chân váy da xẻ tà </p>
                            <p>₫95000</p>
                            <p>số lượng(10)</p>
                        </li>

                    </ul>
                    <div class="cart-button">
                        <button>Xem giỏ hàng</button>
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
		<c:forEach items="${product}" var="i">
			<img src="${pageContext.request.contextPath}/img/img/${i.imgPro}" alt="" class="img-item" class="avatar">
			<div class="infor">
				<div class="infor-header">
					<div class="infor-header-name">${i.namePro}</div>
					<div class="infor-header-status">
						<p class="status">Trạng thái:</p>
						<p class="stock">
							<i class="fas fa-check"></i> Còn hàng
						</p>
					</div>
					<div class="infor-header-price">${i.pricePro}₫</div>
				</div>
				<hr>
				<div class="infor-body">
					<p class="infor-product">Cơm chiên chay thập cẩm hay còn gọi là cơm rang thập cẩm chay là món chay chiên không còn xa lạ với nhiều người. Chúng phổ biến trên khắp các quán ăn, nhà hàng chay từ bình dân đến cao cấp với đa dạng các loại nguyên liệu. Trong bài viết này, hãy cùng Món chay ngon tìm hiểu về cách làm cơm chiên chay thập cẩm này nhé.</p>
					<p class="infor-cate">Loại mặt hàng: ${i.nameCate}</p>
				</div>
				<hr>
				<button class="infor-bottom">Mua hàng</butoon>
			</div>
		</c:forEach>
	</div>
    <div class="comment">
        <button>Xem đánh giá</button>
        <button>Đánh giá</button>
        <div class="read">
            <div class="name-comment">
                <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgVEhISGBgYGBgSGBgRERIYGBgYGRgZGRgYGBocIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISGjQrJCsxNDQ0MTo0NDE0NDE0NDQ0NDQ0NDE0NDQxNDE0NDYxNDQ0NDQ0NDQ0NDQ0NDQ0NjQxNP/AABEIAPAA0gMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAQIEBQYABwj/xAA7EAACAQIDBQYFAgQGAwEAAAABAgADEQQhMQUSQVFhBiJxgZGhMrHB0fAT4SNCUnIHM2KCwvEUorKS/8QAGgEAAgMBAQAAAAAAAAAAAAAAAQIAAwQFBv/EACcRAAICAQQCAQQDAQAAAAAAAAABAhEDBBIhMQVBURNhobEiMoFC/9oADAMBAAIRAxEAPwCptFnRRO2ePOjhEEeBIKzgI4CcBHARhWzgI4CKBFkEbOixJ14QCzryvxm1ETIZnp95VVNqu2mQ6D8+kz5NTCPF2b8Pj82VXVL7mk3ot5j6u0XGj+8PhtsvoQW6gaSuOsi3yqL5+JyRVxaZqA1468zibevkEHgWkuhthTYMLeP3lkdRBurM8vH5oq6Li0W0BSqhtDDgy9OzFKLjwxto0iEiEQipgiIwiFIjGEBYmCIjGhCINorHQwxjR7QbRWWIbOiWnQDkqKJ0URykUCPAiAR4EYRsUCOAnKI+QRsSdFiGEA13AFybAZ5zObU2sz3WncL7n7RdrbQLtuIe6OPM8/CVVUAC2f1PhObqNS29sej0Wg0CilkyLn0haI3jc+H7STugjn4aeEr/ANW2XDpCLi7a+gmI7B1enbX53/aS9i07vqoFjrqctBziWVx8JucgL/SXWxNk7rBn8bWNvOLKVDRg2ZytRs5Fsr6cfKELDgd4aWOo8JYbWwzBywBFyeAIlewBtvCx/NOPlCnaI40yTgcU1M3BuhPp9pqMNWDgEGZWgu6bcDl4+cnYDEbjWPw8enWa9PncXtl1+jk6/QrLFziuV+TSXiEREMWdU8y1TGmMMIYxoCIERBsIVhGEQMsTAsINhCtBtEZagc6dOgHJQjxGiPWWlDHLHrGiPEgjHCLOE6EQWVW3MburuKe83sJaM1sz4zJ4pzUq3Om9n4DhMury7Y0u2dTxmmWXLul0v2LhqG6tzyvn+flxIzUixLG/Twk9SGHiT7fQRXdR5fl7ek5R6grDgzxsPHh5SfgNgu+YUga3bUjn+ay+2HsU1Dv1Fy4Lz8enzm4wmACjQekpnL0i+ONdsy+zezO7ZmGfyl/T2aqjQS0WnHFJWXKkZfaux1cHKYraOzyhKsLr5z1l6QlHtjZiupyz4GFNxYsoqSPMMTcD5dR9DB0MTx/Pz7SbtXCFCVcEcjyMpLkG/Hj9x0l8XZlmmmbLZGJuNw+K+HLylrMbszFWItw7w8OImvo1AyhhxF51dJl3R2vtHmPK6b6c96XD/Y8xjRxjWms5KBtGGPaMaBlsQLwbQrQTRWWxBzp06KWEsR6xgjxLTOx4jxGCPEIjHidEEUyCEPadXdQ8zlMvWfdHVvrmTLvaz7zBPy5/6max9W9VgDpZfYE+n0nI1Ut2R/bg9Z43F9PAn7fJKfE5Cw1yAHE8Zd9nNlNWfeb4VOdtCeXlM7hELMqgXLdwAfLoNPSewbEwC00VRoB/3McnXB1Mcb5ZNwOFCgZSduSMNoUQbGpTHDNhJdOorC6sCOhBiUW2Juzt2PnGSg2DdZDrU4/GbSpU/wDMqAHlqfQSnftLRY2Vah67mUjREyr7T7KFRCQO8Mx16TzGqtiQeGU9lOISoDum/McRPLe02E/TrMBoSSPmPnJB06FyxtWVNOoUYdD+fnWbDYeJ3lK8sx4GYtzl4S67N4uzBfL/AGtl7MPebdPPbkTOVrsP1cDXtco2F4wxYhnYPIjGjGj2g2gZZEE0G8I8E0VlsRk6JOilhLEeIMGPUxyhhFhAYMGPEZFbHicT7ZzhAYypuoT0t65feCctsWxsUHOaivbKSo289/7m/wCI9gfWZfEvZmbiT+/1mkVrI7HkQPIfeZjGZuQM8xYeonDbt2e1jFRior0azsFgP1Kv6hGSaeM9NfDs9lLbqDXd1Y/aZb/D/D7qHLSwymn2qzqh/TF20FzYeczyfLNcI/xSB4jZ2FAtYA8e+1/POQ6eAVW3qLlf7WylDtXY9R6QIFZ6ln3gSyKGa26yBbqQM8tTfMmT9h4B0RCQ6uTZ0XfKbtgM94nvXubg8bdIH12Ou6o2OAZitnNzziY9ju2BtHYYbpF43H5w+gf9GcfA0lJeoepLGNodocEDuI9Pyt+GTMfszfbvDeTcZQAbWdgRv56kC1vOUmz+zbq7tUamwZ3fc3FCBqgsx3RwsAN3oOUVJLthdvpFyUpuQ9OwbmuV+YMyHb3Bd1XAzvYzT7K2Q1EnvXXgOA8L5gdInafCh6D5fCN7S+mskewSXB4zWaH2fV3WU8blfIyVjMAC3FQSM7Eix49ZFSgU3lOoIN/Aj7+00JmNxZ6Dhqm8itzELKnYNbeTdOqn2P4Zazt4pboJnjtTj+nllH7jGg2jzGNHZUgTQTQrwLRGXRGzok6Ackgx6wcepjlTCqYQQSwgjIrkPErtsVO7b81t95Yyk2o+9cXtwv65/XzmbVy246+Tf4zHvzpv1yRqqfw7eDHwylAqj9S54ZW5nW59flNHV+Drp5BT9pmhU/ikcyD52AnIPUnqvYY3ptlY7+nkJr0S+sw3YuuAzJzAYeWX2m9w8qfZqX9Rr0OWUSnhRrJpSCZrSUC36AsucFihpCA3aJiwLawPoZCUlBEeMMvKQqVbdIvocpbJCnYGmiNWpADSU21f8t7/ANDfIy8xLZTPbab+Gw5931NosgroxVXZt6alTurcs2hvlfymPFbedrZAhrCwzHDx56zb9qKooYQgEB3P6YPIkd70W/qJ57gzZh6SzHbVlOWk9qNTseruvbnln1t9fnNDeZSg1iGFshfU87H5e806PcA851dFO4uJ5vy+GpKa98CmDaEME02s48QbQLGGaBaIy6IydOnRSwkCOUxgjllhSwywiwSwixkVMWq1h45D7zO4upe54Xy8AP8AqXWNbI24DdH9zkD2EpMetgd3QBgPQWnP1srpHe8RBJOQVWJpa6A//OszFQ2qNz09ZpMMn8MrxXM+FjM3ifjY8r+w1mBHaZv+ydU91+Aew6KRY/KekUKmk8E2dt+rQVkTcIN7bwJIvraxntWw8atailRTcOob2zHreVSi0zRCUZLgvTVykStdshHgSBU2ilNiKl15Eg2MVv5HivgO9OoWFigUDPIkk+PASHjaVVwQhCn+ps/QR9TtBQXV/kPnIdTtNhx/NfzX7xW4/JdHFkf/ACTaOFay/qMCwzO7kL85YJVytM43aOmfhWof7UvLTAOzjeZSt87Na/mBpImvQkoSj/ZEjEVJUYpd5lHXe9JYV5552+2w9OpTSjUZGCs7FSNDkoPo0KW50JKSirZC/wARat3RL5Kha3Vj9lmLovYjx/aScTiWfvOxZm7xZjc5/sJDt+ecviqVGScrlZqS4ysP5QfMOPvLrZr3S3LL0ylATkNfhYehDfUS02e9j45/noZfpp7ci+/Bj8hi+pgfyuS1MG0feDadhnlUMaAeGaBaIy6IOdOnRRyQDHiDEIssRUwiwl7CDWEtGK32RqozUf6t4+X4ZWYlMm6D63/4y1xC95fP9vnKlqg7wPHI/nnObrFyjv8AipXF/wCBsItmZToy/Jr/ACJEzO1aO5UYHQk6cr8PUS/SrbcYn+bdv0bQ+RAkLtBS3grjUdxh1tl65DxEwnXfRnp6J/hltsKThnNrkvTv6un/ACHi3KeeqAdfnC4d2RgykqwIIIOakZgiGStAg9rs+jEeOairAhgDfmJRdn9pNUooz23iiFiNCSoJ8JfU3vKDX0VGJ2ImZUDwK3EgHZZvkEHgs1ireMNFYsoJmiOqyRVWUOG2aqkE3JGeenkJZq1hCYgASBXr2ElVwVynKTuTI+PxaorO5sqgsT0E8V21jWq13qN/Mch/SoyVfT6zV9tdruawoaIoVyAfiYnIt0FtOt/DI4tAc/p0ylsFXJlyyvgiv7RAuZ6C8VEJyEl1aW4CDrun52t6y0posd7uDwX/ANsvpJ+FbMdCBKpmzC8io/8AyufufaTsKCzIg/uPQDX5yY03JV8i5mljk31TNCI0xxjTO4eO9g2gGhngWistiMnRJ0UsDrCLBLCrLEVMIsKsCsKsZFTOr095ctRmPHhM1tFCrEi+fDrpbxmpEBisEG1/e/OZ9RheSPHZt0GqWCf8umZem53SpzAv16/uOoMKhDi178COf2OlvKWT7KIzGcivsw3ugseVjOXPFOPaPS4tRiyK4yTKd8CVvY3HUC48YajhrWZgM8wLDTnaX2F2ZUYXsthldjY9c4HamCKBSbC9xcWIvyErbZoSRuezdMCkg5qvyEv0Urp6Ss7PYYqgBGgA9pe7koS9lzYEYu2txA1NpKOMkVKV5CqYMHhI2wqiNUxu9oCYi0yczDigBCKkV2wtnlna6if/ACibXui+29nKUYfeFri3I2y8LzaduqW5UpVLZd5SeqkED3aD7S9kHpL+vh+8LBnS2emotL4W1wZ50mZRKSU+F26j5CBWmWO+3P5aKPqZIpux4XJNrWLe0vcNswMoNRQDwA4DrL8eKc3SRkz6nFhVzf8Ansz2GokkseVhzNzdj85f7JwtruwF2yAHAchJtPAKOEPa034NLsdy7OJrfIrLHZDoYYJoRoJpqOZEG0C0M0C0Vl0Qc6JedFLA4hVghCLLEVSCLCrBLCrCiqQVTHgwaC+QzPIayzw2x67/AA0mA5v3R75+0LnGPbBHFObqMWyEIWhSLsEUXZiFA8fpNBg+yxP+Y58KY+pmg2fslKXwqAeep9TrM2TUwS45N+DxmVtOfC/IPDbHpqiruKd0AXtmeZ85T9ttjK+GJRc6ZFQW/wBJ73/qWmvCx1aiGUgi9xax5Tmz/kmejxvbVdIzWyHDU0YcQPWWFpRbPQ4eo1Fr7oN0J4qdPzmDLwNMq+Da/scwgHMKzQDmRkSB7scEnKIa0WgszvaTZwrKlMi+9VQe9j7Ga3E4cZC2VpXbOo/qYgH+WmC3+45D6+kvcWNPCX4VxZnzvlI8925sgUn31UBXPADJtfeVRnpWMwq1EKOLg6/tymZxfZc60n/2v9x9p1cGoio7Wec1ugySm54+U/RmSYxpNxmz6tP/ADKbAf1AXX1EgtNSkmuDlPHKDqSpg2gmMI0G0DGQJ4JoVoFojLog506dAWEgQixqzRbH7Pl7PVuq6hR8RHNv6R7+EaU1FWwQxSyOooqcLh3dt2mjM3JRfzPIdTNRszsmTnXb/ZTP/wBP9vWaLAYdEXdpqqjkot5nmeplhTFiJinqW+I8HTw+PhHmfL/BGwWBp0hanTRfBcz4sbk+ssLZRlZNDDpmLzO23yzoRioqkiIyEG4JENQGRPWOZCYSilrjzgHORIVROnCAhS7b2bvi6/GuanmOKyrwGJJFjqJrqyXEy+0sLuVN8DJtfHjKckfaNOGd8MM2cYUjqRuIZRK6LbAhLRmJfdTrJDsBG4ah+o4JHcX3PKFL0gNpcsnbIwv6aWt327znkTovl94bEHP2klDbThIbnOaYqjJJ27Y2CfWHEG694eEIBbjiAZWYzYWHqZmmVY/zJ3T7ZHzEtyoEVRxhU3F8MrnihNVJWYfH9j3GdGoHH9Ljdb10PtM1jcHUpm1SmyH/AFDI+B0M9ac8pGr0lcFHUMp1DAEehmiOpkv7cmDL43G+YOv0eQvAtNdt7syUu9AEjUpqR/bz8P8AqZGpNMZqStHOnhlidSQK8WdOjANP2Y2X+o++4uimyg6M/wBQNfG3WeiYalur1OZkLZ2CVFVFFgotaWqCYMuTcztafAsUa9+wQogHeHH5xU1hKYyI5GNUWlRoJQFxEoZG0WkMopWAYKwg0+M/2/WODcI1PiPhaQgUxrOFFyQAMyTwivUCi5MqMdUZ8hcLy59TIFIh7S2kz3VCQvu3j0kvAOXQK4DEab4v7wWH2aTmZPw2H3Da2UjHbVcAzhVOgVfAnWV9clTY5TQHDDUCQNp4T4GOi33uoGaj1y85XKN9D4506ZBw+FL5tkvuZaF1prmVCgcJXVMXUK2Wy2yyFz7yrqUHY3dmY/6jePGKQJNy7L3CY9XU7pN+IOoEIJnqFNla63BEu8PX3hnkfY/aNQjVEgRKw+EiPjWzHhIIDDZwxkNjnJKPlIE5hAukOYxhAgEOsMiTMd2u2SpQYimLMDaoBoQcg1uYy9ek2OMyW3nIrUA9IowuGBUjmDLYScXZTmxrJFpnkk6WdfYdZWYBSQCQDzAOUWbd8fk430Z/B6qmRksSINZKQzms7qOofEwI69PKK6x6HOPYSEFpnKEgUyMNaQYRY1L3OXrCqJwkICr0t6dTwoEkRZCCBQJ1p05pCDw2Ug4xi+Q0Hzh1qZHpG0acgSA2G3SBzzkhcKOUJjxYp5/SSBJYWyA+BUxv/h20k6LJYLK11Zfy4i0a29e4twk5pFemAbgSWQCac5IVY8pCAZOtFtOMhCtx5uQo45R7LurYRK+br5xakIGV5ozoa06EBPtJCQJELT0iMg9D3pIMiqe8JKMhBCsKukRRHkSDCRViGKokIOnR27O3ZAjYjRxE5lykAAppkepklRaMpDIQggCQ9o6r5/SHXQSPjM2Akm2UJAcdEtH2kACaAaSHkepIQDeFUwUIkJDgIxzCmBqmREKvEP8AxFhmkQtepJTGEDAXnRJ0ICzjknRFiMgpOYkyQahtbxk1DlIQNTimIMhEBkGFMegjIRZCD5wnRBIEUxpjojaQEGJkL/msVag6+cUC4t0iKgGefnIQjOLv6fKSXMAPjMKxhIcscYgEUyABPIzmSHMitIQbHpGxUMJB7GRK7ZSQ5kDGPYHwkQpXUGu5PjJbGQMCe8xk5zlGCwM6JOkAf//Z" alt="">
                <div class="name-comment-icon">
                    <p>authstore_lynh56</p>  
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                 
            </div>
            <div class="review">
                Sản phẩm giao đúng hàng đã đặt, giao hàng thời gian khá nhanh, chất lượng sản phẩm thấy cũng ổn. Đóng gói kỹ không rách bao, không xuề xoà. Nhân viên tư vấn nhiệt tình, thân thiện. Sẽ ủng hộ thêm cho shop vào các sản phẩm sau, đánh giá sao cho shop về chất lượng và tiếp nhận hàng. Nên mua.
            </div>
        </div>
        <br><br>
        <div class="read">
            <div class="name-comment">
                <img src="data:image/jpeg;base64,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" alt="">
                <div class="name-comment-icon">
                    <p>authstore_lynh56</p>  
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                 
            </div>
            <div class="review">
                Sản phẩm giao đúng hàng đã đặt, giao hàng thời gian khá nhanh, chất lượng sản phẩm thấy cũng ổn. Đóng gói kỹ không rách bao, không xuề xoà. Nhân viên tư vấn nhiệt tình, thân thiện. Sẽ ủng hộ thêm cho shop vào các sản phẩm sau, đánh giá sao cho shop về chất lượng và tiếp nhận hàng. Nên mua.
            </div>
        </div>
        <br><br>
        <div class="read">
            <div class="name-comment">
                <img src="data:image/jpeg;base64,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" alt="">
                <div class="name-comment-icon">
                    <p>authstore_lynh56</p>  
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                </div>
                 
            </div>
            <div class="review">
                Sản phẩm giao đúng hàng đã đặt, giao hàng thời gian khá nhanh, chất lượng sản phẩm thấy cũng ổn. Đóng gói kỹ không rách bao, không xuề xoà. Nhân viên tư vấn nhiệt tình, thân thiện. Sẽ ủng hộ thêm cho shop vào các sản phẩm sau, đánh giá sao cho shop về chất lượng và tiếp nhận hàng. Nên mua.
            </div>
        </div>
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

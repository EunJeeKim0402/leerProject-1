<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 
    

    <style>
    @import url('https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css');

    .product_view_area {
        width: 1100px;
        overflow: hidden;
        box-sizing: border-box;
        margin: 0 auto;
    }
    .product_view_area .product_title {
        width: 100%;
        height: auto;
        box-sizing: border-box;
        overflow: hidden;
        position: relative;
        text-align: left;
        padding-bottom: 20px;
        border-bottom: 1px solid #303030;
        margin-bottom: 20px;
        
    }

    h2 {
        display: block;
        font-size: 1.5em;
        margin-block-start: 0.83em;
        margin-block-end: 0.83em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        font-weight: bold;
        font-family: 'NanumSquare';
    }

    .product_view_area .product_view .product_option_box {
    display: inline-block;
    vertical-align: top;
    width: 50%;
    height: auto;
    box-sizing: border-box;
    padding-left: 50px;
    }

    .option_info_box {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    padding: 25px 20px 25px 20px;
    border-bottom: 1px solid #e3e3e3;
    }

   .product_option_table {
    display: table;
    table-layout: fixed;
    max-width: none;
    width: auto;
    min-width: 100%;
    border-collapse: collapse;
    }

    .option_info_box .product_option_table .option_row {
    display: table-row;
    width: 100%;
    height: auto;
    }

    .option_title {
    width: 27%;
    font-size: 16px;
    font-weight: 800;
    letter-spacing: 0;
    line-height: 1.3;
    color: #343434;
    padding-right:20px;
    }

    .option_content {
    width: auto;
    font-size: 16px;
    font-weight: 400;
    letter-spacing: 0;
    line-height: 1.3;
    color: #343434;
    }

    .design_radio_box {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    overflow: hidden;
    }

    .radio_item {
    display: inline-block;
    vertical-align: top;
    float: left;
    width: calc(33.33% - 0.66px);
    height: 30px;
    /* margin-right: 1px; */
    /* margin-bottom: 1px; */
    position: relative;
    }
    input[type="radio" i] {
    background-color: initial;
    cursor: default;
    appearance: auto;
    box-sizing: border-box;
    margin: 3px 3px 0px 5px;
    padding: initial;
    border: initial;
    }

    .selected_option_box {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    margin-top: 30px;
    border: 1px solid #c4c4c4;
    background-color: #f5f5f5;
    padding: 20px;
    }
    .selected_option{
        width:100%;
        height:auto;
        box-sizing:border-box;
    }
    .selected_option_name {
    display: inline-block;
    text-align: center;
    float: left;
    padding-right:15px;
    /* font-size: 14px; */
    font-weight: 700;
    letter-spacing: -0.5px;
    color: #4c4c4c;
    height:48px;
    }
    .selected_list span{vertical-align: middle;}

    .acount_box {
    display: inline-block;
    vertical-align: top;
    padding-left: 160px;
    }
    .but_cnt{height:30px;}

    .acount_box a {
    display: inline-block;
    vertical-align: top;
    width: 30px;
    height: 30px;
    box-sizing: border-box;
    border: 1px solid #d4d4d4;
    background-color: #fff;
    text-align: center;
    line-height: 28px;
    cursor: pointer;
    font-size: 16px;
    -ms-user-select: none;
    -moz-user-select: -moz-none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    user-select: none;
    }
    .acount_box a,input{vertical-align: middle;}

    .acount_box a.up_btn {
    margin-left: -1px;
    }
    



    .product_view_area .product_view .product_option_box .selected_option_box .selected_option .selected_list .acount_box a {
        display: inline-block;
        vertical-align: top;
        float: left;
        width: 30px;
        height: 30px;
        box-sizing: border-box;
        border: 1px solid #d4d4d4;
        background-color: #fff;
        text-align: center;
        line-height: 28px;
        cursor: pointer;
        font-size: 16px;
        -ms-user-select: none;
        -moz-user-select: -moz-none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        user-select: none;
    }
    a {
        vertical-align: baseline;
        background: 0 0;
    }

    .product_view_area .product_view .product_option_box .selected_option_box .selected_option .selected_list .acount_box a {
    display: inline-block;
    vertical-align: top;
    float: left;
    width: 30px;
    height: 30px;
    box-sizing: border-box;
    border: 1px solid #d4d4d4;
    background-color: #fff;
    text-align: center;
    line-height: 28px;  
    cursor: pointer;
    font-size: 16px;
    -ms-user-select: none;
    -moz-user-select: -moz-none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    user-select: none;
    }
    li{display: table-row;}
    
    .price_box{text-align: right;}
    .payment_btn_box button{width:32%;}

    .product_etc_area .etc_area {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    margin-bottom: 55px;
    }
    .etc_title {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    overflow: hidden;
    font-size: 24px;
    font-weight: 700;
    letter-spacing: -1px;
    color: #343434;
    text-align: left;
    line-height: 33px;
    margin-bottom: 13px;
    }

    .etc_title button {
    display: inline-block;
    vertical-align: top;
    float: right;
    font-size: 15px;
    font-weight: 700;
    letter-spacing: -1px;
    color: #fff;
    width: 105px;
    height: auto;
    line-height: 33px;
    text-align: center;
    background-color:#343434;
    border: 0;
    cursor: pointer;
    }

    .etc_content_box {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    background-color: #fff;
    }
    .product_etc_area .etc_area .etc_content_box .product_review_list {
    width: 100%;
    height: auto;
    box-sizing: border-box;
    background-color: #fff;
    border-top: 1px solid #2b2f3a;
    }

   

    </style>

</head>
<body>
	
	<%@ include file="../common/menubar.jsp" %>
	
	 <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="./index.html">Home</a></li>
                            <li class="active"><a href="./shop-grid.html">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="./blog.html">Blog</a></li>
                            <li><a href="./contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">item: <span>$150.00</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>

    <!-- Product Details Section Begin -->
    <section class="product-details spad product_view_area">
        <h2 class="product_title">
            <span style="font-size:28px; font-weight: 800;">우먼센스</span>
            <br>
            <p class="title_sub_text" style="margin:0px; font-family: 'NanumSquare';">2022년 08월호</p>
        </h2>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6" style="padding-left:70px;padding-right:70px;">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src=http://www.walbox.co.kr/upfile/item/111_1613734143.jpg alt="">
                        </div>
                        <!-- 
                        <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="img/product/details/product-details-2.jpg"
                                src="img/product/details/thumb-1.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-3.jpg"
                                src="img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-5.jpg"
                                src="img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-4.jpg"
                                src="img/product/details/thumb-4.jpg" alt="">
                        </div>
                         -->
                        <button type="button" style="border:#4c4c4c solid 1px; background-color:#ffffff; color:#343434;font-size: 14px; font-weight: 600; margin-left: 150px; margin-top:8px;padding:1px 15px;">과월호 보기</button>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    
                    <div class="option_info_box base_price">
                        <ul class="product_option_table">
                            <li class="option_row">
                                <span class="option_title">판매가</span> 
                                <span class="option_content">
                                    <strong style="font-size:30px; font-weight:800;">8,450원</strong>
                                </span>
                            </li>
                        </ul>
                    </div>

                    <div class="option_info_box delivery">
                        <ul class="product_option_table">
                            <li class="option_row">
                                <span class="option_title">적립포인트</span>
                                <span class="option_content">
                                    10% 적립
                                </span>
                            </li>
                        </ul>
                    </div>

                    <div class="option_info_box delivery">
                        <ul class="product_option_table">
                            <li class="option_row">
                                <span class="option_title">배송방법</span>
                                <span class="option_content">
                                    주문 금액 10,000원 미만 구매시 3,000원 추가 
                                </span>
                            </li>
                        </ul>
                    </div>

                    <div class="option_info_box delivery">
                        <ul class="product_option_table">
                            <li class="option_row">
                                <span class="option_title">배송주기</span>
                                <span class="option_content">
                                    <div class="design_radio_box">
                                        <div class="radio_item">
                                            <input type="radio" name="shipping_cycle" id="one_cycle" value="1" checked>
                                            <label for="one_cycle">개별구매</label>
                                        </div>
                                        <div class="radio_item">
                                            <input type="radio" name="shipping_cycle" id="one_cycle" value="1" checked>
                                            <label for="one_cycle">1달에 한번</label>
                                        </div>
                                        <div class="radio_item">
                                            <input type="radio" name="shipping_cycle" id="one_cycle" value="1" checked>
                                            <label for="one_cycle">2달에 한번</label>
                                        </div>

                                    </div>
                                </span>
                            </li>
                        </ul>
                    </div>

                    <div class="option_info_box delivery">
                        <ul class="product_option_table">
                            <li class="option_row">
                                <span class="option_title">구독기간</span>
                                <span class="option_content">
                                    12개월
                                </span>
                            </li>
                        </ul>
                    </div>


                    <div class="selected_option_box">
                        <ul class="selected_option" id="selected">
                            <li class="selected_list">
                                <span class="selected_option_name">
                                    우먼센스
                                </span>
                                <span class="acount_box">
                                    <a class="down_btn">-</a>
                                    <input type="text" class="but_cnt" value="1">
                                    <a class="up_btn">+</a>
                                </span>
                            </li>
                        </ul>
                    </div>

                    <div class="price_box">
                        총 상품금액(수량) :
                        <strong id="total_item_krw_price" style="font-size:30px; font-weight:800;">8,450</strong>
                        원 (
                        <span id="total_item_qty">1</span>
                        개) X
                        <span id="total_item_qty">6</span>
                    </div>
                    <div class="payment_btn_box">
                        <button type="button" class="site-btn" style="padding:0px; margin-right:5px; font-size: 15px; color:#303030; background-color: #ffffff; border: #303030 solid 1px;" >장바구니</button>
                        <button type="button" class="site-btn" style="padding:0px; margin-right:5px; font-size: 15px;">바로구매</button>
                        <button type="button" class="site-btn" style="padding:0px; font-size: 15px; color:#303030;  background-color: #ffffff; border: #303030 solid 1px;">찜하기</button>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true" style="font-size:18px">상품 상세정보</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false" style="font-size:18px">리뷰</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false" style="font-size:18px">상품문의 <span>(1)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">

                                <section class="related-product">
                                    <div class="container" style="padding-top:80px; text-align: center;">
                                      <img src="http://www.walbox.co.kr/upfile/board/222_24.jpg">  
                                    </div>
                                </section>

                                <div class="etc_area" id="product_review" style="padding-bottom:100px;">
                                    <h2 class="etc_title" >리뷰
                                        <button type="button" class="etn_write_btn">리뷰 쓰기</button>
                                    </h2>
                                    <div style="border-bottom: 1px solid #303030;"></div>
                                    <div class="etc_content_box" >
                                        <ul class="product_review_list" id="review_list"></ul>
                                    </div>
                                </div>

                                <div class="etc_area" id="product_review">
                                    <h2 class="etc_title" >상품문의
                                        <button type="button" class="etn_write_btn">상품문의</button>
                                    </h2>
                                    <div style="border-bottom: 1px solid #303030;"></div>
                                    <div class="etc_content_box" >
                                        <ul class="product_review_list" id="review_list"></ul>
                                        <table class="table">
                                            <tr>
                                                <th>번호</th>
                                                <th>처리상태</th>
                                                <th>문의 제목</th>
                                                <th>작성자</th>
                                                <th>작성일</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>답변대기</td>
                                                <td>언제 들어오나요?</td>
                                                <td>name</td>
                                                <td>2022-07-24</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="etc_area" id="product_review">
                                    <h2 class="etc_title">리뷰
                                        <button type="button" class="etn_write_btn">리뷰 쓰기</button>
                                    </h2>
                                    <div style="border-bottom: 1px solid #303030;"></div>
                                    <div class="etc_content_box">
                                        <ul class="product_review_list" id="review_list"></ul>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="etc_area" id="product_review">
                                    <h2 class="etc_title">상품문의
                                        <button type="button" class="etn_write_btn">상품문의</button>
                                    </h2>
                                    <div style="border-bottom: 1px solid #303030;"></div>
                                    <div class="etc_content_box">
                                        <ul class="product_review_list" id="review_list"></ul>
                                        <table class="table">
                                            <tr>
                                                <th>번호</th>
                                                <th>처리상태</th>
                                                <th>문의 제목</th>
                                                <th>작성자</th>
                                                <th>작성일</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>답변대기</td>
                                                <td>언제 들어오나요?</td>
                                                <td>name</td>
                                                <td>2022-07-24</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->


    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="<%=contextPath %>/resources/js/jquery-3.3.1.min.js"></script>
    <script src="<%=contextPath %>/resources/js/bootstrap.min.js"></script>
    <script src="<%=contextPath %>/resources/js/jquery.nice-select.min.js"></script>
    <script src="<%=contextPath %>/resources/js/jquery-ui.min.js"></script>
    <script src="<%=contextPath %>/resources/js/jquery.slicknav.js"></script>
    <script src="<%=contextPath %>/resources/js/mixitup.min.js"></script>
    <script src="<%=contextPath %>/resources/js/owl.carousel.min.js"></script>
    <script src="<%=contextPath %>/resources/js/main.js"></script>
	
	
</body>
</html>
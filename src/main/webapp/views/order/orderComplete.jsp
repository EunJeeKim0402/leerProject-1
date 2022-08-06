<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.order.model.vo.OrProduct, com.leer.order.model.vo.Order" %>
<% 
	String OrNo = (String)request.getAttribute("OrNo");
	ArrayList<OrProduct> pList = (ArrayList<OrProduct>)request.getAttribute("pList"); 
	Order o = (Order)request.getAttribute("order");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
    <!-- Css Styles -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/heeyeong/style.css" type="text/css">
    
   
    <style>
     @import url('https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css');
    	
        .table td tr{
            text-align: center;
            vertical-align: middle;
        }
        #btn1{
        font-size:15px;
        color:#303030;
        background-color: #ffffff; 
        border: #303030 solid 1.5px;
        padding-top:10px;
        margin-right: 5px;

        }

        #btn2{
        font-size:15px;
        border:#303030 solid 1.5px;
        padding-top:10px;
        margin-left:5px;
        }
    
	</style>
</head>
<body>
	<section class="product spad">
        <div class="container">
            <div class="row">

                <div class="col-lg-9 col-md-7" style="flex-grow:1;"> 
                    <div class="etc_area" id="product_review">
                                    <br><br>
                                    <h2 class="etc_title" style="margin-top:0; font-size:35px; text-align:center" >
                                        결제가 완료되었습니다.
                                    </h2>
                                    <div style="text-align:center">주문내역은 마이페이지 > 주문 및 배송조회에서 확인할 수 있습니다.</div>
                                    
                                    <br><br>
                                    <h4 style="font-family:NanumSquare; font-weight:700;">결제 상품 정보</h4>
                                    
                                    <div class="etc_content_box" style="margin-top:20px">
                                        <ul class="product_review_list" id="review_list"></ul>
                                        <table class="table" style="border:#e3e3e3 1px solid;">
                                            <tr style="font-size:14px;">
                                                <th>주문번호</th>
                                                <th>상품명</th>
                                                <th>최종결제금액</th>
                                                <th>결제수단</th>
                                                <th>주문날짜</th>
                                            </tr>
                                            <tr style="font-size:14px;">
                                               <td><%=OrNo %></td>
                                                <td>어라운드 외 1건</td>
                                                <td>
                                                    <span>32,000</span>
                                                    <span>원</span>

                                                </td>
                                                <td>카드</td>
                                                <td>2022-08-03</td>
                                            </tr>

                                        </table>


                                        <br>
                                        
                                        <div style="text-align:center">
                                            <button type="button" class="site-btn" id="btn1">메인페이지로</button>
                                            <button type="button" class="site-btn" id="btn2">주문/배송 조회</button>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>   
    </section>
    
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
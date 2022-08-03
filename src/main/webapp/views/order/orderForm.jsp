<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.leer.mypage.model.vo.Cart , java.text.DecimalFormat"%>
    
<% 
	ArrayList<Cart> list = (ArrayList<Cart>)request.getAttribute("list");
	int point = (int)request.getAttribute("point");
	DecimalFormat comma = new DecimalFormat("###,###");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
    <style>
        @import url('https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css');
    
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

        .order_price_box{
            width:100%;
            box-sizing: border-box;
            text-align:center;
            background-color: #fff;
            border: 2px solid lightgray;
            padding:20px 10px;
            margin-top:25px;
            margin-bottom:0px;
            font-size:14px;
        }

        .order_table_box {
            width: 100%;
            height: auto;
            box-sizing: border-box;
            margin-bottom: 40px;
            margin-top:50px;
        }

        .order_table_box th {
            font-weight: 400;
            text-align: center;
            padding-left: 0;
            padding-right: 0;
            background-color: #f0f0f0;
        }

        .order_table_box input{
            border: 1px solid #e1e1e1;
        }

        .order_table_box table{
            border:#dadada solid;
        }
        
        .order_table_box h3{
            margin-bottom:15px;
            margin-top:50px;
            font-size:23px;
            font-family: "NanumSquare";
            font-weight: 600;
            color:#303030;
        }

        #tb th{
            vertical-align: middle;
            text-align: center;
        }

        #tb td{
            vertical-align: middle;
            text-align: center;
        }

        .cart_price{
            font-size: 12px;
            font-weight: 400;
            letter-spacing: -0.5px;
            color: #343434;
            padding: 0 5px;
        }

        .order_price_list li{
            display: inline-block;
            vertical-align: top;
            line-height: 1.2;
            text-align: center;
        }

        .cart_sign span {
            display: inline-block;
            vertical-align: top;
            width: 40px;
            height: 40px;
            line-height: 40px;
            border-radius: 50%;
            background-color: #f0f0f0;
            font-size: 20px;
            font-weight: 800;
            color: #343434;
        }

        .cart_price strong {
            /* display: block; */
            font-size: 22px;
            font-weight: 800;
            color:#434343;
            word-break: break-all;
            padding-top: 20px;
        }

        .cart_sign{padding-left: 20px;padding-right:20px}
        
        #address-btn, #point-btn, #order-btn{
            background-color: #434343 ;
            padding-left: 20px;
            padding-right: 20px;
            color:#ffffff;
            font-weight: 500;
            border:1px #434343;
        }

        #order-btn{
            margin:auto;
            display: block;
        }
       
    </style>
</head>
<body>
		
	<%@ include file="../common/menubar.jsp" %>
	<section class="product spad">
        <div class="container">
            <div class="row">

                <div class="col-lg-9 col-md-7" style="padding-left:20px; flex-grow:1;">
                    <div class="etc_area" id="product_review">
                                    <h2 class="etc_title" style="margin-top:0%; font-weight: 800; margin-bottom: 10px; font-size: 32px; font-family:NanumSquare;">주문하기
                                        
                                    </h2>
                                    <div style="border-bottom: 2px solid #303030; margin-bottom: 30px;;"></div>
                                    <div class="etc_content_box" >
                                        <ul class="product_review_list" id="review_list"></ul>
                                        <table class="table" style= "border:#dadada solid" id="tb" >
                                            <tr style="font-size:14px;">
                                                <th>번호</th>
                                                <th style="width:30%;" width:40%;>상품정보</th>
                                                <th>수량</th>
                                                <th>상품금액</th>
                                                <th>상품총액</th>
                                                <th>배송비</th>
                                            </tr>
                                            <% 
                                            	int count = 1; 
                                            	int length = list.size();
                                            %>
                                            <%for(Cart c : list) {%>
                                            <tr style="font-size:14px;" id="cartList">
                                                <td style="vertical-align:middle; text-align:center;"><%= count++ %></td>
                                                <td style="width:40%;">
                                                    <span style="display:inline; text-align:left">
                                                        <img src=<%=c.getImageUrl() %> width="15%;" >
                                                    </span>
                                                    <span style="height:100%;text-align:center;">
                                                        <a><b><%=c.getpName() %></b></a>
                                                        <%if (c.getOrCycle() == 1) {%>
                                                        <a style="font-size:12px">배송주기 : 개별구매 </a>
                                                        <% } %>
                                                        <%if (c.getOrCycle() == 2) {%>
                                                        <a style="font-size:12px">배송주기 : 1달에 한번 </a>
                                                        <% } %>
                                                        <%if (c.getOrCycle() == 3) {%>
                                                        <a style="font-size:12px">배송주기 : 2달에 한번 </a>
                                                        <% } %>
                                                    </span>  
                                                </td>
                                                <td style="vertical-align:middle;">
	                                                <span><%=c.getAmount() %></span> 
	                                                <span>개</span>
                                                </td>
                                                <td style="vertical-align:middle;">
	                                                 <span><%= comma.format(c.getPrice()) %></span>
	                                                 <span>원</span>
                                                </td>
                                                <%if (c.getOrCycle() == 1) { %>
                                                	<td style="vertical-align:middle;" class="sum-price">
	                                                	<span><%= comma.format(c.getPrice() * c.getAmount())%> </span>
	                                                	<span>원</span>
                                                	</td>
                                                <% } %>
                                                <%if (c.getOrCycle() == 2) { %>
                                                	<td style="vertical-align:middle;" class="sum-price">
                                                	<span><%= comma.format(c.getPrice() * 12 * c.getAmount()) %></span> 
                                                	<span>원</span>
                                                	</td>
                                                <% } %>
                                                <%if (c.getOrCycle() == 3) { %>
                                                	<td style="vertical-align:middle;" class="sum-price">
                                                	<span><%= comma.format(c.getPrice() * 6 * c.getAmount()) %></span>
                                                	<span>원</span>
                                                	</td>
                                                <% } %>
                                                
                                                <%if (c.getOrCycle() == 1 && length == 1 && c.getPrice() < 10000) {%>
                                                	<td style="vertical-align:middle;"class="deli-fee">
                                                	<span>3,000</span> 
                                                	<span>원</span>
                                                	</td>
                                                <% } else { %>
                                                	<td style="vertical-align:middle;" class="deli-fee">
                                                	<span>무료배송</span>
                                                	</td>
                                                <% } %>
                                            </tr>
                                            <%} %>

                                        </table>

                                        <div class="order_table_box" >
                                            <h3>1. 주문자 정보 </h3>
                                            <table class="table" style="margin-top:20px" >
                                                <tr> 
                                                    <th style="background:#f1f1f1" >주문하시는분</th>
                                                    <td><input type="text" style="width:300px" ></td>
                                                </tr>
                                                <tr>
                                                    <th style="background:#f1f1f1">주문자 연락처</th>
                                                    <td><input type="text" style="width:300px" > - 
                                                        <input type="text" style="width:300px" > - 
                                                        <input type="text" style="width:300px" ></td> 
                                                </tr>
                                                <tr>
                                                    <th style="background:#f1f1f1">주문자 이메일</th>
                                                    <td><input type="text" style="width:300px" > @ 
                                                        <input type="text" style="width:300px" & nbsp;>
                                        
                                                    
                                                    </td>
                                                </tr>
                                            </table>

                                            <h3>2. 배송지 정보 </h3>
                                            <table class="table" style="margin-top:20px;">
                                                <tr> 
                                                    <th style="background:#f1f1f1" >수취인명 </th>
                                                    <td><input type="text" style="width:300px" ></td>
                                                </tr>
                                                <tr>
                                                    <th style="background:#f1f1f1">수취인 연락처</th>
                                                    <td><input type="text" style="width:300px" > - 
                                                        <input type="text" style="width:300px" > - 
                                                        <input type="text" style="width:300px" ></td> 
                                                </tr>
                                                <tr>
                                                    <th style="background:#f1f1f1; vertical-align: middle;">배송지주소</th>
                                                    
                                                     <td style="vertical-align:middle">
                                                     	<input type="radio">새로운 주소로 입력
                                                        <input type="radio">내 주소 <br>
                                                        <input type="text" id="sample6_postcode" placeholder="우편번호">
														<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
														<input type="text" id="sample6_address" placeholder="주소"><br>
														<input type="text" id="sample6_detailAddress" placeholder="상세주소">
														<input type="text" id="sample6_extraAddress" placeholder="참고항목">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th style="background:#f1f1f1">배송메세지</th>
                                                    <td>
                                                        <input type="text" style="width:600px" >
                                                    </td>
                                                </tr>
                                            </table>

                                            <h3>3. 적립포인트 사용 </h3>
                                            <table class="table" style="margin-top:20px;">
                                                <tr> 
                                                    <th style="background:#f1f1f1" >포인트 </th>
                                                    <td>
                                                        <span>보유 포인트 : </span><span id="point"><%=point %></span><span>P</span>
                                                        <input type="text" id="point-text" placeholder="사용할 적립금 입력" >
                                                        <button class="btn" id="point-btn"  style="padding:14px;">적용</button>
                                                    </td>
                                                </tr>
                                               
                                            </table>
                                        </div>

                                        <div class="order_price_box">
                                            <ul class="order_price_list">
                                                <li class="cart_price">
                                                   상품총액
                                                   <div style="height:7px;"></div>
                                                   <strong id="sumPrice">0</strong>
                                                    <strong style="display:inline">원</strong>
                                                   
                                                </li>
                                                <li class="cart_sign">
                                                    <span>-</span>
                                                </li>
                                                <li class="cart_price">
                                                    할인총액
                                                    <div style="height:7px;"></div>
                                                    <strong id="sum-discount">0</strong>
                                                    <strong>원</strong>
                                                 </li>
                                                 <li class="cart_sign">
                                                    <span>+</span>
                                                </li>
                                                <li class="cart_price">
                                                    배송비
                                                    <div style="height:7px;"></div>
                                                    <strong id="deliFee">0</strong>
                                                    <strong>원</strong>
                                                 </li>
                                                <li class="cart_sign">
                                                    <span>=</span>
                                                </li>
                                                <li class="cart_price">
                                                    총 구매금액(상품)
                                                    <div style="height:7px;"></div>
                                                    <strong id="finalPrice">22,710</strong>
                                                    <strong>원</strong>
                                                 </li>

                                            </ul>
                                        </div>
                                        
                                         <br>
                                        <div>
                                            <button class=btn id="order-btn" style="padding:20px 40px; font-size:20px" onclick="requestPay()">주문하기</button>
                                        </div>
										
										<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
										<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js" type="text/javascript"></script>
										<script>
										let sumPrice = 0;
										let deliFee = 0;
										let finalPrice = 0;	
										
										
										function number_format(num){
					                        return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
					                    }
										
										/*포인트 계산 : ajax 써야할 것 같음*/
										let point = 0;
										$("#point-btn").click(function(){
											point = parseInt($("#point-text").val());
											$("#point").html(parseInt($("#point").text()) - point);
											$("#point-text").css("color", "blue");
											$("#sum-discount").html($("#point-text").val());
											
											finalPrice = sumPrice - point + deliFee;
											console.log(sumPrice);
											console.log(point);
											console.log(deliFee);
											console.log(finalPrice);
											$("#finalPrice").html(number_format(finalPrice));
										})
										
										 function sample6_execDaumPostcode() {
									        new daum.Postcode({
									            oncomplete: function(data) {
									                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
									
									                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
									                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
									                var addr = ''; // 주소 변수
									                var extraAddr = ''; // 참고항목 변수
									
									                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
									                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
									                    addr = data.roadAddress;
									                } else { // 사용자가 지번 주소를 선택했을 경우(J)
									                    addr = data.jibunAddress;
									                }
									
									                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
									                if(data.userSelectedType === 'R'){
									                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
									                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
									                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
									                        extraAddr += data.bname;
									                    }
									                    // 건물명이 있고, 공동주택일 경우 추가한다.
									                    if(data.buildingName !== '' && data.apartment === 'Y'){
									                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
									                    }
									                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									                    if(extraAddr !== ''){
									                        extraAddr = ' (' + extraAddr + ')';
									                    }
									                    // 조합된 참고항목을 해당 필드에 넣는다.
									                    document.getElementById("sample6_extraAddress").value = extraAddr;
									                
									                } else {
									                    document.getElementById("sample6_extraAddress").value = '';
									                }
									
									                // 우편번호와 주소 정보를 해당 필드에 넣는다.
									                document.getElementById('sample6_postcode').value = data.zonecode;
									                document.getElementById("sample6_address").value = addr;
									                // 커서를 상세주소 필드로 이동한다.
									                document.getElementById("sample6_detailAddress").focus();
									            }
									        }).open();
									    }
										
										$(function(){
											
											/* 물건 합계 금액 출력 */
											$(".sum-price").each(function(){
												sumPrice += parseInt($(this).children().eq(0).text().replace(",", ""));
												
											})
											$("#sumPrice").html(number_format(sumPrice));
											
											
											
											/* 배송비 출력 : 총 금액으로 부여해줘야 하나 ?  */
											console.log($("#cartList").children().eq(5).children().eq(0).text() );
											if($("#cartList").children().eq(5).children().eq(0).text() != '무료배송'){
												deliFee = 3000;
												$("#deliFee").html("3,000");
											}else{
												deliFee = 0;
												$("#deliFee").html(0);
											}
											
											
											
											$("#finalPrice").html(number_format(sumPrice + deliFee));	
											
											
											
											
											
											
										});
										
										
										const { IMP } = window;
										IMP.init('imp45723440');
										

										function requestPay() {
										
									      //IMP.request_pay(param, callback) 결제창 호출
									      IMP.request_pay({ // param
									          pg: "html5_inicis",
									          pay_method: "card",
									          merchant_uid: "ORD20180131-0000011",
									          name: "노르웨이 회전 의자",
									          amount: 64900,
									          buyer_email: "gildong@gmail.com",
									          buyer_name: "홍길동",
									          buyer_tel: "010-4242-4242",
									          buyer_addr: "서울특별시 강남구 신사동",
									          buyer_postcode: "01181"
									      }, function (rsp) { // callback
									    	  console.log(rsp);
									          if (rsp.success) {
									        	  var msg = '결제가 완료되었습니다.';
									              alert(msg);
									              location.href = "결제 완료 후 이동할 페이지 url"
									             	jQuery.ajax({
									             		url:
									             		method:
									             		headers:
									             		data: {
									             			imp_uid: rsp.imp_uid,
                											merchant_uid: rsp.merchant_uid
									             		}
									                 }).done(function (data) {
									                 
									                 })
									          } else {
									              alert("결제에 실패하였습니다." + rsp.error_msg);
									          }
									          $("#order-btn").submit();
									      });
									      
									    }
										</script>
										
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>   
                    
                </div>
            </div>
        </div>
    </section>
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
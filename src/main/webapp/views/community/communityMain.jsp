<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, com.leer.community.model.vo.ComuBoard, com.leer.member.model.vo.Member, com.leer.common.model.vo.Category"%>
<%

//ArrayList<Category> cateList = (ArrayList<Category>)request.getAttribute("cateList"); 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>LEER</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/elegant-icons.css" type="text/css">
	<%--  <link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/nice-select.css" type="text/css"> --%>
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/jquery-ui.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/slicknav.min.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/style.css" type="text/css">
	<link rel="stylesheet" href="<%=contextPath %>/resources/css/beomjin/css/summernote/summernote-lite.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/026bd0ca4c.js" crossorigin="anonymous"></script>
</head>
<body>
	
    <!-- Blog Section Begin -->
    <section class="blog spad" style="margin-left: 50px">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                        <div class="sidebar__item">
                            <p style="font-size: small;">카테고리</p>
                            <ul>
                                <li><a href="<%=contextPath%>/comu.bo?cpage=1">전체게시글</a></li>
                               <% for(Category ct : cateList) { %>
                                  <li><a href="<%=contextPath%>/cgory.li?cpage=1&cNo=<%= ct.getCategoryNo()%>"><%= ct.getCategoryName() %></a></li>
                                <% } %>
         	                    <%-- <li><a href="<%=contextPath%>/cgory.li?cpage=1&cNo=<%=c.getCategoryNo()%>">패션/여성</a></li>
                                <li><a href="<%=contextPath%>/comu.bo?cpage=1&cNo=">라이프/인테리어</a></li>
                                <li><a href="<%=contextPath%>/comu.bo?cpage=1&cNo=">시사/경제</a></li>
                                <li><a href="<%=contextPath%>/comu.bo?cpage=1&cNo=">교육/과학</a></li>
                                <li><a href="<%=contextPath%>/comu.bo?cpage=1&cNo=">문화/예술</a></li>
                                <li><a href="<%=contextPath%>/comu.bo?cpage=1&cNo=">여행/취미</a></li>  --%>
                            </ul>
                            <p style="font-size: small;" id="noti">leer이야기</p>
                            <ul>
                                <li><a href="<%=contextPath%>/comuNoti.li?cpage=1">커뮤니티 공지사항</a></li>
                                
                                <% if(loginUser != null){ %>
                                <li><a href="<%=contextPath%>/myBoard.li?memNo=<%=loginUser.getMemNo()%>&cpage=1">내가 쓴 게시글</a></li>
                                <li><a href="#">북마크 목록</a></li>
                                <% } %>
                                
                            </ul>
                        </div>
                    </div>
                </div>
                
   
</body>
</html>
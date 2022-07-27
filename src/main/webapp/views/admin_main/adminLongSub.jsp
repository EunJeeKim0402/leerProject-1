<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<%= request.getContextPath() %>/resources/css/eunjee/assets/images/favicon.png">
    <title>Matrix Template - The Ultimate Multipurpose admin template</title>
    <!-- Custom CSS -->
    <link href="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/flot/css/float-chart.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<%= request.getContextPath() %>/resources/css/eunjee/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="<%=request.getContextPath()%>/views/admin_main/adminMainPage.jsp">
                        <!-- Logo icon -->
                        <b class="logo-icon p-l-10">
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                        </b>
                        <!--End Logo icon -->

                        <!-- ============================================================== -->
                        <!-- leer로고 -->
                        <!-- ============================================================== -->
                        <span class="logo-text">
                            <!-- dark Logo text -->
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <img src="<%= request.getContextPath() %>/resources/css/eunjee/image/KakaoTalk_20220727_090856741.png" alt="" width="130px">
                           
                       </span>
                        <!-- Logo icon -->
                        <!-- <b class="logo-icon"> -->
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!-- <img src="assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->
                            
                        <!-- </b> -->
                        <!--End Logo icon -->
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto">
                        <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->                        
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                        <!-- ============================================================== -->
                        <!-- 우측상단 -->
                        <!-- ============================================================== -->
                        <label for="">admin01</label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="<%= request.getContextPath() %>/resources/css/eunjee/assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31"></a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated">
                                <a class="dropdown-item" href="javascript:void(0)"><i class="ti-user m-r-5 m-l-5"></i> My Profile</a>
                                <a class="dropdown-item" href="javascript:void(0)"><i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- 왼쪽메뉴바  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin5">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav" class="p-t-30">
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-face"></i><span class="hide-menu">회원관리</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="<%=request.getContextPath()%>/views/admin_main/adminMemberView.jsp" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 회원전체조회 </span></a></li>
                                <li class="sidebar-item"><a href="<%=request.getContextPath()%>/views/admin_main/adminLongSub.jsp" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 장기구독자조회 </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">고객센터</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="error-403.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 공지사항 </span></a></li>
                                <li class="sidebar-item"><a href="error-404.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 1:1상담 </span></a></li>
                                <li class="sidebar-item"><a href="error-405.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> FAQ </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-chart-bubble"></i><span class="hide-menu">제품관리</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="error-403.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 리뷰관리 </span></a></li>
                                <li class="sidebar-item"><a href="error-404.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 상품문의 </span></a></li>
                                <li class="sidebar-item"><a href="error-405.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 상품조회 </span></a></li>
                                <li class="sidebar-item"><a href="error-405.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 상품등록 </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-receipt"></i><span class="hide-menu">상품및결제관리</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="error-403.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 입출고관리 </span></a></li>
                                <li class="sidebar-item"><a href="error-404.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 결제내역조회 </span></a></li>
                                <li class="sidebar-item"><a href="error-405.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 환불관리 </span></a></li>
                                <li class="sidebar-item"><a href="error-405.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 배송관리 </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-move-resize-variant"></i><span class="hide-menu">홈페이지관리</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="<%=request.getContextPath()%>/views/admin_main/adminTerms.jsp" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 이용약관 </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-pencil"></i><span class="hide-menu">커뮤니티관리</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="<%=request.getContextPath()%>/views/admin_main/adminComuNotiView.jsp" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 공지사항 </span></a></li>
                                <li class="sidebar-item"><a href="<%=request.getContextPath()%>/views/admin_main/comu/adminComuPost.jsp" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 게시물관리 </span></a></li>
                                <li class="sidebar-item"><a href="error-405.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 신고관리 </span></a></li>
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-chart-bar"></i><span class="hide-menu">통계</span></a>
                            <ul aria-expanded="false" class="collapse  first-level">
                                <li class="sidebar-item"><a href="error-403.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 전체조회 </span></a></li>
                                <li class="sidebar-item"><a href="error-404.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 게시글통계 </span></a></li>
                                <li class="sidebar-item"><a href="error-405.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 매출통계 </span></a></li>
                                <li class="sidebar-item"><a href="error-405.html" class="sidebar-link"><i class="fas fa-chevron-right"></i><span class="hide-menu"> 별점통계 </span></a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- 왼쪽 메뉴바 끝  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
             <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">회원관리</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">Search</button>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales Cards  -->
                <!-- ============================================================== -->
                <div class="card">
                    <div class="card-body" style="height:55px">
                        <h5 class="card-title m-b-0" style="vertical-align:45px">장기구독자조회</h5>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="btn-group bb1" style="margin: 0px 0px 150px 0px;">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">전체조회</a>
                                <a class="dropdown-item" href="#">등록일 순 조회</a>
                                <a class="dropdown-item" href="#">가나다 순 조회</a>
                            </div>
                        </div>
                    </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead class="thead-light">
                                    <tr>
                                        <th width="1">
                                            <label class="customcheckbox m-b-20">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <th scope="col">No.</th>
                                        <th scope="col">아이디</th>
                                        <th scope="col">이름</th>
                                        <th scope="col">이메일</th>
                                        <th scope="col">휴대폰</th>
                                        <th scope="col">주소</th>
                                        <th scope="col">구독시작일</th>
                                        <th scope="col">구독종료일</th>
                                        <th scope="col">포인트</th>
                                    </tr>
                                </thead>
                                <tbody class="custom">
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>19</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>18</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>17</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>16</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>15</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>14</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>13</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>12</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>11</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>10</td>
                                        <td>user01</td>
                                        <td>김두두</td>
                                        <td>sdf@naver.com</td>
                                        <td>010-2222-3333</td>
                                        <td>서울</td>
                                        <td>2022.07.26</td>
                                        <td>2023.07.26</td>
                                        <td>300</td>
                                    </tr>
                                    <tr align="center">
                                        <th colspan="10">
                                            <br>
                                            <div class="btn-group" role="group" aria-label="Basic example">
                                                <button type="button" class="btn btn-outline-secondary"><</button>
                                                <button type="button" class="btn btn-outline-secondary">1</button>
                                                <button type="button" class="btn btn-outline-secondary">2</button>
                                                <button type="button" class="btn btn-outline-secondary">3</button>
                                                <button type="button" class="btn btn-outline-secondary">4</button>
                                                <button type="button" class="btn btn-outline-secondary">5</button>
                                                <button type="button" class="btn btn-outline-secondary">6</button>
                                                <button type="button" class="btn btn-outline-secondary">7</button>
                                                <button type="button" class="btn btn-outline-secondary">8</button>
                                                <button type="button" class="btn btn-outline-secondary">9</button>
                                                <button type="button" class="btn btn-outline-secondary">10</button>
                                                <button type="button" class="btn btn-outline-secondary">></button>
                                              </div>
                                        </th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
                
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <!-- <script src="dist/js/pages/dashboards/dashboard1.js"></script> -->
    <!-- Charts js Files -->
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/flot/excanvas.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/flot/jquery.flot.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/flot/jquery.flot.pie.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/flot/jquery.flot.time.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/flot/jquery.flot.stack.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/flot/jquery.flot.crosshair.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/css/eunjee/dist/js/pages/chart/chart-page-init.js"></script>

</body>
</body>
</html>
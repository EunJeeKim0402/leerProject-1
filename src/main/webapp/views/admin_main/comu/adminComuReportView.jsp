<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.community.model.vo.Report, com.leer.common.model.vo.PageInfo"%> 
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Report> list = (ArrayList<Report>)request.getAttribute("list");
	
	/*
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage(); */
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.custom>tr:hover {
    cursor: pointer;
    opacity: 0.7;
    background:#cecece;
    color:dark;
}
</style>
</head>
<body>

	<%@ include file="../../common/adminMenubar.jsp" %>
	
	<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">커뮤니티관리</h2>
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
                        <h5 class="card-title m-b-0" style="vertical-align:45px">신고관리</h5>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="btn-group bb1" style="margin: 0px 0px 150px 0px;">
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">전체조회</a>
                                <a class="dropdown-item" href="#">등록일 순 조회</a>
                                <a class="dropdown-item" href="#">조회수 많은순으로 조회</a>
                            </div>
                        </div>
                        <button class="btn btn-dark" style="float:right" id="btnn" data-toggle="modal" data-target="#Modal2">글 삭제</button>
                        <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">글 삭제</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                                해당 글을 삭제하시겠습니까?
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger">네</button>
                                                <button type="button" class="btn btn-info" data-dismiss="modal">아니오</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        <!-- <button class="btn btn-dark" style="float:right" id="btnn">게시물 삭제</button> -->
                    </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead class="thead-light">
                                    <tr>
                                        <th width="1">
                                            <label class="customcheckbox m-b-20">
                                                <input type="checkbox" id="mainCheckbox"/>
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <th scope="col">No.</th>
                                        <th scope="col">카테고리</th>
                                        <th scope="col">신고분류</th>
                                        <th scope="col">작성한 회원번호</th>
                                        <th scope="col">신고한 회원번호</th>                                        
                                        <th scope="col">신고일</th>
                                        <th scope="col">처리여부</th>
                                    </tr>
                                </thead>
                                <tbody class="custom">
                                	<% for(Report r : list) { %>
	                                    <tr onclick="location.href='<%=request.getContextPath()%>/views/admin_main/comu/adminReportDetail.jsp';">
	                                        <th>
	                                            <label class="customcheckbox">
	                                                <input type="checkbox" class="listCheckbox" />
	                                                <span class="checkmark"></span>
	                                            </label>
	                                        </th>
	                                        <td><%=r.getReportNo()%></td>
	                                        <td><%=r.getReportCategory()%></td>
	                                        <td><%=r.getReportClass()%></td>
	                                        <td><%=r.getReportedNo()%></td>
	                                        <td><%=r.getMemNo()%></td>
	                                        <td><%=r.getReportDate()%></td>
	                                        <td><%=r.getReportYn()%></td>
	                                    </tr>
                                    <% } %>
                               </tbody>
                               <tfoot>
                                    <tr align="center">
                                        <th colspan="10">
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
                                </tfoot>
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
	<!-- 체크박스 전체 선택 -->
    <script src="assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
    <script src="assets/extra-libs/multicheck/jquery.multicheck.js"></script>
    <script src="assets/extra-libs/DataTables/datatables.min.js"></script>
    <script>
        /****************************************
         *       Basic Table                   *
         ****************************************/
        $('#zero_config').DataTable();
    </script>
</body>
</html>
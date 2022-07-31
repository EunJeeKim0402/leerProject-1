<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.leer.product.model.vo.Product, com.leer.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품 전체조회 페이지</title>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <br><br><br>
                <h2 class="page-title">상품 전체 조회</h2>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="form-control mr-sm-2" type="text" placeholder="Search">
                <button class="btn btn-success" type="submit">조회</button>
                <div class="ml-auto text-right">
                    <nav aria-label="breadcrumb">
                    </nav>
                    <button type="button" onclick="location.href='<%=request.getContextPath()%>/adProEnroll.do'" class="btn btn-info btn-lg">등록</button> &nbsp;&nbsp;&nbsp;
                    <button type="button" onclick="location.href='<%=request.getContextPath()%>/adProUpdate.do?no=<%=p.getpCode()%>" class="btn btn-warning btn-lg">수정</button> &nbsp;&nbsp;&nbsp;
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#Modal2">
                        삭제
                    </button>
                    <!-- Modal -->
                    <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">상품 삭제</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                    해당 상품을 삭제하시겠습니까?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">네</button>
                                    <button type="button" class="btn btn-info" data-dismiss="modal">아니오</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- 목록 -->
        <div class="card">
            <!-- ============================================================== -->
            <div class="card-body">
                <!-- 전체조회  -->
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">전체조회</a>
                        <a class="dropdown-item" href="#">등록일 순 조회</a>
                        <a class="dropdown-item" href="#">재고 순 조회</a>
                    </div>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <!-- 카테고리 조회 -->
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">카테고리별 조회</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">패션/여성</a>
                        <a class="dropdown-item" href="#">라이프/인테리어</a>
                        <a class="dropdown-item" href="#">문화/예술</a>
                        <a class="dropdown-item" href="#">여행/취미</a>
                        <a class="dropdown-item" href="#">시사/경제</a>
                        <a class="dropdown-item" href="#">교육/과학</a>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <div class="table-responsive">
                <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th>
                                <label class="customcheckbox m-b-20">
                                    <input type="checkbox" id="mainCheckbox" />
                                    <span class="checkmark"></span>
                                </label>
                            </th>
                            <th scope="col">등록 순번</th>
                            <th scope="col">상품명</th>
                            <th scope="col">카테고리</th>
                            <th scope="col">상품코드</th>
                            <th scope="col">발행처</th>
                            <th scope="col">출간일</th>
                            <th scope="col">판매가</th>
                            <th scope="col">등록일</th>
                            <th scope="col">재고</th>
                        </tr>
                    </thead>
                    <tbody class="customtable">
                        <% int number = list.size(); %>
                        <% for(Product p : list) { %>
                        <tr>
                            <th>
                                <label class="customcheckbox">
                                    <input type="checkbox" class="listCheckbox" />
                                    <span class="checkmark"></span>
                                </label>
                            </th>
                            <td><%= number-- %></td>
                            <td><%=p.getpName()%></td>
                            <td><%=p.getCategoryNo()%></td>
                            <td><%=p.getpCode()%></td>
                            <td><%=p.getPublisher()%></td>
                            <td><%=p.getPublishMonth()%></td>
                            <td><%=p.getPrice()%></td>
                            <td><%=p.getEnrollDate()%></td>
                            <td><%=p.getpStock()%></td>
                        </tr>
                        <% } %>
                    </tbody>
                    <tfoot>
                        
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
    <!-- footer -->
    <!-- ============================================================== -->
    <footer class="footer text-center">
        <!-- 페이징처리 바 -->
        <tr align="center">
            <th colspan="10">
                <br>
                <div class="btn-group paging-area" role="group" aria-label="Basic example">
                <% if(currentPage != 1) { %>
                    <button type="button" onclick="location.href='<%=request.getContextPath()%>/adProList.do?cpage=<%=currentPage-1%>';"
                        class="btn btn-outline-secondary">&lt;</button>
                <% } %>
                <% for(int p=startPage; p<=endPage; p++) { %>
                    <% if(p == currentPage) { %>
                        <button type="button" disabled class="btn btn-outline-secondary"><%=p%></button>
                    <% } else { %>
                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/adProList.do?cpage=<%=p%>';"
                            class="btn btn-outline-secondary"><%=p%></button>
                    <% } %>
                <% } %>
                
                <% if(currentPage != maxPage) { %>
                    <button type="button" onclick="location.href='<%=request.getContextPath()%>/adProList.do?cpage=<%=currentPage+1%>';"
                        class="btn btn-outline-secondary">&gt;</button>
                <% } %>
                </div>
            </th>
        </tr>
    </footer>
    <!-- ============================================================== -->
    <!-- End footer -->
    <!-- ============================================================== -->
            
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->

</body>
</html>
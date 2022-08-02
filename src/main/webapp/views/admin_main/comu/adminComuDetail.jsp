<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                <div class="card mb-4">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                          <div class="card-body">
                            <h2 class="card-title" align="center">커뮤니티 공지사항 상세정보</h2>
                            <div class="table-responsive pt-3">
                              <table class="tt1" border="1" align="center">
                                <tbody>
                                  <tr>
                                    <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                      공지사항 제목
                                    </td>
                                    <td width="700px">
                                        <label for="" style="float: left;">&nbsp;&nbsp; 공지 제목</label> 
                                    </td>
                                  </tr>
                                  
                                  <tr>
                                    <td width="300px" height="45px" style="background:hsl(0, 0%, 77%); color:rgb(80, 80, 80); font-weight: bold;">
                                      작성자
                                    </td>
                                    <td>
                                        <label for="" style="float: left;">&nbsp;&nbsp; admin01</label> 
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                              <br>
                              <table class="tarea" align="center" style="margin:5px 5px 5px 5px">
                                <textarea name="" id="" cols="133.5" rows="23" resize="none" placeholder="">공지내용공지내용공지내용</textarea>
                              </table>
                              <div class="">
                                <table class="tt1" border="1" align="center">
                                  <tbody>
                                  </tbody>                                  
                                </table>
                            </div>
                            <br>
                            <c:if test="${sessionMemberLv == 1}">
                                    <div class="d-grid gap-3" style="text-align: center">
                                        <a href="" id="btn" class="btn btn-dark" style="width:150px">공지사항 삭제</a>
                                        <a href="<%= request.getContextPath() %>/adComuNotiList.do" id="btn" class="btn btn-dark" style="width:150px">목록으로</a>
                                    </div>
                            </c:if>
                          </div>
                        </div>
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
</body>
</html>
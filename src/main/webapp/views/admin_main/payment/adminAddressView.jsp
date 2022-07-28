<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송 현황 전체조회 페이지</title>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
	            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">배송 현황 전체조회</h2>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">조회</button>
                        <div class="ml-auto text-right">
                            <nav aria-label="breadcrumb">
                            </nav>
                            <!-- 운송장 등록 Button trigger modal -->
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#deleteReview">
                                운송장 등록
                            </button>
                                <!-- Modal -->
                                <div class="modal fade" id="deleteReview" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">운송장 등록</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                                <table>
                                                    <tr>
                                                        <td>택배사</td>
                                                        <td>
                                                            <select name="" id="" class="col-md-12">
                                                                <option value="" disabled selected hidden>택배사를 선택하세요</option>
                                                                <option value="">CJ대한통운</option>
                                                                <option value="">한진택배</option>
                                                                <option value="">우체국택배</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>운송장 번호</td>
                                                        <td><input type="text" name="" class="col-md-12" required placeholder="운송장 번호('-'포함)"></td>
                                                    </tr>
                                                </table>        
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-info">등록</button>
                                                <button type="reset" class="btn btn-dark" data-dismiss="modal">취소</button>
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
                <!-- ============================================================== -->
                <!-- 전체조회  -->
                <div class="btn-group">
                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">조회방법 선택</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">상품코드</a>
                        <a class="dropdown-item" href="#">입금상태</a>
                        <a class="dropdown-item" href="#">배송상태</a>
                        <a class="dropdown-item" href="#">운송장</a>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- 목록 -->
                <div class="card">
                    <div class="card-body">
                        <!-- <h5 class="card-title m-b-0">상품전체조회</h5> -->
                    </div>
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
                                        <th scope="col">등록순번</th>
                                        <th scope="col">주문번호</th>
                                        <th scope="col">아이디</th>
                                        <th scope="col">상품코드</th>
                                        <th scope="col">결제일시</th>
                                        <th scope="col">입금상태</th>
                                        <th scope="col">배송상태</th>
                                        <th scope="col">상태변경</th>
                                        <th scope="col">운송장발행</th>
                                    </tr>
                                </thead>
                                <tbody class="customtable">
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>653-251</td>
                                        <td>user03</td>
                                        <td>FW-14</td>
                                        <td>2022-07-26</td>
                                        <td style="color: blue;">입금완료</td>
                                        <td style="color: blue;">배송완료</td>
                                        <td><button type="button" class="btn btn-info btn-sm">변경</button></td>
                                        <td style="color: blue;">발급완료</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>653-251</td>
                                        <td>user03</td>
                                        <td>FW-14</td>
                                        <td>2022-07-26</td>
                                        <td style="color: red;">미입금</td>
                                        <td style="color: red;">배송준비중</td>
                                        <td><button type="button" class="btn btn-info btn-sm">변경</button></td>
                                        <td style="color: red;">미발급</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>653-251</td>
                                        <td>user03</td>
                                        <td>FW-14</td>
                                        <td>2022-07-26</td>
                                        <td style="color: blue;">입금완료</td>
                                        <td style="color: blue;">배송완료</td>
                                        <td><button type="button" class="btn btn-info btn-sm">변경</button></td>
                                        <td style="color: blue;">발급완료</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>653-251</td>
                                        <td>user03</td>
                                        <td>FW-14</td>
                                        <td>2022-07-26</td>
                                        <td style="color: red;">미입금</td>
                                        <td style="color: red;">배송준비중</td>
                                        <td><button type="button" class="btn btn-info btn-sm">변경</button></td>
                                        <td style="color: red;">미발급</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>653-251</td>
                                        <td>user03</td>
                                        <td>FW-14</td>
                                        <td>2022-07-26</td>
                                        <td style="color: blue;">입금완료</td>
                                        <td style="color: blue;">배송완료</td>
                                        <td><button type="button" class="btn btn-info btn-sm">변경</button></td>
                                        <td style="color: blue;">발급완료</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>653-251</td>
                                        <td>user03</td>
                                        <td>FW-14</td>
                                        <td>2022-07-26</td>
                                        <td style="color: red;">미입금</td>
                                        <td style="color: red;">배송준비중</td>
                                        <td><button type="button" class="btn btn-info btn-sm">변경</button></td>
                                        <td style="color: red;">미발급</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>653-251</td>
                                        <td>user03</td>
                                        <td>FW-14</td>
                                        <td>2022-07-26</td>
                                        <td style="color: blue;">입금완료</td>
                                        <td style="color: blue;">배송완료</td>
                                        <td><button type="button" class="btn btn-info btn-sm">변경</button></td>
                                        <td style="color: blue;">발급완료</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>653-251</td>
                                        <td>user03</td>
                                        <td>FW-14</td>
                                        <td>2022-07-26</td>
                                        <td style="color: red;">미입금</td>
                                        <td style="color: red;">배송준비중</td>
                                        <td><button type="button" class="btn btn-info btn-sm">변경</button></td>
                                        <td style="color: red;">미발급</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>653-251</td>
                                        <td>user03</td>
                                        <td>FW-14</td>
                                        <td>2022-07-26</td>
                                        <td style="color: blue;">입금완료</td>
                                        <td style="color: blue;">배송완료</td>
                                        <td><button type="button" class="btn btn-info btn-sm">변경</button></td>
                                        <td style="color: blue;">발급완료</td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>56</td>
                                        <td>653-251</td>
                                        <td>user03</td>
                                        <td>FW-14</td>
                                        <td>2022-07-26</td>
                                        <td style="color: red;">미입금</td>
                                        <td style="color: red;">배송준비중</td>
                                        <td><button type="button" class="btn btn-info btn-sm">변경</button></td>
                                        <td style="color: red;">미발급</td>
                                    </tr>
                                    
                                    <!-- 페이징처리 바 -->
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
                                </tbody>
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
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
</body>
</html>
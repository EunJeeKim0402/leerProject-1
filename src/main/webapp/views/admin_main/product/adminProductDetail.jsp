<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록/수정 페이지</title>
</head>
<body>
	<%@ include file="../../common/adminMenubar.jsp" %>
	<%@ include file="../../common/adminScript.jsp" %>
	
	<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <br><br><br>
                        <h2 class="page-title">상품 등록 및 수정</h2>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <h4 class="card-title">
                    <div class="col-sm-2" style="height: 40px;">등록순번</div>
                    <div class="col-sm-2" style="height: 10px;">상품코드</div>
                </h4>

                <!-- ============================================================== -->
                <div class="card-body">
                    <!-- 잡지명 -->
                    <div class="form-group row">
                        <label for="fname" class="col-sm-1 control-label col-form-label">잡지명</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="fname" placeholder="상품명을 입력하세요" required>
                        </div>
                    </div>
                    <!-- 출간일 -->
                    <div class="form-group row">
                        <label class="col-sm-1">출간일</label>
                        <div class="col-sm-2">
                            <select class="select2 form-control custom-select" required>
                                <option>출간 월 선택 (2022)</option>
                                <optgroup label="이번달호">
                                    <option value="">08</option>
                                </optgroup>
                                <optgroup label="과월호">
                                    <option value="">01</option>
                                    <option value="">02</option>
                                    <option value="">03</option>
                                    <option value="">04</option>
                                    <option value="">05</option>
                                    <option value="">06</option>
                                    <option value="">07</option>
                                </optgroup>
                                <optgroup label="출간준비">
                                    <option value="">09</option>
                                    <option value="">10</option>
                                    <option value="">11</option>
                                    <option value="">12</option>
                                </optgroup>
                            </select>
                        </div>
                    </div>
                    <!-- 발행사 -->
                    <div class="form-group row">
                        <label for="fname" class="col-sm-1 control-label col-form-label">발행사</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="fname" placeholder="발행사를 입력하세요" required>
                        </div>
                    </div>
                    <!-- 카테고리 -->
                    <div class="form-group row">
                        <label class="col-sm-1">카테고리</label>
                        <div class="col-sm-2">
                            <select class="select2 form-control custom-select" required>
                                <option>카테고리 선택</option>
                                <option value="">패션/여성</option>
                                <option value="">라이프/인테리어</option>
                                <option value="">문화/예술</option>
                                <option value="">여행/취미</option>
                                <option value="">시사/경제</option>
                                <option value="">교육/과학</option>
                            </select>
                        </div>
                    </div>
                    <!-- 판매가 -->
                    <div class="form-group row">
                        <label for="fname" class="col-sm-1 control-label col-form-label">판매가</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="fname" placeholder="가격을 입력하세요" required>
                        </div>
                    </div>
                    <!-- 재고 -->
                    <div class="form-group row">
                        <label for="fname" class="col-sm-1 control-label col-form-label">재고</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="fname" placeholder="입고수량을 입력하세요" required>
                        </div>
                    </div>
                    <!-- 표지 이미지 -->
                    <div class="form-group row">
                        <label class="col-md-1">표지 이미지</label>
                        <div class="col-sm-3">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="validatedCustomFile">
                                <label class="custom-file-label" for="validatedCustomFile">표지 이미지를 선택하세요</label>
                                <!-- <div class="invalid-feedback">Example invalid custom file feedback</div> -->
                            </div>
                        </div>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-light margin-5" data-toggle="modal" data-target="#Modal3">
                            표지 이미지 미리보기
                        </button>
                        <!-- Modal -->
                        <div class="modal fade" id="Modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">표지 이미지 미리보기</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <img src="assets/images/background/img5.jpg" width="100% ">
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 상세 이미지 -->
                    <div class="form-group row">
                        <label class="col-md-1">상세 이미지</label>
                        <div class="col-sm-3">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="validatedCustomFile">
                                <label class="custom-file-label" for="validatedCustomFile">상세 이미지를 선택하세요</label>
                                <!-- <div class="invalid-feedback">Example invalid custom file feedback</div> -->
                            </div>
                        </div>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-light margin-5" data-toggle="modal" data-target="#Modal3">
                            상세 이미지 미리보기
                        </button>
                        <!-- Modal -->
                        <div class="modal fade" id="Modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">상세 이미지 미리보기</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <img src="assets/images/background/img5.jpg" width="100% ">
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 부록 이미지 -->
                    <div class="form-group row">
                        <label class="col-md-1">부록 이미지</label>
                        <div class="col-sm-3">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="validatedCustomFile">
                                <label class="custom-file-label" for="validatedCustomFile">부록 이미지를 선택하세요</label>
                                <!-- <div class="invalid-feedback">Example invalid custom file feedback</div> -->
                            </div>
                        </div>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-light margin-5" data-toggle="modal" data-target="#Modal3">
                            부록 이미지 미리보기
                        </button>
                        <!-- Modal -->
                        <div class="modal fade" id="Modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">부록 이미지 미리보기</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <img src="assets/images/background/img5.jpg" width="100% ">
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 배송비 -->
                    <div class="form-group row">
                        <label class="col-sm-1">배송비</label>
                        <div class="col-sm-2">
                            <select class="select2 form-control custom-select" required>
                                <option value="">3000원</option>
                                <option value="">무료</option>
                                <option value="">2500원</option>
                            </select>
                        </div>
                    </div>
                    <!-- 적립금 -->
                    <div class="form-group row">
                        <label class="col-sm-1">적립금</label>
                        <div class="col-sm-2">
                            <select class="select2 form-control custom-select" required>
                                <option value="">10% 적립</option>
                                <option value="">20%</option>
                                <option value="">30%</option>
                                <option value="">40%</option>
                                <option value="">50%</option>
                            </select>
                        </div>
                    </div>
                <!-- 버튼 -->
                <div class="border-top">
                    <div class="card-body">
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Modal2">
                            등록 / 수정
                        </button>
                            <!-- Modal -->
                            <div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel" style="font-weight: bolder; color: black;">상품 등록 및 수정</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body" style="text-align: center; font-size: larger; font-weight: bold;" >
                                            해당 상품을 등록 또는 수정하시겠습니까?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary">네</button>
                                            <button type="button" class="btn btn-dark" data-dismiss="modal">아니오</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <button type="reset" class="btn btn-dark btn-lg">뒤로가기</button>
                    </div>
                </div>
                <!-- ============================================================== -->
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

</body>
</html>
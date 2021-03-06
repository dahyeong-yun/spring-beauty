<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

	<title>:: Beauty Inside ::</title>

<title>:: Beauty Inside ::</title>
<style>
</style>
</head>
<body class="bg-light">
	<!-- 상단바 -->
	<%@include file="navbar.jsp" %>
	
	<!-- 관리자 페이지 -->
	<div class="container mt-3">
		<div class="row">
			<!-- 관리자 페이지 좌측 메뉴 -->
			<div class="col-md-3">
				<div class="list-group">
					<a href="/beauty/adminPage/dashboard" class="list-group-item">대쉬보드</a>
					<a href="/beauty/adminPage/member" class="list-group-item">회원관리</a>
					<a href="/beauty/adminPage/item" class="list-group-item active">제품관리</a>
					<a href="/beauty/adminPage/tip" class="list-group-item">팁관리</a>
					<a href="/beauty/adminPage/review" class="list-group-item">리뷰관리</a>
					<a href="/beauty/adminPage/ads" class="list-group-item">광고관리</a>
				</div>
			</div>

			<!-- 관리자 페이지 우측 메뉴 -->
			<div class="col-md-9">
				<div class="p-4 bg-white rounded shadow-sm">
					<div class="container" >
						<form action="/beauty/adminPage/itemWriteForm" method="POST">
							<table class="table table-striped table-bordered table-hover table-condensed">
								<tr>
									<th>제품명</th>
									<td><input type="text" name="ITEM_NAME" class="form-control"></td>
								</tr>
								<tr>
									<th>브랜드</th>
									<td><input type="text" name="ITEM_BRAND" class="form-control"></td>
								</tr>
								<tr>
									<th>카테고리</th>
									<td>
										<select name="ITEM_CATEGORY" class="form-control">
											<option value="skincare">스킨케어</option>
										</select>
									</td>
								</tr>
								<tr>
									<th>가격 (임시)</th>
									<td><input type="text" name="ITEM_PRICE"  class="form-control"></td>
								</tr>
								<tr>
									<th>이미지 (임시)</th>
									<td><input type="text" name="ITEM_IMAGE"  class="form-control"></td>
								</tr>
								<tr>
									<th>나이대</th>
									<td>
										<select name="AGE_ID" class="form-control">
											<option value="1">10대</option>
											<option value="2">20대</option>
											<option value="3">30대</option>
											<option value="4">40대</option>
										</select>
									</td>
								</tr>
								<tr>
									<th>피부타입</th>
									<td>
										<div class="btn-group" data-toggle="buttons">
											<label class="btn btn-secondary active">
												<input type="radio" name="SKINTYPE_ID" value="1" /> 지성
											</label>
											<label class="btn btn-secondary">
												<input type="radio" name="SKINTYPE_ID" value="2" /> 건성
											</label>
											<label class="btn btn-secondary">
												<input type="radio" name="SKINTYPE_ID" value="3" /> 복합성
											</label>
										</div>
									</td>
								</tr>
								<tr>
									<th>성별</th>
									<td>
										<div class="btn-group" data-toggle="buttons">
											<label class="btn btn-secondary">
												<input type="radio" name="GENDER_ID" value="1" /> 남자
											</label>
											<label class="btn btn-secondary active">
												<input type="radio" name="GENDER_ID" value="2" /> 여자
											</label>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" value="작성" class="btn btn-primary">
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		
		</div>
	</div>
	
	<!-- 하단 -->
	<%@include file="footer.jsp" %>
	
	<script type="text/javascript">
	
	</script>
</body>
</html>
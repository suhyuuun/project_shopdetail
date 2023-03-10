<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>${data.foodstore_id}</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous" />
<script src="https://kit.fontawesome.com/edd4d6d779.js"
	crossorigin="anonymous"></script>
<link href="css/main.css" type="text/css" rel="stylesheet" />
<link href=css/shopDetail.css " type="text/css" rel="stylesheet" />
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=952441bca7c2877c20d98599bb8b06bd&amp;libraries=LIBRARY"></script>
<script charset="UTF-8"
	src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.8/kakao.js"></script>
</head>
<body>
	<div class="body-wrap container col-12 column-row">
		<div class="row">
					<%-- 메인 메뉴 불러오기 --%>
			<jsp:include page="mainMenu.jsp"></jsp:include>
		</div>
			<div class="shop-detail-wrap col-12 mt-2 ms-3 column-row"
				id="shop-detail-wrap">
				<div class="row">
					<div class="shop-detail-header container d-flex">
						<div
							class="col-9 container shop-left column-row py-2 px-0 ms-0 me-0">
							<div class="shop-main-image">
								<img src='${data.img_url}' id="shop-main-image"/>
							</div>
							<div class="shop-info-body column-row p-4">
								<div class="row">
									<div class="shop-info d-flex">
										<div class="shop-name col-7 pe-3">
											<!-- 업소 이름 -->
											<p id="shop-name">${data.foodstore_id}</p>
										</div>
										<div class="col-3 shop-category">
											<!-- 1차/2차 카테고리 -->
											<p id="shop-category">${data.foodtype}</p>

										</div>
										<div class="d-flex col-2" id='div-shop-rating'>
											<div>
												<p id="shop-rating">${data.rate}</p>
											</div>
											<div class="bookmark p-2">
												<input type="checkbox" class="btn-check" id="shop-bookmark"
													autocomplete="off" /> <label class="btn btn-bookmark"
													for="shop-bookmark"><i
													class="fa-solid fa-heart fa-2x"></i> </label>
											</div>
										</div>
									</div>
								</div>
								<div class="shop-info-detail d-flex mt-1">
									<div class="shop-address">
										<p id="shop-address">${data.road_name}</p>
										<p id="shop-phone">${data.foodstroe_num}</p>
									</div>
									<div class="shop-etc">
										<p id="shop-close">${data.openinghours}</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4 shop-right column-row p-2 mx-0">
							<div class="shop-map" id="staticMap"></div>
							<div class="shop-menu column-low mt-3 p-3" id="shop-menu">
								<div class="row">
									<p id="shop-menu">메뉴</p>
								</div>
								<div class="d-flex">
									<div class="col-9" id="shop-menu-detail">
										<p id="shop-menu-detail">소금구이 (1인분)(150g)</p>
										<p id="shop-menu-detail">전통평양냉면</p>
										<p id="shop-menu-detail">전통평양비빔냉면</p>
										<p id="shop-menu-detail">온면</p>
										<p id="shop-menu-detail">김치말이냉면</p>
										<p id="shop-menu-detail">장국밥</p>
										<p id="shop-menu-detail">9개까지</p>
										<p id="shop-menu-detail">넘어가면</p>
										<p id="shop-menu-detail">안보임</p>
									</div>
									<div class="col-3" id="shop-menu-price">
										<p id="shop-menu-price">16,000원</p>
										<p id="shop-menu-price">16,000원</p>
										<p id="shop-menu-price">16,000원</p>
										<p id="shop-menu-price">16,000원</p>
										<p id="shop-menu-price">16,000원</p>
										<p id="shop-menu-price">15,000원</p>
										<p id="shop-menu-price">15,000원</p>
										<p id="shop-menu-price">15,000원</p>
										<p id="shop-menu-price">0,000원</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<script>
		var lat = '${data.latitude}';
		var lng = '${data.longitude}';
	</script>
	<script src=js/detail_page.js></script>
</body>
</html>

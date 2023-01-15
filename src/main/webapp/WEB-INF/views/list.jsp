<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집리스트 페이지</title>
</head>
<body>
	<table>
		<tr>
			<th>맛집이름</th>
		</tr>
		<!-- HttpRequestServelet 사용-->
<%-- 		<c:forEach items="${aList}" var="aList"> --%>
<!-- 			<tr> -->
<%-- 			<td>${aList.res_num}</td> --%>
<%-- 				<td><c:url var="path" value="detailpage.do"> --%>
<%-- 						<c:param name="latitude" value="${aList.latitude}" /> --%>
<%-- 						<c:param name="longitude" value="${aList.longitude}" /> --%>
<%-- 						<c:param name="foodtype" value="${aList.foodtype}" /> --%>
<%-- 						<c:param name="img_url" value="${aList.img_url}" /> --%>
<%-- 						<c:param name="foodstore_id" value="${aList.foodstore_id}" /> --%>
<%-- 						<c:param name="foodstroe_num" value="${aList.foodstroe_num}" /> --%>
<%-- 						<c:param name="road_name" value="${aList.road_name}" /> --%>
<%-- 						<c:param name="rate" value="${aList.rate}" /> --%>
<%-- 						<c:param name="openinghours" value="${aList.openinghours}" /> --%>
<%-- 						<c:param name="menuNameSearch" value="${aList.menuNameSearch}" /> --%>
<%-- 						<c:param name="menuPriceSearch" value="${aList.menuPriceSearch}" /> --%>
<%-- 					</c:url> <a href="${path}">${aList.foodstore_id}</a></td> --%>
<!-- 			</tr> -->
<%-- 		</c:forEach> --%>
		
		
		<!-- aList에 parameter값 받아서 적용 -->
		<c:forEach items="${aList}" var="aList">
			<tr>
				<td><c:url var="path" value="detailpage_aList.do">
						<c:param name="res_num" value="${aList.res_num}" />
					</c:url> <a href="${path}">${aList.foodstore_id}</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
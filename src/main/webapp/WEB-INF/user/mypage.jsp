<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빌려중고야? - 마이페이지</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/global.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/user/mypage.css'/>">
</head>
<body>
	<div class="list-link-container"></div>

	<div class="container">
		<div class="header-text">마이페이지</div>
		<div class="green-wrapper">
			<a href="/DBDB-deep/product/list" class="list-link">물품 리스트로 돌아가기</a>

			<div class="wrapper">
				<img class="card-icon"
					src="<c:url value='/images/mypage/mypage.svg'/>" />
				<div class="info-div">
					<div class="name-div">
						<div class="name">${user.nickname}</div>
						님, 안녕하세요!
					</div>
					<div class="email-div">${user.email}</div>
				</div>
			</div>
			<div class="manner-div">${user.nickname}님의&nbsp;매너점수:
				${user.manner_score}</div>
		</div>
		<div class="menu-wrapper">
			<a
				href="<c:url value='/mypage/borrowedProduct?customerId=${customerId}'/>"
				class="menu-div">빌린 물품 조회</a> <a class="menu-div"
				href="<c:url value='/mypage/rentproduct'/>">빌려준 물품 조회</a> <a
				class="menu-div"
				href="<c:url value='/user/cartItem?customerId=${customerId}'/>">장바구니
				관리 </a>
		</div>
	</div>
</body>
</html>

<%-- <%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>빌려중고야? - 빌려준 물품 조회</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/global.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/user/rentProduct.css'/>">
</head>
<body>
    <div class="container">
        <div class="name-div">
            <div class="name">${user.nickname}</div>
            님이 빌려준 물품
        </div>

        <div class="products">
            <c:forEach var="rentInfo" items="${rentProducts}">
                <div class="product">
                    <img src="${rentInfo.photo}" alt="${rentInfo.title}">
                    <h3>${rentInfo.title}</h3>
                    <p>대여 시작일: ${rentInfo.start_day}</p>
                    <p>대여 종료일: ${rentInfo.end_day}</p>
                    <p>상태: ${rentInfo.status}</p>
                    <p>가격: ${rentInfo.rental_fee}</p>
                    <p>주소: ${rentInfo.address}</p>
                    <p>대여자: ${rentInfo.ownerName}</p>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.RentInfo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>대여 상품 목록</title>

    <style>
        .product-container {
            border: 1px solid #ddd;
            margin-bottom: 10px;
            padding: 10px;
        }
        .product-image {
            width: 100px;
            height: 100px;
        }

    </style>
</head>
<body>

    <h2>대여 상품 목록</h2>

    <c:choose>
        <c:when test="${not empty rentProducts}">
            <c:forEach var="rentInfo" items="${rentProducts}">
                <div class="product-container">
                    <div>
                        <img class="product-image" src="${rentInfo.photo}" alt="Product Image"/>
                    </div>
                    <div>상품명: ${rentInfo.title}</div>
                    <div>대여 시작일: ${rentInfo.start_day}</div>
                    <div>대여 종료일: ${rentInfo.end_day}</div>
                    <div>대여비: ${rentInfo.rental_fee}</div>
                    <div>상태: ${rentInfo.status == 1 ? '대여 중' : '반납됨'}</div>
                    <div>장소: ${rentInfo.address}</div>
                    <div>소유자: ${rentInfo.ownerName}</div>
                </div>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <p>빌려준  상품이 없습니다.</p>
        </c:otherwise>
    </c:choose>

</body>
</html>
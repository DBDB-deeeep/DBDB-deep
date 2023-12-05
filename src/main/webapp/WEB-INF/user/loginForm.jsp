
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/global.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/login.css'/>">
<script>
function login() {
	if (form.email.value == "") {
		alert("이메일을 입력하세요");
		form.userId.focus();
		return false;
	} 
	if (form.password.value == "") {
		alert("비밀번호를 입력하세요");
		form.password.focus();
		return false;
	}
	<% System.out.println("로그인성공");%>
	form.submit();
}
</script>

</head>
<body>
	<div>
	<form name="form" method="POST" action="<c:url value='/user/login' />"> 
	<p class="lo">Login</p>
        <span><input class="rectangle1" name="email" type="text" placeholder="이메일"></span>
        <span><input class="rectangle2" name="password" type="text" placeholder="비밀번호"></span>

    <a href="#" id="greySignup">회원가입</a>
    <a href="#" class="greypassword">비밀번호찾기</a>
    
      <button class="greenRec" value="로그인" onClick="login()" style="color:#05B70C">
        <span id="greenrecintext">로그인</span>
    </button>
    </form>
    </div>
</body>
</html>
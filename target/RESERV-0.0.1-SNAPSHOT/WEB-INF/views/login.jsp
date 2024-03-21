<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Reserv Login</title>
</head>
<body>
	<form action="/login.auth">
		<sec:csrfInput/>
		<input type="text" name="username" placeholder="아이디"/>
		<input type="password" name="password" placeholder="비밀번호"/>
		<input type="submit" value="로그인"/>
	</form>
		<button id="signup">회원가입</button>
	<script type="text/javascript">
		window.onload = function(){
			var signbtn = document.getElementById('signup');
			
			signbtn.addEventListener("click",function(){
				location.href="${pageContext.request.contextPath}/any/signup";
			})
		}
	</script>
</body>
</html>
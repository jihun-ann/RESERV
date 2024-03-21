<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Reserv SignUp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/basic.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/signup.css">
</head>
<body>
	<tiles:insertAttribute name="header" ignore="true"></tiles:insertAttribute>
	<form id="signform" action="/any/signup/join">
		<div>
			<input type="text" name="userid" placeholder="아이디"/>
			<div id="iddup">
				<span>중복확인</span>
			</div>
		</div>
		<hr/>
		<input type="text" name="userpw" placeholder="비밀번호" min="4"/>
		<input type="text" name="userpw2" placeholder="비밀번호 확인"/>
		<hr/>
		<input type="text" name="username" placeholder="이름"/>
		<div>
			<input type="text" name="userssn1" placeholder="주민등록번호 앞자리"/>
			<span>-</span>
			<input type="text" name="userssn2" placeholder="주민등록번호 뒷자리"/>
		</div>
		<div id="ssndup">
			<span>본인인증</span>
		</div>
		<hr/>
		<div>
			<input type="text" name="userphonenum" placeholder="핸드폰번호 (-)하이픈제외"/>
			<div id="phndup">
				<span>핸드폰인증</span>
			</div>
		</div>
		<hr/>
		<div>
			<input class="sign_address" id="zonecode" type="text" name="userzonecode" placeholder="우편번호"/>
			<input class="sign_address" id="address1" type="text" name="useraddress1" placeholder="주소"/>
		</div>
		<input type="text" name="useraddress2" placeholder="상세주소"/>
		<hr/>
		<input type="submit" value="회원가입"/>
	</form>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		window.onload = function (){
			/*주소 입력 기능*/
			var address_wrap = document.querySelectorAll('.sign_address');
			address_wrap.forEach(function(e){
				e.addEventListener('click',function(){
					new daum.Postcode({
						oncomplete: function(data) {
							var address = data.address;
							var zonecode = data.zonecode;

							document.querySelector('#zonecode').value = zonecode;
							document.querySelector('#address1').value = address;
						}
					}).open();
				})
			})
		}
	</script>
</body>
</html>
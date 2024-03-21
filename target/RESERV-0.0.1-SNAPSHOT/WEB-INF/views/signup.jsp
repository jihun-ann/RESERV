<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Reserv SignUp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/basic.css">
<style type="text/css">
	#signform{
		width: 1000px;
		margin: 20px auto;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	hr{
		width: 350px;
		margin: 20px auto;
	}
	input[type="text"]{
		width: 200px;
		margin: 10px auto;
		height: 30px;
		line-height: 30px;
	}
	input[type="submit"]{
		width: 150px;
		height: 30px;
		margin: 10px auto;
	}
	#iddup, #phndup{
		display: inline-block;
	    width: 100px;
	    height: 30px;
	    border: 1px solid grey;
	    border-radius: 5px;
	    margin: 10px 10px;
	    line-height: 30px;
	    text-align: center;
	    background: lightgrey;
	}
	#iddup:hover, #phndup:hover {
		cursor: pointer;
		background: blue;
		color: white;
	}
</style>
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
		<input type="text" name="userpw" placeholder="비밀번호"/>
		<input type="text" name="userpw2" placeholder="비밀번호 확인"/>
		<hr/>
		<input type="text" name="username" placeholder="이름"/>
		<div>
			<input type="text" name="userssn1" placeholder="주민등록번호 앞자리"/>
			<span>-</span>
			<input type="text" name="userssn2" placeholder="주민등록번호 뒷자리"/>
		</div>
		<hr/>
		<div>
			<input type="text" name="userphonenum" placeholder="핸드폰번호 (-)하이픈제외"/>
			<div id="phndup">
				<span>핸드폰인증</span>
			</div>
		</div>
		<hr/>
		<input type="text" name="useraddress1" placeholder="주소"/>
		<input type="text" name="useraddress2" placeholder="상세주소"/>
		<hr/>
		<input type="submit" value="회원가입"/>
	</form>
</body>
</html>
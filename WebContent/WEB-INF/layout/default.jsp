<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>	
<!DOCTYPE html>
<html>
<head>
<title>Reserv Service</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/basic.css">
	<%-- <tiles:insertAttribute name="css" ignore="true"></tiles:insertAttribute> --%>
</head>
<body>
	<tiles:insertAttribute name="header" ignore="true"></tiles:insertAttribute>
	<div id="content-wrap">
		<tiles:insertAttribute name="menu" ignore="true"></tiles:insertAttribute>
		<tiles:insertAttribute name="content" ignore="true"></tiles:insertAttribute>
	</div>
</body>
</html>
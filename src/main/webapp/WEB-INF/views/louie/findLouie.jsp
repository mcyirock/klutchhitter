<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Find Louie</title>
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/bootstrap/css/louie.css" rel="stylesheet">
<script src="resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<br/><br/><br/><br/>
<div class="container">
<c:forEach var="qList" items="${qList}" varStatus="vs">
<c:if test="${qList==0 || qList==1}">
	<a href="pickLouie?a=${vs.index }">
	<div class="col-4" style="background-color: #5bc0de; text-align:center;">
	<br/><br/><br/>
	<h1><span class="glyphicon glyphicon-star"></span> Louie ${vs.count }</h1>
	<br/><br/><br/>
	</div>
	</a>
</c:if>
<c:if test="${qList==2}">
	<div class="col-4" style=" text-align: center; background-image:url('resources/img/noLouie.png');">
	<br/><br/><br/>
	<h1><span class="glyphicon glyphicon-remove"></span> No Louie</h1>
	<br/><br/><br/>
	</div>
<!-- 	background-color: #f0ad4e -->
</c:if>
</c:forEach>
</div>
</body>
</html>
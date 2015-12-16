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
<c:forEach var="qList" items="${qList}" varStatus="vs">
<c:if test="${qList==0 || qList==1}">
	<a href="pickLouie?a=${vs.index }">
	<div class="col-xs-4" style="background-color: #1abc9c; text-align:center; border: 1px solid white">
	<br/><br/><br/>
	<h3><span class="glyphicon glyphicon-star"></span><br/>Louie<br/>${vs.count }<br/></h3>
	<br/><br/><br/>
	</div>
	</a>
</c:if>
<c:if test="${qList==2}">
	<div class="col-xs-4" style=" text-align: center; background-color: #f0ad4e; border: 1px solid white">
	<br/><br/><br/>
	<h3><span class="glyphicon glyphicon-remove"></span><br/>No<br/>Louie<br/></h3>
	<br/><br/><br/>
	</div>
</c:if>
</c:forEach>
</body>
</html>
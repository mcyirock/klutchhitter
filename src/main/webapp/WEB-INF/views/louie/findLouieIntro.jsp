<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link href='http://fonts.googleapis.com/css?family=Rock+Salt' rel='stylesheet' type='text/css'>
<script> 
var count=0 
function play(){ 
msg=borba.innerText 
comp=msg.length 
type() 
} 
function type(){ 
if(count<=comp){ 
borba.innerText=msg.substring(0,count) 
count++ 
setTimeout("type()",100)} 
else{ 
count=0 
}} 

</script>

</head>
<body onLoad="play()" text="#FFFFFF">
<div class="container">
<div class="jumbotron" style="text-align: center">
<h2 style="color: black; font-family: 'Rock Salt', cursive;">Find Louie</h2>
<br/>
<font face="verdana"><b><span id="borba" style="color: grey"> 
Louie Runs and Runs and Runs and Jumps and Jumps and Jumps and Runs and Runs and Jumps and Jumps and Jumps and Runs and Runs and Jumps and Jumps and Jumps and Runs and Runs and Jumps and Jumps and Jumps and GOES into one of 9 rooms. </span> </b> </font> 
<a href="findLouie"><button class="btn btn-lg btn-primary">Start!</button></a>
</div>
</div>
</body>
</html>
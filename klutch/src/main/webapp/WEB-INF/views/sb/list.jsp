<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<link href="/resources/bootstrap-3.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>소원보드</title>

<script>
function moveInsert(){
	var sid = $("#sessionId").val();
	if(sid==""){
		alert("로그인을 해주세요.")
	}else{
		window.location = "insertForm";
	}
}

function readArticle(idx){
	var sid = $("#sessionId").val();
	if(sid==""){
		alert("로그인을 해주세요.")
	}else{
		
		window.location = "/sb/readArticle?num="+idx;
	}
}
function moveSignup(){
	var sid = $("#sessionId").val();
	if(sid==""){
		alert("아무나 가입 할 수는 없죠!")
	}else{
		window.location = "signUpForm";
	}
}
</script>
</head>
<body>	
<form id="formTop">
	<input type="hidden" id="sessionId" value="${sessionScope.id }">
</form>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="list">소원보드</a>
        </div>
        <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
                <li class="active"><a href="list">목록</a></li>
                <li ><a href="javascript:moveInsert();">글쓰기</a></li>
                <li><a href="javascript:moveSignup();">가입하기</a></li>
<!--                 <li class="dropdown"> -->
<!--                   <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a> -->
<!--                   <ul class="dropdown-menu"> -->
<!--                     <li><a href="#">Action</a></li> -->
<!--                     <li><a href="#">Another action</a></li> -->
<!--                     <li><a href="#">Something else here</a></li> -->
<!--                     <li class="divider"></li> -->
<!--                     <li class="dropdown-header">Nav header</li> -->
<!--                     <li><a href="#">Separated link</a></li> -->
<!--                     <li><a href="#">One more separated link</a></li> -->
<!--                   </ul> -->
<!--                 </li> -->
              </ul>
              <div>
              <%if(session.getAttribute("id")==null){ %>
          <form class="navbar-form navbar-right" role="form" action="login" method="post">
            <div class="form-group">
              <input type="text" placeholder="아이디" class="form-control" name="memid">
            </div>
            <div class="form-group">
              <input type="password" placeholder="패스워드" class="form-control" name="mempass">
            </div>
            <button type="submit" class="btn btn-success">로그인</button>
          </form>
          <%}else{ %>
          <ul class="nav navbar-nav navbar-right">
          	<li>
          		<form action="search" method="post" class="navbar-form navbar-right">
					<select name="type" class="form-control">
						<option value="subject">제목</option>
						<option value="content">내용</option>
						<option value="userid">글쓴이</option>
					</select>		
					
					<input type="text" name="search"  class="form-control" placeholder="Search..." style="width:50%; margin: 0 auto; display:inline-block;"></input>
					
					<input type="submit" value="검색" class="btn btn-success" style="display:inline-block"></input>
					
				</form>
			</li>
            <li><a>${id} 님, 안녕하세요!</a></li>
            <li><a href="logout">로그아웃</a></li>    
          </ul>        
          <%} %>
            </div>
        </div><!--/.navbar-collapse -->
      </div>   
    </div>	
    <br/><br/><br/>
	<div class="container">
    	<div class="jumbotron">
		<table class="table table-hover">
		<tr>
			<th>글쓴이</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
		<c:if test ="${empty List}">
		<tr>
			<td></td>
			<td>글이 없습니다.</td>
			<td></td>
		</tr>
		</c:if>
		<c:forEach var="list" items="${List }">
			<tr>
				<c:if test="${list.mempicture != null }">
				<td>
					<img class="img-circle" src="${list.mempicture}" style="width:20px; height:20px"/>&nbsp${list.articleuserid }	
				</td>
				</c:if>
				<c:if test="${list.mempicture == null }">
				<td>
					<img class="img-circle" src="/resources/memberImages/default.PNG" style="width:20px; height:20px"/>&nbsp${list.articleuserid }
				</td>
				</c:if>
				
				
				<td><a href='javascript:readArticle(${list.articlenumber})'>${list.articlesubject }
				</a>
				
				<c:if test="${list.articlereadcnt > 20}">
				<span class="label label-danger">Hot</span>
				</c:if>
				 
				<fmt:formatDate value="${list.articletime}" pattern="yy-MM-dd" var="createdDate"/>
				<fmt:formatDate value="${now }" pattern="yy-MM-dd" var="nowDate"/>
				<c:if test="${createdDate eq nowDate }">
				<span class="label label-warning">New</span>
				</c:if>
				<c:forEach var="cnoList" items="${cnoList }">
				<c:if test="${cnoList.no eq list.articlenumber }">
				<span class="badge">${cnoList.cno }</span>
				</c:if>
				</c:forEach>
				</td>
				<td>				
				<fmt:formatDate value="${list.articletime}" pattern="yy-MM-dd mm:hh"/>
				</td>
			</tr>
		</c:forEach>
		
			
			</table>
			</div>
			</div>
<!-- 			footer -->
			 <footer>
        			<p style="text-align: center">&copy; Klutch 2014</p>
      		</footer>
<!-- 			loading js -->
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
			<script src="/resources/bootstrap-3.1.1/dist/js/bootstrap.min.js"></script>
			</body>
			</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/resources/bootstrap-3.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Insert title here</title>
</head>
<body>
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
                <li><a href="list">목록</a></li>
                <li ><a href="insertForm">글쓰기</a></li>
                <li ><a href="signUpForm">가입하기</a></li>
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
          <form class="navbar-form navbar-right" role="form" action="login" method="post">
            <div class="form-group">
              <input type="text" placeholder="아이디" class="form-control" name="memid">
            </div>
            <div class="form-group">
              <input type="password" placeholder="패스워드" class="form-control" name="mempass">
            </div>
            <button type="submit" class="btn btn-success">로그인</button>
          </form>
            </div>
        </div><!--/.navbar-collapse -->
      </div>   
    </div>	
    
    </br></br></br>
    <div class="container">
	<div class="jumbotron">
	<form action="update" method="post" name="swboard">
		<table class="table">
			
			<tr>
				
					<td><strong>제목</strong>
				<input type="text" name="articlesubject" width="20%" value="${article.articlesubject }" class="form-control"></input>
				</td>
				
			</tr>
			<tr>
				<td><strong>내용</strong><textarea name="articlecontent" rows="10" class="form-control">${article.articlecontent }</textarea>
				</td>
			</tr>
			
			<tr>
			
				<td><strong>글쓴이 </strong>${article.articleuserid }
				<input type="hidden" name="articleuserid" value="${article.articleuserid }"></input>
				<input type="hidden" name="articlenumber" value="${article.articlenumber }"></input>
				<input type="hidden" name="articlereadcnt" value="${article.articlereadcnt }"></input>
				</td>
			</tr>
			<tr>
				<td><input type="submit" class="btn btn-success" />
				<td>
			</tr>
		</table>
	</form>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/resources/bootstrap-3.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Insert title here</title>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
 
// 한줄댓글 입력 메소드
function doCreateCmt(){
      // 한줄댓글 내용이 필수이므로 검사
      if($('#cmt').val() == '') {
            alert("한줄 댓글의 내용은 필수 입력입니다.");
            $('#cmt').focus(); return;
      }
      // 버튼 중복 클릭 방지
      $('#createbt').attr('disabled', 'disabled');
      $.post('re/createCmt',
                  {cwriter:$('#cwriter').val(),
                   cmt:$('#cmt').val(),
                   no: ${article.articlenumber} },
                   
                  function(data){
                         $('#cmt').val(''); // 내용 비우기
                         // 다시 클릭이 가능하게끔
                         $('#createbt').attr("disabled", false);
                         // 입력이 완료가 됐으므로 다시 리스트 불러오기
                         cmtList();
                  });
}
// 한줄댓글 리스트 가져오는 메소드
function cmtList() {
      $('#cmtTarget').load("re/listCmt?no=${article.articlenumber}");
}

function doDeleteCmt(cno, no) {
      	$.post('re/deleteCmt', {cno: cno, no: no}, 
      			function(data) {
      				cmtList();
      				});
}

$(function(){
      // id가 cmt인 텍스트에서 엔터를 쳤을 경우
      // 바로 데이터 입력이 되도록 작성
      $('#cmt').keyup(function(e){
            if(e.keyCode == 13) doCreateCmt();
      });
      // 처음 읽기 화면 들어왔을때 바로 리스트를 가져와서 보여줌
      cmtList();
});

function checkIdBeforeDeleteCmt(cno, no, writer, id){
	if(id==writer){
		doDeleteCmt(cno, no);
	}else{
		alert("본인 글만 삭제 가능합니다.");
	}
}

function checkIdBeforeDelete(id, writer, articlenum){
	if(id==writer){
		location.replace("delete?num="+articlenum);
	}else{
		alert("본인 글만 삭제 가능합니다.");
	}
}

function checkIdBeforeUpdate(id, writer, articlenum){
	if(id==writer){
		location.replace("updateForm?num="+articlenum);
	}else{
		alert("본인 글만 수정 가능합니다.");
	}
}

</script>
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
    
    </br></br></br>
	<div class="container">
	<div class="jumbotron">
	<div class="container">
	<table  class="table">
		
		<tr>
			<td><strong>${article.articlesubject }</strong></td>
		</tr>
		<tr>
		<td>글쓴이 <strong>${article.articleuserid }</strong> &nbsp&nbsp|&nbsp&nbsp 조회수 ${article.articlereadcnt } &nbsp&nbsp|&nbsp&nbsp 생성일 <fmt:formatDate value="${article.articletime}" pattern="hh : mm yy-MM-dd"/>
		</tr>
		<tr>
			<%
				pageContext.setAttribute("enter", "\r\n");
				pageContext.setAttribute("space", "\u0020");
			%>
			<td>
			<div class="well">
			<img src="${article.articlepicturepath }" style="max-width: 100%;"/>
			<c:set var="summaryLined" value="${fn:replace(article.articlecontent, enter ,'<br/>')}" />
			${fn:replace(summaryLined ,space,'&nbsp;')}
			</div>
			</td>
		</tr>
		<tr>
			<td>
				<button onclick="checkIdBeforeUpdate('${id}','${article.articleuserid }','${article.articlenumber }')" class="btn btn-info">수정</button>
				<button onclick="checkIdBeforeDelete('${id}','${article.articleuserid }','${article.articlenumber }')" class="btn btn-danger">삭제</button>
			</td>
		</tr>

	</table>
	
	</div>

	<div class="container">
		<div>
			 
			 	<input type="hidden" id="cwriter" value="${id }"
				style="width: 5%"/>${id } 님, 댓글을 써주세요.<br/> 
				<div class="row">
				<div class="col-md-3">
				<input type="text" id="cmt"  class="form-control"/>
				</div>
				<div class="col-md-3">
				<input type="button" value="입력" id="createbt" onclick="doCreateCmt();" class="btn btn-success"/>
				</div>
				</div>
		</div>
	</div>
	<br>
	<div id="cmtTarget"></div>
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
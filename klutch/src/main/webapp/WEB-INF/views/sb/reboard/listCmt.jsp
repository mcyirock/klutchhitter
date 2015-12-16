<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<% String cp = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

</head>
<body>
<c:forEach var="item" items="${listCmt }">

<div>
      
      <div class="container">
      <div class="well">
      		<div class="row">
      		<div class="col-sm-3">
            <strong>${item.cwriter }</strong> says<br/>
            <small class="text-muted"><fmt:formatDate value="${item.cmtdate}" pattern="hh : mm yy-MM-dd"/></small>
          	</div>
          	<div class="col-sm-6">
            
            ${item.cmt }
            </div>
            <div class="col-sm-3">
            
            <input class="btn btn-warning" type="button" value="삭제" onclick="checkIdBeforeDeleteCmt('${item.cno}','${item.no }','${item.cwriter }','${id}');" />
            </div>
            </div>
      </div>
      </div>
      
</div>
</c:forEach>
</body>
</html>
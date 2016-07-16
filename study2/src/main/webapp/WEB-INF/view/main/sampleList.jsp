<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>study</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap -->
<link href="<c:url value='/'/>bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<c:url value='/'/>datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
<style type="text/css">
body {
  padding-top: 70px;
  padding-bottom: 70px;
  height: 100%;
}

.pagination {
	display : block;
	text-align:center;	
}

.pagination > li > a {
	float: none;
	margin-left : -5px;
}
</style>
 <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
 <!--[if lt IE 9]>
   <script src="https://oss.maxcdn.com/html5shiv/3.72/html5shiv.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 <![endif]-->
<script src="<c:url value='/'/>js/common/jquery-1.11.2.js"></script>
<script src="<c:url value='/'/>bootstrap/js/bootstrap.min.js"></script>
<script src="<c:url value='/'/>datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="<c:url value='/'/>datepicker/js/bootstrap-datepicker.kr.min.js"></script>
<script type="text/javascript"> 
	$(function(){
		//li 내용중 'sample'가 포함된 것을 찾아서 클래스 추가
		$("li:contains('sample')").addClass("active");
		//$(".nav navbar-nav>li:nth-child(2)").addClass("active");
		
		//calendar
		$('#search3 ,#search4').datepicker({
			format: "yyyy/mm/dd",
			language: "kr",
			clearBtn: true,
			autoclose: true
		});
		
		/*
		$('#search3').blur(function(){
			$('.datepicker').hide();
		});*/

	});
	
</script>
</head>
<body>
 
<%@ include file="../main/menu/top.jsp" %>

<div class="container">
  <!--left-->
  <div class="col-md-3">
    <h2>카테고리</h2>
	<hr>
   	<ul class="nav nav-pills nav-stacked">
	  <li class="active"><a href="#LINK">LIST <span class="glyphicon glyphicon-search"></span></a></li>
	  <li ><a href="http://localhost:8080/study2/main/goPage3.do?type=B">REG <span class="glyphicon glyphicon-save-file"></span></a></li>
	</ul>
  </div>
  <!--/left-->
  
  <!--center-->
  <div class="col-md-9">
	  <h5>카테고리 <span class="glyphicon glyphicon-menu-right"></span> 소메뉴1</h5>
	  <hr>
	  
	  <div class="panel panel-default">
	  	<div class="panel-body">
			<form role="form" name="frm" class="form-horizontal" action ="" method="post">
			
				<div class="form-group">
				
					<label for="search1" class="col-md-2 control-label">조건1</label>
					<div class="col-md-3">
						<input type="text" id="search1" name="search1" value="${search1}" class="form-control" style="ime-mode:active" onkeydown="javascript:press();" placeholder="입력하세요" autofocus="autofocus" />
					</div>
					
					<label for="search2" class="col-md-2 control-label">조건2</label>
					<div class="col-md-3">
						<input type="text" id="search2" name="search2" value="${search2}" class="form-control" maxlength="11" onblur="javascript:fn_patternCheck(this); return false;" placeholder="01012345678" />
					</div>
					
					<div class="col-md-2">
						<input type="button" class="btn btn-default pull-left" onclick="" value="조회">
					</div>
				</div>
				<div class="form-group">
				
					<label for="search3" class="col-md-2 control-label">달력1</label>
					<div class="col-md-3">
						<input type="text" id="search3" name="search3" value="" class="form-control" />
					</div>
					
					<label for="search4" class="col-md-2 control-label">조건2</label>
					<div class="col-md-3">
						<input type="text" id="search4" name="search4" value="" class="form-control"/>
					</div>
				</div>
			</form>
	  	</div>
	  </div><!--panel panel-default-->
  </div><!--/center-->
  
  <div class="row">
	<div class="col-md-9 col-md-offset-3">
        <table class="table table-striped">
		  <thead>
		    <tr>
		      <th>row1</th>
		      <th>row2</th>
		      <th>row3</th>
		      <th>row4</th>
		    </tr>
		  </thead>
		  <tbody>
				<c:forEach var="i2" begin="1" end="10" step="1">
					<tr>
						<td >${i2}
						</td>
						<td >
							데이터${i2}
						</td>
						<td >
							데이터${i2}
						</td>
						<td >
							데이터${i2}
						</td>
					</tr>
		    	</c:forEach>
		  </tbody>
		</table>
		<hr>
		  	<!-- paging 처리 -->
		  	<ul class="pagination">
	  				<li><a href="#LINK">«</a></li>
		  				<li class="active">
		  					<a href="#LINK">1<span class="sr-only">(current)</span></a>
		  				</li>
		  				<li><a href="#LINK">2</a></li>
		  				<li><a href="#LINK">3</a></li>
		  				<li><a href="#LINK">4</a></li>
		  				<li><a href="#LINK">5</a></li>
	  				<li><a href="#LINK">»</a></li>
			</ul>
  	</div>
  </div><!--/row-->
</div><!-- container -->

<%@ include file="menu/bottom.jsp" %>
 
</body>
</html>

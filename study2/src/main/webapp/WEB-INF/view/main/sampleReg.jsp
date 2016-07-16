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
		//$(".nav navbar-nav>li:nth-child(1)").addClass("active");
		$('#calendar').datepicker({
			format: "yyyy/mm/dd",
			language: "kr",
			clearBtn: true,
			autoclose: true
		});
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
	  <li ><a href="http://localhost:8080/study2/main/goPage3.do?type=A">LIST <span class="glyphicon glyphicon-search"></span></a></li>
	  <li class="active"><a href="#LINK">REG <span class="glyphicon glyphicon-save-file"></span></a></li>
	</ul>
  </div>
  <!--/left-->
  
  <!--center-->
  <div class="col-md-9">
	  <h5>카테고리 <span class="glyphicon glyphicon-menu-right"></span> 소메뉴2</h5>
	  <hr>
	  <div class="panel panel-default">
	  	<div class="panel-body">
			<form role="form" name="frm" class="form-horizontal" action ="<c:url value='/manager/managerList.do'/>" method="post">
			<input type="hidden" id="menuNo" name="menuNo"  value="${menuNo}"/>
			
				<div class="form-group">
					<label for="mngName" class="col-md-2 control-label">이름</label>
					<div class="col-md-4">
						<input type="text" id="mngName" name="mngName" class="form-control" style="ime-mode:active" placeholder="이름을 입력하세요" autofocus="autofocus" />
					</div>
					<div class="col-md-4">
					</div>
					<div class="col-md-2">
						<!-- 
						<input type="submit" class="btn btn-default pull-left"  value="조회">
						 -->
					</div>
				</div>
				<div class="form-group">
					<label for="mngNumber" class="col-md-2 control-label">연락처</label>
					<div class="col-md-4">
						<input type="text" id="mngNumber" name="mngNumber" class="form-control" maxlength="11" onblur="javascript:fn_patternCheck(this); return false;" placeholder="01012345678" />
					</div>
					<div class="col-md-4">
					</div>
					<div class="col-md-2">
					</div>
				</div>
				<div class="form-group">
					<label for="inlineCheckbox1" class="col-md-2 control-label">성별</label>
					<div class="col-md-10">
						<label class="checkbox-inline">
						  <input type="checkbox" name="inlineCheckbox" id="inlineCheckbox1" value="option1"> 남자
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="inlineCheckbox" id="inlineCheckbox2" value="option2"> 여자
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox" name="inlineCheckbox" id="inlineCheckbox3" value="option3" disabled> disabled
						</label>
					</div>
				</div>
				<div class="form-group">
					<label for="calendar" class="col-md-2 control-label">달력</label>
					<div class="col-md-3">
						<input type="text" id="calendar" size="10" name="calendar" value="" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for="inlineRadio1" class="col-md-2 control-label">라디오</label>
					<div class="col-md-10">
						<label class="radio-inline">
						  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 1
						</label>
						<label class="radio-inline">
						  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 2
						</label>
						<label class="radio-inline">
						  <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" disabled> 3
						</label>
					</div>
				</div>
				<div class="form-group">
					<label for="textarea1" class="col-md-2 control-label">textarea</label>
					<div class="col-md-10">
						<textarea id="textarea1" name="textarea1" class="form-control" rows="3"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="select1" class="col-md-2 control-label">select</label>
					<div class="col-md-3">
						<select class="form-control" id="select1" name="select1" >
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="multiSelect1" class="col-md-2 control-label">multi select</label>
					<div class="col-md-3">
						<select id="multiSelect1" name="multiSelect1" multiple class="form-control">
						  <option>1</option>
						  <option>2</option>
						  <option>3</option>
						  <option>4</option>
						  <option>5</option>
						</select>
					</div>
				</div>
			</form>
	  	</div>
	  </div><!--panel panel-default-->
	  <hr>
  </div><!--/center-->
  
  <div class="row">
	<!--  
	<div class="pull-right">
	-->
	<div class="col-md-1 col-md-offset-11 pull-right">
        <input type="button" class="btn btn-default pull-left"  onclick="javascript:fn_managerCheck('22');" value="저장">
  	</div> 
  </div>
  
</div><!-- container -->

<%@ include file="menu/bottom.jsp" %>
 
</body>
</html>

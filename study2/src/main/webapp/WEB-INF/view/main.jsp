<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>study</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap -->
 <link href="<c:url value='/'/>bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<style type="text/css">
body {
  padding-top: 70px;
  padding-bottom: 70px;
  height: 100%;
}

</style>
 <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
 <!--[if lt IE 9]>
   <script src="https://oss.maxcdn.com/html5shiv/3.72/html5shiv.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 <![endif]-->
<script type="text/javascript" src="<c:url value='/'/>js/common/jquery-1.11.2.js"></script>
<script src="<c:url value='/'/>bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"> 
	$(function(){
		//alert("113");
		if($('#type').val() == 'b'){
			$("li:contains('메뉴2')").addClass("active");
		}else if($('#type').val() == 'a'){
			$("li:contains('메뉴1')").addClass("active");
		}
	});
	
	function fn_menu(type){
		
		var f = document.main;
		f.type.value = type;
		// f.action = "main/goPage.do"; // 이렇게 사용하면 하위루트로 들어간다.
		// f.action = "/study2/main/goPage.do"; // 이렇게 사용하면 /study2라는 기본루트를 항상 적어야만 한다.
		
		f.action = "<c:url value='/main/goPage.do'/>";
		
		if(type == 'b'){
			f.action = "<c:url value='/main/goPage2.do'/>";
			
		} else if(type == 'c'){
			f.action = "<c:url value='/main/goPage3.do'/>";
			
		} else if(type == 'd'){
			f.action = "<c:url value='/main/goPage3.do'/>";
			
		} else if(type == 'f'){
			f.action = "<c:url value='/main/goPage3.do'/>";
			
		} else if(type == 'g'){
			f.action = "<c:url value='/sj/goPage3.do'/>";
			
		} else if(type == 'h'){
			f.action = "<c:url value='/inae/emRegister.do'/>";
			
		} else if(type == 'lib'){
			f.action = "<c:url value='/lib.do'/>";
		}
		
		f.submit();
	}
	
</script>
</head>
<body>
<form name="main" action="#LINK" method="post">
<input type="hidden" id="type" name="type"  value="${type}" />
</form>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="navbar-header">
        <a class="navbar-brand" href="http://localhost:8080/study2/main3.do" rel="home">STUDY</a>
		<button class="navbar-toggle" type="button" data-target=".navbar-collapse" data-toggle="collapse">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		</button>
	</div>
	<div class="collapse navbar-collapse">
		<ul class="nav navbar-nav">
			<li><a href="#LINK" onclick="javascript:fn_menu('a');">메뉴1</a></li>
            <li><a href="#LINK" onclick="javascript:fn_menu('b');">메뉴2</a></li>
            <li><a href="#LINK" onclick="javascript:fn_menu('c');">sample</a></li>
            <li><a href="#LINK" onclick="javascript:fn_menu('lib');">library</a></li>
            <li><a href="#LINK" onclick="javascript:fn_menu('d');">선화</a></li>
            <li><a href="#LINK" onclick="javascript:fn_menu('f');">태현</a></li>
            <li><a href="#LINK" onclick="javascript:fn_menu('g');">수진</a></li>
            <li><a href="#LINK" onclick="javascript:fn_menu('h');">인애</a></li>
			<li class="dropdown">
              <a class="dropdown-toggle" href="#" data-toggle="dropdown">통계 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">예약현황</a></li>
                <li><a href="#">매출현황</a></li>
                <li class="divider"></li>
                <li><a href="#LINK">1</a></li>
                <li class="divider"></li>
                <li><a href="#LINK">2</a></li>
              </ul>
            </li>
		</ul>
		<!-- 
		<div class="col-sm-3 col-md-3 pull-right">
          <form class="navbar-form" role="search">
            <div class="input-group">
                <input name="srch-term" class="form-control" id="srch-term" type="text" placeholder="Search">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                </div>
            </div>
          </form>
		</div>
		 -->
		 <div class="col-sm-1 col-md-1 pull-right">
        	<button type="button" class="btn btn-default navbar-btn" data-toggle="modal" data-target="#loginModal">
        	<span class="glyphicon glyphicon-bell"></span> Log In
        	</button>
        </div>
	</div>
</nav>

<!-- Modal -->
<!--login modal-->
<div tabindex="-1" class="modal fade" id="loginModal" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button class="close" aria-hidden="true" type="button" data-dismiss="modal">×</button>
          <h1 class="text-center">Log in</h1>
      </div>
      <div class="modal-body">
          <form class="form col-md-12 center-block">
            <div class="form-group">
              <input class="form-control input-lg" type="text" placeholder="Email">
            </div>
            <div class="form-group">
              <input class="form-control input-lg" type="password" placeholder="Password">
            </div>
            <div class="form-group">
              <button class="btn btn-primary btn-lg btn-block">Sign In</button>
              <span class="pull-right"><a href="#">Register</a></span><span><a href="#">Need help?</a></span>
            </div>
          </form>
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
          <button class="btn" aria-hidden="true" data-dismiss="modal">Cancel</button>
		  </div>	
      </div>
  </div>
  </div>
</div>

<div class="container">
  <!--left-->
  <div class="col-sm-3">
        <h2>Side</h2>
    	<div class="panel panel-default">
         	<div class="panel-heading">Title</div>
         	<div class="panel-body">Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
            Aliquam in felis sit amet augue.</div>
        </div>
        <hr>
        <div class="panel panel-default">
         	<div class="panel-heading">Title</div>
         	<div class="panel-body">Content here..</div>
        </div>
        <hr>
        <div class="panel panel-default">
         	<div class="panel-heading">Title</div>
         	<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
            Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
            dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
            Aliquam in felis sit amet augue.</div>
        </div>
        <hr>
  </div><!--/left-->
  
  <!--center-->
  <div class="col-sm-6">
    <div class="row">
      <div class="col-xs-12">
        <h2>공지사항 <small><button class="btn btn-info btn-sm" onclick="javascript:fn_moveBoard('43','BBSMSTR_AAAAAAAAAAAA'); return false;">More</button></small></h2>
        <table class="table table-striped table-hover ">
		  <thead>
		    <tr>
		      <th>No</th>
		      <th>제목</th>
		      <th>작성일</th>
		    </tr>
		  </thead>
		  <tbody>
	    	<c:forEach var="result" items="${notiList}" varStatus="status">
		    	<tr>
		    		<td>
		    			${status.count}
		    		</td>
		    		<td>
				        <a href="<c:url value='/cop/bbs/selectBoardList2.do?bbsId=BBSMSTR_AAAAAAAAAAAA'/>" onclick="javascript:fn_main_headPageAction('43','cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA'); return false;">
				        <c:if test="${result.replyLc!=0}">
		                     <c:forEach begin="0" end="${result.replyLc}" step="1">
		                         &nbsp;
		                     </c:forEach>
		                     <img src="<c:url value='/images/reply_arrow.gif'/>" alt="reply arrow"/>
		                 </c:if>
		                 <c:choose>
		                     <c:when test="${result.isExpired=='Y' || result.useAt == 'N'}">
		                         <c:out value="${result.nttSj}" />
		                     </c:when>
		                     <c:otherwise>
		                         <c:out value="${result.nttSj}" />
		                     </c:otherwise>
		                 </c:choose>
		                 </a>
		    		</td>
		    		<td>
				    	<c:out value="${result.frstRegisterPnttm}"/>
		    		</td>
			    </tr>
			</c:forEach>
		  </tbody>
		</table>
        <p class="pull-right"><span class="label label-default">keyword</span> <span class="label label-default">tag</span> <span class="label label-default">post</span></p>
        <ul class="list-inline"><li><a href="#">2 Days Ago</a></li><li><a href="#"><i class="glyphicon glyphicon-comment"></i> 2 Comments</a></li><li><a href="#"><i class="glyphicon glyphicon-share"></i> 14 Shares</a></li></ul>
      </div>
    </div>
    <hr>
    <div class="row">
      <div class="col-xs-12">
        <h2>갤러리</h2>
        <table class="table table-striped table-hover ">
		  <thead>
		    <tr>
		      <th>No</th>
		      <th>제목</th>
		      <th>작성일</th>
		    </tr>
		  </thead>
		  <tbody>
	    	<c:forEach var="result" items="${galList}" varStatus="status">
		    	<tr>
		    		<td>
		    			${status.count}
		    		</td>
		    		<td>
				        <a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA'/>" onclick="javascript:fn_main_headPageAction('43','cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA'); return false;">
				        <c:if test="${result.replyLc!=0}">
		                     <c:forEach begin="0" end="${result.replyLc}" step="1">
		                         &nbsp;
		                     </c:forEach>
		                     <img src="<c:url value='/images/reply_arrow.gif'/>" alt="reply arrow"/>
		                 </c:if>
		                 <c:choose>
		                     <c:when test="${result.isExpired=='Y' || result.useAt == 'N'}">
		                         <c:out value="${result.nttSj}" />
		                     </c:when>
		                     <c:otherwise>
		                         <c:out value="${result.nttSj}" />
		                     </c:otherwise>
		                 </c:choose>
		                 </a>
		    		</td>
		    		<td>
				    	<c:out value="${result.frstRegisterPnttm}"/>
		    		</td>
			    </tr>
			</c:forEach>
		  </tbody>
		</table>
        <p class="lead"><button class="btn btn-default">Read More</button></p>
        <p class="pull-right"><span class="label label-default">keyword</span> <span class="label label-default">tag</span> <span class="label label-default">post</span></p>
        <ul class="list-inline"><li><a href="#">4 Days Ago</a></li><li><a href="#"><i class="glyphicon glyphicon-comment"></i> 7 Comments</a></li><li><a href="#"><i class="glyphicon glyphicon-share"></i> 56 Shares</a></li></ul>
      </div>
    </div>
    <hr>      
  </div><!--/center-->

  <!--right-->
  <div class="col-sm-3">
        <h2>Right</h2>
    	<div class="panel panel-primary">
         	<div class="panel-heading"><span class="glyphicon glyphicon-th-large"></span>  Intro..</div>
         	<div class="panel-body">
         		<ul>
  					<li>주요사업</li>
  					<li>대표소비스</li>
				</ul>
         	</div>
        </div>
        <hr>
        <div class="panel panel-success">
         	<div class="panel-heading">title</div>
         	<div class="panel-body">Content here..</div>
        </div>
        <hr>
        <div class="panel panel-info">
         	<div class="panel-heading">자료실</div>
         	<div class="panel-body">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
            Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
            dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
            Aliquam in felis sit amet augue.</div>
        </div>
        <hr>
  </div><!--/right-->
  <hr>
</div><!--/container-fluid-->

<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
	<div class="container">
		<p class="navbar-text">&copy; study2 2015 By<a href="#link"> ${master}</a>.</p>
	</div>  
</nav>
</body>
</html>




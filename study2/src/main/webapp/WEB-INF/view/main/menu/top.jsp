<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<form name="main" action="#LINK" method="post">
	<input name="menuNo" type="hidden" />
</form>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="navbar-header">
        <a class="navbar-brand" href="http://localhost:8080/study2/main3.do" rel="home">STUDY</a>
		<button class="navbar-toggle" type="button" data-target=".navbar-collapse" data-toggle="collapse">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar">1</span>
		<span class="icon-bar">2</span>
		<span class="icon-bar">3</span>
		</button>
	</div>
	<div class="collapse navbar-collapse">
		<ul class="nav navbar-nav">
			<li><a href="http://localhost:8080/study2/main/goPage.do">메뉴1</a></li>
            <li><a href="http://localhost:8080/study2/main/goPage2.do">메뉴2</a></li>
            <li><a href="http://localhost:8080/study2/main/goPage3.do?type=A">sample</a></li>
            <li><a href="http://localhost:8080/study2/lib.do">library</a></li>
            <li><a href="http://localhost:8080/study2/main/goPage3.do?type=A">선화</a></li>
            <li><a href="http://localhost:8080/study2/main/goPage3.do?type=A">태현</a></li>
            <li><a href="http://localhost:8080/study2/sj/goPage3.do?type=A">수진</a></li>
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
	</div>
</nav>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Agency - Start Bootstrap Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value='/'/>bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/'/>bootstrap/css/agency.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<c:url value='/'/>bootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script type="text/javascript" src="<c:url value='/'/>js/common/jquery-1.11.2.js"></script>
	<script src="<c:url value='/'/>bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="<c:url value='/'/>bootstrap/js/classie.js"></script>
    <script src="<c:url value='/'/>bootstrap/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="<c:url value='/'/>bootstrap/js/jqBootstrapValidation.js"></script>
    <script src="<c:url value='/'/>bootstrap/js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<c:url value='/'/>bootstrap/js/agency.js"></script>
    
<script type="text/javascript"> 

	//화면 로딩시 이벤트 주고싶을때
	$(function(){
		
		
	});
	
	function fn_menu(type){
		
		var f = document.main;
		f.type.value = type;
		// f.action = "main/goPage.do"; // 이렇게 사용하면 하위루트로 들어간다.
		// f.action = "/study2/main/goPage.do"; // 이렇게 사용하면 /study2라는 기본루트를 항상 적어야만 한다.
		
		f.action = "<c:url value='/inae/goPage.do'/>";
		f.submit();
	}
		
</script>

</head>

<body id="page-top" class="index">
<form name="main" action="#LINK" method="post">
	<input name="type" type="hidden" />
</form>
	<nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">인애작품명</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <%
					  	 String userId = (String)session.getAttribute("userId");
					   	 if(null != userId){
					   		 %> 
					   		 	<li>
					   		 	 <a class="page-scroll" href="#" ><%=(String)session.getAttribute("userName") %>님 환영함니다.</a>
					   		 	
					   		 	 </li>
					   		 	  <li>
			                        <a class="page-scroll" href="/study2/inae/logout.do">Logout</a>
			                   	  </li>
					   		 <% 
					   	 }
					   %>
                    <li>
                        <a class="page-scroll" href="#LINK" onclick="javascript:fn_menu('services');">Services</a>
                    </li>
                    <li>
                        <a class="page-scroll"  href="/study2/inae/getBoard.do" >board</a>
                    </li>
                   <!--  <li>
                        <a class="page-scroll"  href="#LINK" onclick="javascript:fn_menu('about');">About</a>
                    </li> -->
                    <li>
                        <a class="page-scroll"  href="#LINK" onclick="javascript:fn_menu('team');">Team</a>
                    </li>
                     <%
					   	 if(null == userId){
					   		 %> 
					   		 	<li>
			                        <a class="page-scroll"  href="/study2/inae/login.do">Login</a>
			                    </li>
					   		 <% 
					   	 }
					   %>
                    <li>      
                        <a class="page-scroll"  href="/study2/inae/join.do">Join</a>
                    </li>
                    
                    <!-- <li>
                        <a class="page-scroll"  href="#LINK" onclick="javascript:fn_menu('board');">board</a>
                    </li> -->
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">Welcome To Our Homepage!</div>
                <div class="intro-heading">It's Nice To Meet You</div>
                <a href="#services" class="page-scroll btn btn-xl">Tell Me More</a>
            </div>
        </div>
    </header>


    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2016</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

</body>

</html>

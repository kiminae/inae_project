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
        <script src="//ajax.googleapis.com/ajax/libs/webfont/1.4.10/webfont.js"></script>
    
<script type="text/javascript"> 

WebFont.load({
	 
    // For google fonts
    google: {
      families: ['Droid Sans', 'Droid Serif']
    },
    // For early access or custom font
    custom: {
        families: ['Nanum Gothic'],
        urls: ['http://fonts.googleapis.com/earlyaccess/nanumgothic.css']
    }
 
  });

	//화면 로딩시 이벤트 주고싶을때
	$(function(){
		//공통
		$("#nav1234").addClass("navbar-shrink");
		//메뉴활성화
		$("li:contains('Team')").addClass("active");
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
<%@ include file="top.jsp" %>

     <!-- Team Section -->
    <section id="team" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Our Amazing Team</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4" style="width: 50%;">
                    <div class="team-member">
                        <img src="<c:url value='/'/>img/inae/inae.jpg" class="img-responsive img-circle" alt="" width="350px">
                        <h4>Inae Kim</h4>
                        <p class="text-muted">programmer</p>
                        <ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"> </i></a></li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"> </i></a></li>
						</ul>
                    </div>
                </div>
                <div class="col-sm-4" style="width: 50%;">
                    <div class="team-member">
                        <img src="<c:url value='/'/>img/inae/ljj.jpg" class="img-responsive img-circle" alt="" width="350px">
                        <h4>Keunwe Lee</h4>
                        <p class="text-muted">programmer</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted"></p>
                </div>
            </div>
        </div>
    </section>
    

<%@ include file="footer.jsp" %>


</body>

</html>

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
		$("li:contains('Services')").addClass("active");
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

    <!-- Services Section -->
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Introduce</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row text-center">
                
                <div class="col-md-4" style="width: 100%;">
                    <span class=" fa-4x">
                       <!--  <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-lock fa-stack-1x fa-inverse"></i> -->
                      <img src="<c:url value='/'/>img/inae/hs.jpg" class="" alt="" width="650px">
                    </span>
					<h2 class="service-heading">
						Hoseo Game Department<br> <br>
						<p>
							호서대학교 게임학과는 게임 업계가 필요로 하는 인재가 무엇인지고민하고 그에 맞는 맞춤형 인재를 육성하기 위해 노력하는
							학과입니다.<br> 대부분의 게임 업계는 ‘협동의 미덕’을 가장 중요시하는데 협동의 미덕은 상대방에 대한
							이해와 배려로 시작될 수 있습니다.
						</p>
						<p>
							게임학과는 단순히 게임 관련 업무만 배우는 것이 아니라 사람들 간의 다양하고 복잡한 환경을 극복하는 “이해하고
							화합하는 인재”를 만들기 위해 노력합니다.<br> 이러한 노력으로 한 학과에 게임 프로그램, 게임 기획,
							게임 그래픽까지 함께 수강할 수 있도록 했고 게임 개발의 즐거움, 어려움,<br> 그리고 보람까지 미리
							체험할 수 있도록 해 자신의 적성과 맞는 분야를 찾아가는 교육을 하고 있습니다.
						</p>
					</h2>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Clients Aside -->
    <!-- 
     <aside class="clients">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="<c:url value='/'/>img/logos/envato.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="<c:url value='/'/>img/logos/designmodo.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="<c:url value='/'/>img/logos/themeforest.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="<c:url value='/'/>img/logos/creative-market.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
            </div>
        </div>
    </aside>
     -->
   
    
<%@ include file="footer.jsp" %>


</body>

</html>

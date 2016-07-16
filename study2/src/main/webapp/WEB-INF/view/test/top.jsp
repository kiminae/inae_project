<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form name="main" action="#LINK" method="post" >
	<input name="type" type="hidden" />
</form>
<!-- Navigation -->
    <nav id="nav1234" class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="http://localhost:8080/study2/index.jsp">인애 작품명</a>
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
                  
				<!--  <li>
                        <a class="page-scroll"  href="#LINK" onclick="javascript:fn_menu('board');">board</a>
                    </li> -->
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
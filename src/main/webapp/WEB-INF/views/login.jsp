<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../top_bottom/login_top.jsp"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Edge Responsive Multipurpose Template</title>
    <meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="resources/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="resources/css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" type="text/css" href="resources/css/switcher.css" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <%
    	//이름과 전화번호로 아이디 찾기- 아이디 출력
    	String id = (String)request.getAttribute("mem_id");
    	if(id != null){
    		out.println("<script type='text/javascript'>");
			out.println("alert('아이디: "+id+"')");
			out.println("</script>");
    	}
    	
    	String pw = (String)request.getAttribute("mem_pw");
    	Boolean isEqual = (Boolean)request.getAttribute("isCorrectAnswer");
    	if(isEqual != null){
    		if(isEqual){
    			//답변이 정확하다
    			out.println("<script type='text/javascript'>");
    			out.println("alert('비밀번호: "+pw+"')");
    			
    			out.println("</script>");
    		}else{
    			//답변이 틀리다
    			out.println("<script type='text/javascript'>");
    			out.println("alert('틀리다')");
    			out.println("</script>");
    		}
    		request.setAttribute("isCorrectAnswer",null);
    	}
    	    
    %>
    <%
    String str="";
    Cookie cookies[] = request.getCookies();
	for(int i = 0; i <cookies.length; i++){
		if(cookies[i].getName().equals("mem_id")){
			str = cookies[i].getValue();
		}
	}
	//jstl core 의 test문장에서 사용하기 위해 영역객체에 저장한다
	request.setAttribute("str",str);
    %>
</head>
<body>


<!--start wrapper-->
<section class="wrapper">
   

    <section class="contact_2">

        <div class="container">
            <div class="row sub_content">
                <div class="col-lg-12 col-md-12 col-sm-12">
                	<div class="headingCenter">
                    <div class="dividerHeading">
                        <h4><span>로그인</span></h4>
                    </div>
                    <p>아이디와 비밀번호를 작성해 주세요.</p>
					</div>
					
                    <div class="alert alert-success hidden alert-dismissable" id="contactSuccess">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <strong>Success!</strong> Your message has been sent to us.
                    </div>

                    <div class="alert alert-error hidden" id="contactError">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <strong>Error!</strong> There was an error sending your message.
                    </div>

                    <form id="contactForm" action="loginProcess" novalidate="novalidate">
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                	<div class="middle">
                                    <input type="text" id="mem_id" name="mem_id" class="form-control" maxlength="100" data-msg-required="Please enter your name."placeholder="아이디" value="<%=str%>">
                                	</div>
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="password" id="mem_pw" name="mem_pw" class="form-control" maxlength="100" data-msg-required="Please enter your name."  placeholder="비밀번호" >
           	
                                	</div>
                                	<div class="middleLeft_checkBox">
                                	
                                	<c:if test="${'' eq str}">
	                                		<input type="checkbox" id="mem_checkId" name="mem_checkId" >&nbsp;아이디 저장
	                                </c:if>
	                              
	                                <c:if test="${'' ne str}">
	                                		<input type="checkbox" id="mem_checkId" name="mem_checkId" checked>&nbsp;아이디 저장
	                                </c:if>
                                	
                                	</div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                    		 <div class="form-group">
                            	<div class="col-lg-12 col-md-12">
                           			 <div class="middle">
		                                <input type="button" data-loading-text="Loading..." class="btn btn-default btn-lg" value="로그인" onclick="document.getElementById('contactForm').submit()">
		                                <input type="button" data-loading-text="Loading..." class="btn btn-default btn-lg" value="회원가입" onclick="location='join'">
		                                <input type="button" data-loading-text="Loading..." class="btn btn-default btn-lg" value="아이디 찾기" onclick="location='id_find'">
		                                <input type="button" data-loading-text="Loading..." class="btn btn-default btn-lg" value="비밀번호 찾기" onclick="location='pw_find'">
                            		</div>
                           		 </div>
                          	 </div>
  
                        </div>
                    </form>
                </div>


            </div>
        </div>
    </section>
</section>
<!--end wrapper-->




<script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.easing.1.3.js"></script>
<script src="resources/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.cookie.js"></script> <!-- jQuery cookie -->
<script type="text/javascript" src="resources/js/styleswitch.js"></script> <!-- Style Colors Switcher -->
<script type="text/javascript" src="resources/js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="resources/js/jflickrfeed.js"></script>
<script type="text/javascript" src="resources/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="resources/js/swipe.js"></script>
<script type="text/javascript" src="resources/js/jquery-scrolltofixed-min.js"></script>
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/view.contact.js"></script>
<script type="text/javascript" src="resources/js/jquery.gmap.js"></script>

<script src="resources/js/main.js"></script>

<!-- Start Style Switcher -->
<div class="switcher"></div>
<!-- End Style Switcher -->
</body>
</html>

<%@ include file="../top_bottom/bottom.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ include file="../../top_bottom/top.jsp"%>
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
	    Boolean isEqual = (Boolean)request.getAttribute("isCorrectAnswer");
		if(isEqual != null){
			if(isEqual){
				//답변이 정확하다
				out.println("<script type='text/javascript'>");
				out.println("alert('정확하다')");
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
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script type="text/javascript">
	$(function() {	
		//frm 폼이 전송시 전송이벤트 처리
		$('#contactForm1').submit(function(e){ //e = 이벤트 객체
			e.preventDefault(); //섭밋 기본이벤트 처리 방지
			// 폼기반 요청			
			var params =$('#contactForm1').serialize(); //폼에 입력된 요청파라미터구성
			
			$.ajax("/app/pw_findProcess", {			 
				type:'get', //요청방식
				data:params, //요청파라미터 전송
				//data:'id=hong&name='+encodeURIComponent('홍길동'), //쿼리스트링
				//정상처리
				success : function(respdata) { //respdata=응답데이터
					if(respdata.length != 0){
						//데이터 불러왔으므로 막아놓기
						$('#mem_id').attr('readonly',true);
						$('#mem_name').attr('readonly',true);
						$('#mem_bir').attr('readonly',true);
						
						//회원 질문 화면에 표시
						$('#mem_q').val(respdata.mem_q);
						$('#firstSubmit').hide();
						$('#contactForm2').show("slow");
						
						//회원답변 히든으로 등록해놓기
						var html = '';
		                html += '<input type="hidden" id="cli_a" name="cli_a" value="'+respdata.mem_a+'">';
		                $("#hidden").append(html);
					}else{
						alert('다시 입력해주세요')
					}
				} // ---end success
			}); //---end ajax()
		});//-- end function(e)
		
	});
</script>
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
                        <h4><span>비밀번호 찾기</span></h4>
                    </div>
                    <p>아이디,이름,생년월일을 작성해 주세요.</p>
					</div>
					
                    <div class="alert alert-success hidden alert-dismissable" id="contactSuccess">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <strong>Success!</strong> Your message has been sent to us.
                    </div>

                    <div class="alert alert-error hidden" id="contactError">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <strong>Error!</strong> There was an error sending your message.
                    </div>

                    <form id="contactForm1" action="" novalidate="novalidate">
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                	<div class="middle">
                                    <input type="text" id="mem_id" name="mem_id" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="아이디" >
                                	</div>
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="mem_name" name="mem_name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="이름" >
                                	</div>
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="mem_bir" name="mem_bir" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="생년월일" >
                                	</div>
                                </div>
                            </div>
                        </div>
                        <div id="firstSubmit" class="row">
							<div class="form-group">
								<div class="col-lg-12 col-md-12">
									<div class="middle" id="div1">
										<input id="button1" type="submit" data-loading-text="Loading..."
											class="btn btn-default btn-lg" value="입력완료">
										<input type="button" data-loading-text="Loading..."
											class="btn btn-default btn-lg" value="로그인 화면으로"
											onclick="location='login'">
									</div>
								</div>
							</div>
						</div>
                    </form>
                        
                    <form id="contactForm2" action="pw_findProcess_final" novalidate="novalidate"  style="display:none">
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div id="hidden" class="middle">
	                                    <label for="Question" style="text-align: left;">비밀번호 찾기 질문</label>
	                                    
	                                    <input type="text" id="mem_q" name="mem_name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" readonly>
	
	                                   	<textarea id="mem_a" name="mem_a" class="form-control" rows="10" cols="50" data-msg-required="비밀번호 질문에 답변을 입력해주세요." maxlength="5000" placeholder="비밀번호 질문 답변"></textarea>
                                	</div>
                                </div>
                             </div>
                        </div>
                        <div id="secondSubmit" class="row">
							<div class="form-group">
								<div class="col-lg-12 col-md-12">
									<div class="middle" id="div1">
										<input id="button2" type="submit" data-loading-text="Loading..."
											class="btn btn-default btn-lg" value="입력완료">
										<input type="button" data-loading-text="Loading..."
											class="btn btn-default btn-lg" value="로그인 화면으로"
											onclick="location='login'">
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

<%@ include file="../../top_bottom/bottom.jsp"%>


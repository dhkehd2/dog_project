<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>   
	<script>
	$(function() {
		  $( "#Datepicker" ).datepicker({
		         changeMonth: true, 
		         changeYear: true,
		         nextText: '다음 달',
		         prevText: '이전 달' 
		  });
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
                        <h4><span>회원가입</span></h4>
                    </div>
                    <p>회원가입란을 작성해 주세요.</p>
					</div>
					
                    <div class="alert alert-success hidden alert-dismissable" id="contactSuccess">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <strong>Success!</strong> Your message has been sent to us.
                    </div>

                    <div class="alert alert-error hidden" id="contactError">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <strong>Error!</strong> There was an error sending your message.
                    </div>

                    <form id="contactForm" action="" novalidate="novalidate">
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                	<div class="middle">
                                    <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="ID" >
                                	</div>
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="Password" >
                                	</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="Password Check" >
                                	</div>
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="Name" >
                                	</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="Telephone" >
                                	</div>
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="E-mail" >
                                	</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="Address" >
                                	</div>
                                </div>
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="Datepicker" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="Birth">
                                	</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-lg-12 ">
                                    <div class="middle">
                                    <input type="text" id="name" name="name" class="form-control" maxlength="100" data-msg-required="Please enter your name." value="" placeholder="Gender" >
                                	</div>
                                </div>
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="middle">
                                    <label for="Question" style="text-align: left;">Question for Password</label>
                                    <select id="Question" name="question" class="form-control">
                                    	<option value="1" class="form-control">당신의 보물 1호는?</option>
                                    	<option value="2" class="form-control">당신의 출신 초등학교는?</option>
                                    	<option value="3" class="form-control">당신의 어릴적 별명은?</option>
                                    </select>
                                	</div>
                                </div>
                               

                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-md-12">
                                	<div class="middle">
                                    	<textarea id="message" class="form-control" name="message" rows="10" cols="50" data-msg-required="Please enter your message." maxlength="5000" placeholder="Answer for Password"></textarea>
									</div>
                                </div>
                                <div class="col-lg-12 ">
                                   <div class="expMiddle">
	                                   <h3>Do you have an Experience with an Animal? &nbsp;
		                                   <input type="radio" name="exp" value="yes">&nbsp;yes&nbsp;
		                                   <input type="radio" name="exp" value="no">&nbsp;no
	                                   </h3>
                                   </div>
                                </div>
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-right">
                                <input type="submit" data-loading-text="Loading..." class="btn btn-default btn-lg" value="Send Message">
                            </div>
                        </div>
                    </form>
                </div>


            </div>
        </div>
    </section>
</section>
<!--end wrapper-->



<!-- <script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script> -->
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.easing.1.3.js"></script>
<script src="resources/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.cookie.js"></script> jQuery cookie
<script type="text/javascript" src="resources/js/styleswitch.js"></script> Style Colors Switcher
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


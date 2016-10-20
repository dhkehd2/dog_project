<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--하단 시작-->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="widget_title">
                    <h4><span>대표정보</span></h4>
                </div>
                <div class="widget_content">
                    
                    <ul class="contact-details-alt">
                        <li><i class="fa fa-map-marker"></i> <p><strong>Address</strong>: 서울 구로디지털 </p></li>
                        <li><i class="fa fa-phone"></i> <p><strong>Phone</strong>: 010 - 1234 - 5678</p></li>
                        <li><i class="fa fa-envelope"></i> <p><strong>Email</strong>: <a href="#">mail@example.com</a></p></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="widget_title">
                    <h4><span>구성원</span></h4>
                </div>
                <div class="widget_content">
                   <ul class="contact-details-alt">
                        <li><i class="fa fa-user"></i> <p><strong>이기봉</strong><i class="fa fa-phone"></i> 010 - 1234 - 5678</p></li>
                        <li><i class="fa fa-user"></i> <p><strong>서윤호</strong><i class="fa fa-phone"></i> 010 - 1234 - 5678</p></li>
                        <li><i class="fa fa-user"></i> <p><strong>김예영</strong><i class="fa fa-phone"></i> 010 - 1234 - 5678</p></li>
                        <li><i class="fa fa-user"></i> <p><strong>박건태</strong><i class="fa fa-phone"></i> 010 - 1234 - 5678</p></li>
                        <li><i class="fa fa-user"></i> <p><strong>이슬</strong><i class="fa fa-phone"></i> 010 - 1234 - 5678</p></li>
                        <li><i class="fa fa-user"></i> <p><strong>여수향</strong><i class="fa fa-phone"></i> 010 - 1234 - 5678</p></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="widget_title">
                    <h4><span>comment</span></h4>
                </div>
                <div class="widget_content">
                	 <p>저희는 유기동물을 아껴주고 잘 보살필 책임있는 입양자를 기다리고 있습니다. </p>
                	<br><br>
                     
                </div>
                <div class="widget_content">
                    <div class="tweet_go"></div>
                </div>
            </div>
            <!-- 오측하단 사진들 -->
            <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="widget_title">
                    <h4><span>후원문의</span></h4>
                </div>
                <div class="widget_content">
                    <ul class="contact-details-alt">
                       <li><i class="fa fa-phone"></i><p> : 010 - 1234 - 5678</p></li>
                       <li><i class="fa fa-envelope"></i> <p>: <a href="#">mail@example.com</a></p></li>
                    </ul>
                </div>
            </div>
            
            
        </div>
    </div>
</footer>
<!-- 하단 끝 -->


<!-- 맨끝 하단 시작 -->
<section class="footer_bottom">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 ">
                <p class="copyright">&copy; 인크래파스   3조 </p>
            </div>
			
			<!-- 소셜네트워크 아이콘들 -->
            <div class="col-sm-6 ">
                <div class="footer_social">
                    <ul class="footbot_social">
                        <li><a class="fb" href="#." data-placement="top" data-toggle="tooltip" title="Facbook"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twtr" href="#." data-placement="top" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="dribbble" href="#." data-placement="top" data-toggle="tooltip" title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
                        <li><a class="skype" href="#." data-placement="top" data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
                        <li><a class="rss" href="#." data-placement="top" data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
                    </ul>
                </div>
            </div>
            
        </div>
    </div>
</section>
<!-- 맨끝 하단 끝 -->

<!-- <script type="text/javascript" src="./resources/js/jquery-1.10.2.min.js"></script> -->
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/jquery.easing.1.3.js"></script>
<script src="./resources/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.cookie.js"></script> <!-- jQuery cookie -->
<script type="text/javascript" src="./resources/js/styleswitch.js"></script> <!-- Style Colors Switcher -->
<script type="text/javascript" src="./resources/js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="./resources/js/jflickrfeed.js"></script>
<script type="text/javascript" src="./resources/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="./resources/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="./resources/js/swipe.js"></script>
<script type="text/javascript" src="./resources/js/jquery-scrolltofixed-min.js"></script>

<script src="js/main.js"></script>
<script>
    (function ($) {
        var $container = $('.masonry_wrapper'),
                colWidth = function () {
                    var w = $container.width(),
                            columnNum = 1,
                            columnWidth = 0;
                    if (w > 1200) {
                        columnNum  = 4;
                    } else if (w > 900) {
                        columnNum  = 4;
                    } else if (w > 600) {
                        columnNum  = 2;
                    } else if (w > 300) {
                        columnNum  = 1;
                    }
                    columnWidth = Math.floor(w/columnNum);
                    $container.find('.item').each(function() {
                        var $item = $(this),
                                multiplier_w = $item.attr('class').match(/item-w(\d)/),
                                multiplier_h = $item.attr('class').match(/item-h(\d)/),
                                width = multiplier_w ? columnWidth*multiplier_w[1]-4 : columnWidth-4,
                                height = multiplier_h ? columnWidth*multiplier_h[1]*0.5-4 : columnWidth*0.5-4;
                        $item.css({
                            width: width,
                            height: height
                        });
                    });
                    return columnWidth;
                }

        function refreshWaypoints() {
            setTimeout(function() {
            }, 1000);
        }
        function setPortfolio() {
            setColumns();
            $container.isotope('reLayout');
        }

        isotope = function () {
            $container.isotope({
                resizable: true,
                itemSelector: '.item',
                masonry: {
                    columnWidth: colWidth(),
                    gutterWidth: 0
                }
            });
        };
        isotope();
        $(window).smartresize(isotope);
    }(jQuery));
</script>
<!-- Start Style Switcher -->
<div class="switcher"></div>
<!-- End Style Switcher -->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% session.invalidate();  %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>고수익 | 로그인,회원가입</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/fontello.css">
        <link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="assets/css/price-range.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.css">
        <link rel="stylesheet" href="assets/css/owl.theme.css">
        <link rel="stylesheet" href="assets/css/owl.transitions.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->


        <div class="header-connect">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-8  col-xs-12">
                        <div class="header-half header-call">
                            <p>
                                <span>고수익</span>
                                <span>부동산 매물 검색 사이트</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
                        <div class="header-half header-social">
                            <!--오른쪽 상단 칸   -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End top header -->

        <nav class="navbar navbar-default ">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- 왼쪽 상단 로고 -->
                    <a class="navbar-brand" href="index.html"><img src="assets/img/mainpage/gologosample.png" alt=""></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
                        <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('/GOSUIC/loginform.sp')" data-wow-delay="0.45s">로그인</button>
          <button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('/GOSUIC/insert.sp')" data-wow-delay="0.48s">회원가입</button>
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li >
                            <a href="index.html">Home <b class="caret"></b></a>

                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="properties.html">Properties</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="property.html">Property</a></li>
                        <li class="dropdown yamm-fw" data-wow-delay="0.1s">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Template <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="yamm-content">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <h5>Home pages</h5>
                                                <ul>
                                                    <li>
                                                        <a href="index.html">Home Style 1</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-2.html">Home Style 2</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-3.html">Home Style 3</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-4.html">Home Style 4</a>
                                                    </li>
                                                    <li>
                                                        <a href="index-5.html">Home Style 5</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Pages and blog</h5>
                                                <ul>
                                                    <li><a href="blog.html">Blog listing</a>  </li>
                                                    <li><a href="single.html">Blog Post (full)</a>  </li>
                                                    <li><a href="single-right.html">Blog Post (Right)</a>  </li>
                                                    <li><a href="single-left.html">Blog Post (left)</a>  </li>
                                                    <li><a href="contact.html">Contact style (1)</a> </li>
                                                    <li><a href="contact-3.html">Contact style (2)</a> </li>
                                                    <li><a href="contact_3.html">Contact style (3)</a> </li>
                                                    <li><a href="faq.html">FAQ page</a> </li>
                                                    <li><a href="404.html">404 page</a>  </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property</h5>
                                                <ul>
                                                    <li><a href="property-1.html">Property pages style (1)</a> </li>
                                                    <li><a href="property-2.html">Property pages style (2)</a> </li>
                                                    <li><a href="property-3.html">Property pages style (3)</a> </li>
                                                </ul>

                                                <h5>Properties list</h5>
                                                <ul>
                                                    <li><a href="properties.html">Properties list style (1)</a> </li>
                                                    <li><a href="properties-2.html">Properties list style (2)</a> </li>
                                                    <li><a href="properties-3.html">Properties list style (3)</a> </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-3">
                                                <h5>Property process</h5>
                                                <ul>
                                                    <li><a href="submit-property.html">Submit - step 1</a> </li>
                                                    <li><a href="submit-property.html">Submit - step 2</a> </li>
                                                    <li><a href="submit-property.html">Submit - step 3</a> </li>
                                                </ul>
                                                <h5>User account</h5>
                                                <ul>
                                                    <li><a href="register.html">Register / login</a>   </li>
                                                    <li><a href="user-properties.html">Your properties</a>  </li>
                                                    <li><a href="submit-property.html">Submit property</a>  </li>
                                                    <li><a href="change-password.html">Change password</a> </li>
                                                    <li><a href="user-profile.html">Your profile</a>  </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.yamm-content -->
                                </li>
                            </ul>
                        </li>

                        <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="contact.html">Contact</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->

        <div class="page-head">
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">로그인 / 회원가입 </h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->


        <!-- register-area -->
        <div class="register-area" style="background-color: rgb(249, 249, 249);">
            <div class="container">


                <div class="col-md-6">
                    <div class="box-for overflow">
                        <div class="col-md-12 col-xs-12 login-blocks"><h2>로그인</h2>
                        
                        <form action="/GOSUIC/UserLogin.sp" method="post">
                        
                          <div class="form-group"><label for="email">아이디</label>
                            <input type="text" class="form-control" name="userEmail"></div>
                            <div class="form-group"><label for="password">비밀번호</label>
                              <input type="password" class="form-control" name="password1"></div>
                              <div class="text-center"><button type="submit" class="btn btn-default">로그인</button></div></form><br><br><br><br><!-- 로그인 칸 밑 공백 --></div>

                    </div>
                </div>

            </div>
        </div>

        <!-- Footer area-->
        <div class="footer-area">

          <div class=" footer">
            <div class="container">
              <div class="row">

                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                  <div class="single-footer">
                    <h4>회사소개</h4>
                    <div class="footer-title-line"></div>

                    <img src="assets/img/mainpage/gologosample.png" alt="" class="wow pulse" data-wow-delay="1s">
                    <p>부동산 매물 검색 사이트<br>
                    전국의 부동산 매물 정보를 제공합니다
                    </p>
                    <ul class="footer-adress">
                      <li><i class="pe-7s-map-marker strong"> </i>서울시 서초구</li>
                      <li><i class="pe-7s-mail strong"> </i> email@highprofit.com</li>
                      <li><i class="pe-7s-call strong"> </i> 02-3333-3333</li>
                    </ul>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                  <div class="single-footer">
                    <h4>메뉴</h4>
                    <div class="footer-title-line"></div>
                    <ul class="footer-menu">
                      <li><a href="properties.html">매물</a> </li>
                      <li><a href="#">MY부동산</a> </li>
                      <li><a href="submit-property.html">부동산정보</a></li>
                      <li><a href="contact.html">게시판</a></li>
                    </ul>
                  </div>
                </div>
                <!-- class="col-md-3 col-sm-6 wow fadeInRight animated" end -->
                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                  <div class="single-footer">
                    <h4>공지사항</h4>
                    <div class="footer-title-line"></div>
                    <ul class="footer-blog">
                      <li>
                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                          <a href="single.html">
                                                      <img src="assets/img/demo/small-proerty-2.jpg">
                                                  </a>
                          <span class="blg-date">2018-01-3</span>

                        </div>
                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                          <h6> <a href="single.html">공지사항 제목1</a></h6>
                          <p style="line-height: 17px; padding: 8px 2px;">공지 내용1 ...</p>
                        </div>
                      </li>

                      <li>
                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                          <a href="single.html">
                                                      <img src="assets/img/demo/small-proerty-2.jpg">
                                                  </a>
                          <span class="blg-date">2018-01-02</span>

                        </div>
                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                          <h6> <a href="single.html">공지사항 소제목2</a></h6>
                          <p style="line-height: 17px; padding: 8px 2px;">공지 내용2...</p>
                        </div>
                      </li>

                      <li>
                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                          <a href="single.html">
                                                      <img src="assets/img/demo/small-proerty-2.jpg">
                                                  </a>
                          <span class="blg-date">2018-01-01</span>

                        </div>
                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                          <h6> <a href="single.html">공지사항 소제목 3</a></h6>
                          <p style="line-height: 17px; padding: 8px 2px;">공지 내용3...</p>
                        </div>
                      </li>


                    </ul>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                  <div class="single-footer news-letter">
                    <h4>안내</h4>
                    <div class="footer-title-line"></div>
                    <ul class="footer-menu">
                                    <li><a href="single.html">이용약관</a></li>
                                    <li><a href="#">개인정보처리방침</a> </li>
                                    <li><a href="#">이메일무단수집거부</a></li>
                                    <li><a href="#">책임한계와 법적고지</a></li>
                                  </ul>
                  </div>
                </div>

              </div>
              <!--  class="row" end -->

            </div>
        <!-- class="container"  end  -->
          </div>
          <!--class="footer-area" end   -->

          <div class="footer-copy text-center">
            <div class="container">
              <div class="row">
                <div class="pull-left">
                  <span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a> , All rights reserved 2016  </span>
                </div>

              </div>
            </div>
          </div>

        </div>
        <!--"footer-area" end   -->

         <script src="assets/js/modernizr-2.6.2.min.js"></script>

        <script src="assets/js/jquery-1.10.2.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/bootstrap-select.min.js"></script>
        <script src="assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="assets/js/easypiechart.min.js"></script>
        <script src="assets/js/jquery.easypiechart.min.js"></script>

        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/wow.js"></script>

        <script src="assets/js/icheck.min.js"></script>
        <script src="assets/js/price-range.js"></script>

        <script src="assets/js/main.js"></script>

    </body>
</html>

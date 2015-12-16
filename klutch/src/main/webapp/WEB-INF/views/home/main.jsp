<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
 <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="screen">
 <link href="/resources/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet">
 <link href="/resources/css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
 <link href="/resources/css/animate.css" rel="stylesheet" type="text/css" media="screen">
 <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700' rel='stylesheet' type='text/css'>
 <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
 <link href="/resources/css/owl.carousel.css" rel="stylesheet" type="text/css" media="screen">
 <link href="/resources/css/owl.theme.css" rel="stylesheet" type="text/css" media="screen">
 <link href="/resources/css/magnific-popup.css" rel="stylesheet" type="text/css">
 		<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
	<title>Klutch Hitter</title>


</head>
<body>
 		<section id="navigation">
            <div class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#quotations">Klutch</a>
                    </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#quotations">Home</a></li>
                            <li><a href="#work">Work</a></li>
                            <li><a href="#days">Days</a></li>
                            <li><a href="#team">Team</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#blog">Blog</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container -->
            </div><!--navbar-default-->
        </section><!--navigation section end here-->
        <section class="parallax testimonials bg-heading" data-stellar-background-ratio="0.5" id="quotations">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="center-heading text-center">
                            <h2 class="wow animated bounceIn"  data-wow-duration="700ms" data-wow-delay="100ms">Quotations</h2>
                            <span class="icon"><i class="fa fa-quote-left"></i></span> 
                        </div><!--center heading-->
                    </div>
                </div><!--center heading-->
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center">
                        <div id="testi-carousel" class="owl-carousel">
                            <div>
                                <h4>
                                    <i class="fa fa-quote-left"></i>
                                   	The aim of life is self-development. To realize one's nature perfectly - that is what each of us is here for.
                                   	<i class="fa fa-quote-right"></i>
                                </h4>
                                <p>-Oscar Wilde</p>
                            </div><!--testimonials item like paragraph-->
                            <div>
                                <h4>
                                    <i class="fa fa-quote-left"></i>
                                    Whenever people agree with me I always feel I must be wrong.
                                    <i class="fa fa-quote-right"></i>
                                </h4>
                                <p>-Oscar Wilde</p>
                            </div><!--testimonials item like paragraph-->
                            <div>
                                <h4>
                                    <i class="fa fa-quote-left"></i>
                                    Life is far too important a thing ever to talk seriously about.
                                    <i class="fa fa-quote-right"></i>
                                </h4>
                                <p>-Oscar Wilde</p>
                            </div><!--testimonials item like paragraph-->
                        </div>
                    </div>
                </div>

            </div>
        </section><!--testimonials-->
        <section id="work" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="center-heading text-center">
                            <h2 class=" wow animated bounceIn"  data-wow-duration="700ms" data-wow-delay="100ms">Work</h2>
                            <span class="icon"><i class="fa fa-image"></i></span> 
                        </div><!--center heading-->
                    </div>
                </div><!--center heading-->
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center">
                        <p class="lead margin-btm-30">
                            Something that I have done. I hope you'd enjoy them, too.
                        </p>
                    </div>
                </div>
                <div class="divided-50"></div>
                <div class="row">
                    <div id="work-slide" class="owl-carousel">
                        <div>
                            <div class="col-md-6 margin-btm-30">
                                <img src="/resources/img/MaggieSimpson3.gif" class="img-responsive" alt="">
                            </div>
                            <div class="col-md-6">
                                <div class="work-detail">
                                    <h1>소원 점퍼</h1>
                                    <p>
                                    	Jump to get coins 
                                    </p>
                                    <p>
                                        Avoid attacking Louie and get more coin for high score.
                                    </p>
                                    
                                    <p><strong>Fun Fact:</strong> ★★★</p>
                                    <p><a href="/resources/apk/SJ.apk" class="btn btn-dark">Download</a></p>
                                </div>
                            </div>
                        </div><!--testimonials item like paragraph-->
                        <div>
                            <div class="col-md-6 margin-btm-30">
                                <img src="/resources/img/BartSimpson5.gif" class="img-responsive" alt="">
                            </div>
                            <div class="col-md-6">
                                <div class="work-detail">
                                    <h1>단어의 제왕</h1>
                                    <p>
                                    	Compete with others. 
                                    </p>
                                    <p>
                                        Memorize English words with fun.
                                    </p>
                                    
                                    <p><strong>Fun Fact:</strong> ★</p>
                                    <p><a href="/kov/" class="btn btn-dark">Visit Project</a></p>
                                </div>
                            </div>
                        </div><!--testimonials item like paragraph-->
                        <div>
                            <div class="col-md-6 margin-btm-30">
                                <img src="/resources/img/HomerSimpson23.gif" class="img-responsive" alt="">
                            </div>
                            <div class="col-md-6">
                                <div class="work-detail">
                                    <h1>루이를 찾아라.</h1>
                                    <p>
                                    	루이를 찾으세요.
                                    </p>
                                    <p>
                                      	  루이를 찾으면 당신은 패자 입니다.
                                    </p>
                                    
                                    <p><strong>Fun Fact: </strong> ★★</p>
                                    <p><a href="/findLouieIntro" class="btn btn-dark">Visit Project</a></p>
                                </div>
                            </div>
                        </div><!--testimonials item like paragraph-->
                        <div>
 							<div class="col-md-6">
                                <img src="/resources/img/MargeSimpson18.gif" class="img-responsive" alt="">
                            </div>
                            <div class="col-md-6 margin-btm-30">
                                <div class="work-detail">
                                    <h1>소원보드</h1>
                                    <p>
                                        자잘한 일상!
                                    </p>
                                   
                                    <p><strong>Fun Fact:</strong> ★★</p>
                                    <p><a href="/sb/list" class="btn btn-dark">Visit Project</a></p>
                                </div>
                            </div>
                        </div><!--testimonials item like paragraph-->
                        <div>
                            <div class="col-md-6 margin-btm-30">
                                <img src="/resources/img/KrustyTeeny.gif" class="img-responsive" alt="">
                            </div>
                            <div class="col-md-6">
                                <div class="work-detail">
                                    <h1>마니또</h1>
                                    <p>
                                        당신의 마니또는?
                                    </p>                                 
                                    <p><strong>Fun Fact:</strong> ★</p>
                                    <p><a href="/mnd/main" class="btn btn-dark">2014</a></p>
                                    <p><a href="/mnd2015/main" class="btn btn-dark">2015</a></p>
                                </div>
                            </div>
                        </div><!--testimonials item like paragraph-->                     
                    </div>
                </div><!--portfolio carousel slide use for single item detail-->
            </div>
            <div class="divided-50"></div>
        </section><!--work-->
       
        <section class="fun-facts parallax" data-stellar-background-ratio="0.5" id="days">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 margin-btm-30 text-center">
                        <div class="fact-inner">
                            <h1><span class="counter" id="we"></span> Days</h1>
                            <h3>since we</h3>
                        </div>
                    </div><!--facts col-->
                    <div class="col-md-6 margin-btm-30 text-center">
                        <div class="fact-inner">
                            <h1><span class="counter" id="together"></span> Days</h1>
                            <h3>since toghter</h3>
                        </div>
                    </div><!--facts col-->
                      <div class="col-md-6 margin-btm-30 text-center">
                        <div class="fact-inner">
                            <h1><span class="counter" id="sw"></span> Days</h1>
                            <h3>since Sowon</h3>
                        </div>
                    </div><!--facts col-->
                       <div class="col-md-6 margin-btm-30 text-center">
                        <div class="fact-inner">
                            <h1><span class="counter" id="louie"></span> Days</h1>
                            <h3>since Louie</h3>
                        </div>
                    </div><!--facts col-->
                    
                </div>
            </div>
        </section><!--fun facts-->
        
        <section id="team" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="center-heading text-center">
                            <h2>Meet the team</h2>
                            <span class="icon"><i class="fa fa-user"></i></span> 
                        </div><!--center heading-->
                    </div>
                </div><!--center heading-->
                <div class="row">
                    <div class="col-sm-3">
                        <div class="team-col wow animated fadeInLeft"  data-wow-duration="700ms" data-wow-delay="100ms">
                            <img src="/resources/img/team-1.jpg" alt="">
                            <h4>Kay</h4>
                            <span>Developer</span>
                        </div>
                    </div><!--team col-->
                    <div class="col-sm-3">
                        <div class="team-col wow animated fadeInLeft"  data-wow-duration="700ms" data-wow-delay="200ms">
                            <img src="/resources/img/team-2.jpg" alt="">
                            <h4>Victoria</h4>
                            <span>Manager</span>
                        </div>
                    </div><!--team col-->
                    <div class="col-sm-3">
                        <div class="team-col wow animated fadeInLeft"  data-wow-duration="700ms" data-wow-delay="300ms">
                            <img src="/resources/img/team-3.jpg" alt="">
                            <h4>S.W.</h4>
                            <span>Daughter</span>
                        </div>
                    </div><!--team col-->
                    <div class="col-sm-3">
                        <div class="team-col wow animated fadeInLeft"  data-wow-duration="700ms" data-wow-delay="400ms">
                            <img src="/resources/img/team-4.jpg" alt="">
                            <h4>Louie</h4>
                            <span>Dog</span>
                        </div>
                    </div><!--team col-->
                </div><div class="divided-50"></div>
            </div>
        </section><!--team-->
        
         <div class="cta-3">
            <div class="container text-center">
                <h3 class=" wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="100ms">Bucheon, Seoul, Vancouver, Tokyo, Ansan, Toronto, PyeongChang</h3>
                <p class=" wow animated fadeInDown"  data-wow-duration="700ms" data-wow-delay="200ms"><a href="#" class="btn btn-border-white btn-lg">UP</a></p>
            </div>
        </div><!--cta-3-->
        
		<section id="about" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="center-heading text-center">
                            <h2>About me</h2>
                            <span class="icon"><i class="fa fa-user"></i></span> 
                        </div><!--center heading-->
                    </div>
                </div><!--center heading-->
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center wow animated fadeInUp" data-wow-duration="700ms" data-wow-delay="300ms">
                        <p class="lead margin-btm-30">
                            I am a software developer, a father with a lovely wife and a daughter. Love this industry, love people, love music, love pets, and love life.
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 margin-btm-30">
                        <div class="service-box wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="300ms">
                            <i class="fa fa-desktop"></i>
                            <h3>Love Coding</h3>
                            <p>Java, JSP, JavaScript, Jquery, JSTL, HTML, SQL, Servlet, twitter-bootstrap, MyBatis, Spring Framework, Cubrid, asp, objective-c, MySql, OracleDB - love to learn new things</p>
                        </div>
                    </div><!--service col end-->
                    <div class="col-md-3 margin-btm-30">
                        <div class="service-box wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="400ms">
                            <i class="fa fa-users"></i>
                            <h3>Love English</h3>
                            <p>Naturalized Canadian, English Instructor for 5 years. Love to meet new people. Believe This language put everyone from around world together.</p>
                        </div>
                    </div><!--service col end-->
                    <div class="col-md-3 margin-btm-30">
                        <div class="service-box wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="500ms">
                            <i class="fa fa-image"></i>
                            <h3>Love Music</h3>
                            <p>Nirvana, 2Pac, T, Muse, Telecaster, GarageBand, UNTK</p>
                        </div>
                    </div><!--service col end-->
                    <div class="col-md-3 margin-btm-30">
                        <div class="service-box wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="600ms">
                            <i class="fa fa-crop"></i>
                            <h3>Love Sports</h3>
                            <p>Diehard Eagles Fan, Bluejays fan, Whitecaps fan</p>
                        </div>
                    </div><!--service col end-->
                </div>
               </div>
        </section><!--about section end-->
		<!--scripts and plugins -->
        <!--must need plugin jquery-->
        <script src="/resources/js/jquery.min.js"></script>  
        <script>
			var today = new Date();
			//month -1 needed
			var we = new Date("2008","11","25");
			var together = new Date("2011","6","9");
			var sw = new Date("2014","3","24");
			var louie = new Date("2011", "11", "25");
			$("#we").append(((today.getTime()-we.getTime())/1000/60/60/24).toFixed(0));
			$("#together").append(((today.getTime()-together.getTime())/1000/60/60/24).toFixed(0));
			$("#sw").append(((today.getTime()-sw.getTime())/1000/60/60/24).toFixed(0));
			$("#louie").append(((today.getTime()-louie.getTime())/1000/60/60/24).toFixed(0));
		</script>      
        <!--bootstrap js plugin-->
        <script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!--easing plugin for smooth scroll-->
        <script src="/resources/js/jquery.easing.1.3.min.js" type="text/javascript"></script>
        <script src="/resources/js/jquery.sticky.js" type="text/javascript"></script>
        <!--digit countdown plugin-->
        <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
        <!--digit countdown plugin-->
        <script src="/resources/js/jquery.counterup.min.js" type="text/javascript"></script>
        <!--on scroll animation-->
        <script src="/resources/js/wow.min.js" type="text/javascript"></script> 
        <script src="/resources/js/jquery.flexslider-min.js" type="text/javascript"></script>
        <script src="/resources/js/jquery.mixitup.min.js" type="text/javascript"></script>
        <script src="/resources/js/jquery.stellar.min.js" type="text/javascript"></script>
        <!--owl carousel slider-->
        <script src="/resources/js/owl.carousel.min.js" type="text/javascript"></script>
        <!--popup js-->
        <script src="/resources/js/jquery.magnific-popup.min.js" type="text/javascript"></script>

        <!--customizable plugin edit according to your needs-->
        <script src="/resources/js/custom.js" type="text/javascript"></script>
</body>
</html>
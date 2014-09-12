<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Klutch</title>

        <!-- Bootstrap -->
        <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- custom css -->
        <link href="resources/css/style.css" rel="stylesheet" type="text/css" media="screen">
        <!-- font awesome for icons -->
        <link href="resources/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <!--flex slider-->
        <link href="resources/css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
        <!-- animated css  -->
        <link href="resources/css/animate.css" rel="stylesheet" type="text/css" media="screen">
        <!--web fonts-->      
        <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>

        <!--owl carousel css-->
        <link href="resources/css/owl.carousel.css" rel="stylesheet" type="text/css" media="screen">
        <link href="resources/css/owl.theme.css" rel="stylesheet" type="text/css" media="screen">
        <!--popups css-->
        <link href="resources/css/magnific-popup.css" rel="stylesheet" type="text/css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


    </head>
    <body data-spy="scroll" data-offset="80">

        <section id="home" data-stellar-background-ratio="0.5">
            <div class="parallax-overlay"></div> 
            <div class="home-content text-center">
                <div class="container">
                    <h1 class=" slide-logo">Welcome!</h1>
                    <div class="main-flex-slider">
                        <ul class="slides">
                            <li>
                                <h1>Klutch</h1>

                            </li>
                            <li>
                                <h1>I create a thing</h1>

                            </li>
                            <li>
                                <h1>I enjoy that thing</h1>

                            </li>
                        </ul>
                    </div> 
                    <h2 class="slide-btm-text">Keep asking yourself why you're still here.</h2>
                    <div class="home-link-btn text-center">
                        <p><a href="#about" class="btn btn-lg btn-border-white">More Detail </a></p>
                    </div>
                </div>
            </div>
        </section><!--home section end-->
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
                        <a class="navbar-brand" href="home">Klutch</a>
                    </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#home">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#team">Team</a></li>
                            <li><a href="#services">Things</a></li>
                            <li><a href="#work">Work</a></li>
                            <li><a href="#blog">Blog</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container -->
            </div><!--navbar-default-->
        </section><!--navigation section end here-->
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
                            <i class="fa fa-users"></i>
                            <h3>Love Java</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim.</p>
                        </div>
                    </div><!--service col end-->
                    <div class="col-md-3 margin-btm-30">
                        <div class="service-box wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="400ms">
                            <i class="fa fa-desktop"></i>
                            <h3>Love English</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim.</p>
                        </div>
                    </div><!--service col end-->
                    <div class="col-md-3 margin-btm-30">
                        <div class="service-box wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="500ms">
                            <i class="fa fa-image"></i>
                            <h3>Love Web</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim.</p>
                        </div>
                    </div><!--service col end-->
                    <div class="col-md-3 margin-btm-30">
                        <div class="service-box wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="600ms">
                            <i class="fa fa-crop"></i>
                            <h3>Love Sports</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim.</p>
                        </div>
                    </div><!--service col end-->
                </div>
        </section><!--about section end-->
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
                            <img src="resources/img/team-1.jpg" alt="">
                            <h4>Kay</h4>
                            <span>Developer</span>
                        </div>
                    </div><!--team col-->
                    <div class="col-sm-3">
                        <div class="team-col wow animated fadeInLeft"  data-wow-duration="700ms" data-wow-delay="200ms">
                            <img src="resources/img/team-2.jpg" alt="">
                            <h4>Victoria</h4>
                            <span>Manager</span>
                        </div>
                    </div><!--team col-->
                    <div class="col-sm-3">
                        <div class="team-col wow animated fadeInLeft"  data-wow-duration="700ms" data-wow-delay="300ms">
                            <img src="resources/img/team-3.jpg" alt="">
                            <h4>S.W.</h4>
                            <span>Daughter</span>
                        </div>
                    </div><!--team col-->
                    <div class="col-sm-3">
                        <div class="team-col wow animated fadeInLeft"  data-wow-duration="700ms" data-wow-delay="400ms">
                            <img src="resources/img/team-4.jpg" alt="">
                            <h4>Louie</h4>
                            <span>Dog</span>
                        </div>
                    </div><!--team col-->
                </div><div class="divided-50"></div>
            </div>
        </section><!--team-->
        <section class="parallax testimonials bg-heading" data-stellar-background-ratio="0.5">
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
        <section class="cta-1">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <a href="#contact" class="btn btn-lg btn-border-white wow animated slideInLeft"  data-wow-duration="700ms" data-wow-delay="100ms">Contact?</a>
                    </div>
                </div>
            </div>
        </section><!--cta-1 end-->
        <section id="services" class="section-padding parallax bg-heading" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="center-heading text-center">
                            <h2>My things</h2>
                            <span class="icon"><i class="fa fa-bars"></i></span> 
                        </div><!--center heading-->
                    </div>
                </div><!--center heading-->
                <div class="row">
                    <div class="col-md-6 margin-btm-30 wow animated fadeInLeft"  data-wow-duration="700ms" data-wow-delay="100ms">
                        <div class="row">
                            <div class="col-md-2">
                                <div class="service-icon">
                                    <i class="fa fa-image"></i>                                                                      
                                </div>
                            </div><!--service-icon col-->
                            <div class="col-md-10">
                                <div class="service-info">
                                    <h4>Java</h4>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim.
                                    </p>
                                </div>
                            </div><!--service-info-col-->
                        </div>
                    </div><!--service-col-->
                    <div class="col-md-6 margin-btm-30 wow animated fadeInRight"  data-wow-duration="700ms" data-wow-delay="200ms">
                        <div class="row">
                            <div class="col-md-2">
                                <div class="service-icon">
                                    <i class="fa fa-crop"></i>                                                                      
                                </div>
                            </div><!--service-icon col-->
                            <div class="col-md-10">
                                <div class="service-info">
                                    <h4>English</h4>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim.
                                    </p>
                                </div>
                            </div><!--service-info-col-->
                        </div>
                    </div><!--service-col-->
                </div><!--services-row-->
                <div class="divided-50"></div>
                <div class="row">
                    <div class="col-md-6 margin-btm-30 wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="300ms">
                        <div class="row">
                            <div class="col-md-2">
                                <div class="service-icon">
                                    <i class="fa fa-users"></i>                                                                      
                                </div>
                            </div><!--service-icon col-->
                            <div class="col-md-10">
                                <div class="service-info">
                                    <h4>Music</h4>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim.
                                    </p>
                                </div>
                            </div><!--service-info-col-->
                        </div>
                    </div><!--service-col-->
                    <div class="col-md-6 margin-btm-30 wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="400ms">
                        <div class="row">
                            <div class="col-md-2">
                                <div class="service-icon">
                                    <i class="fa fa-desktop"></i>                                                                      
                                </div>
                            </div><!--service-icon col-->
                            <div class="col-md-10">
                                <div class="service-info">
                                    <h4>Car</h4>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ullamcorper diam nec augue semper, in dignissim.
                                    </p>
                                </div>
                            </div><!--service-info-col-->
                        </div>
                    </div><!--service-col-->
                </div><!--services-row-->
            </div>
        </section><!--services-->
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
                            Something that I have done. I've had so much fun doing them. I hope you would enjoy them, too.
                        </p>
                    </div>
                </div>
                <div class="divided-50"></div>
                <div class="row">
                    <div id="work-slide" class="owl-carousel">
                        <div>
                            <div class="col-md-6 margin-btm-30">
                                <img src="resources/img/work-1.png" class="img-responsive" alt="">
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
                                    
                                    <p><strong>Fun Fact:</strong> Korean loves Competition</p>
                                    <p><strong>Skills:</strong> HTMl5 / CSS3 / Bootstrap3</p>
                                    <p><a href="http://54.199.152.48:8080/kov/" class="btn btn-dark">Visit Project</a></p>
                                </div>
                            </div>
                        </div><!--testimonials item like paragraph-->
                        <div>
                            <div class="col-md-6 margin-btm-30">
                                <img src="resources/img/work-4.png" class="img-responsive" alt="">
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
                                    
                                    <p><strong>Fun Fact:</strong> Louie</p>
                                    <p><strong>Skills:</strong> HTMl5 / CSS3 / Bootstrap3</p>
                                    <p><a href="findLouieIntro" class="btn btn-dark">Visit Project</a></p>
                                </div>
                            </div>
                        </div><!--testimonials item like paragraph-->
                        <div>

                            <div class="col-md-6 margin-btm-30">
                                <div class="work-detail">
                                    <h1>Swboard</h1>
                                    <p>
                                        	소원보드
                                    </p>
                                   
                                    <p><strong>Fun Fact:</strong> </p>
                                    <p><strong>Skills:</strong> HTMl5 / CSS3 / Bootstrap3</p>
                                    <p><a href="http://54.199.152.48:8080/SB/list" class="btn btn-dark">Visit Project</a></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <img src="resources/img/work-2.png" class="img-responsive" alt="">
                            </div>
                        </div><!--testimonials item like paragraph-->
                        <div>
                            <div class="col-md-6 margin-btm-30">
                                <img src="resources/img/work-3.png" class="img-responsive" alt="">
                            </div>
                            <div class="col-md-6">
                                <div class="work-detail">
                                    <h1>Kboard</h1>
                                    <p>
                                        	K board for beta test
                                    </p>                                 
                                    <p><strong>Fun Fact:</strong> </p>
                                    <p><strong>Skills:</strong> HTMl5 / CSS3 / Bootstrap3</p>
                                    <p><a href="http://54.199.152.48:8080/kb/list" class="btn btn-dark">Visit Project</a></p>
                                </div>
                            </div>
                        </div><!--testimonials item like paragraph-->                     
                    </div>
                </div><!--portfolio carousel slide use for single item detail-->
            </div>
            <div class="divided-50"></div>
            <div class="container  wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="200ms">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="portfolio-filters text-center">
                            <li class="filter active" data-filter="all">all</li>
                            <li class="filter" data-filter="design">design</li>
                            <li class="filter" data-filter="html">HTML5</li>
                            <li class="filter" data-filter="fun">fun</li>
                            <li class="filter" data-filter="blog">blog</li>
                        </ul><!--.portfolio-filter nav-->

                        <div id="grid" class="row" style="       ">
                            <div class="mix col-sm-4 fun margin-btm-30">
                                <div class="item-img-wrap ">
                                    <img src="resources/img/work-1.png" class="img-responsive" alt="workimg">
                                    <div class="item-img-overlay">
                                        <a href="resources/img/work-1.png" class="show-image">
                                            <span></span>
                                        </a>
                                    </div>
                                </div> <!--item img wrap-->

                            </div><!--work item-->
                            <div class="mix  col-sm-4 blog margin-btm-30">
                                <div class="item-img-wrap ">
                                    <img src="resources/img/work-2.png" class="img-responsive" alt="workimg">
                                    <div class="item-img-overlay">
                                        <a href="resources/img/work-2.png" class="show-image">
                                            <span></span>
                                        </a>
                                    </div>
                                </div> <!--item img wrap-->


                            </div><!--work item-->
                            <div class="mix col-sm-4 blog design margin-btm-30">
                                <div class="item-img-wrap ">
                                    <img src="resources/img/work-3.png" class="img-responsive" alt="workimg">
                                    <div class="item-img-overlay">
                                        <a href="resources/img/work-3.png" class="show-image">
                                            <span></span>
                                        </a>
                                    </div>
                                </div> <!--item img wrap-->


                            </div><!--work item-->
                            <div class="mix col-sm-4 design margin-btm-30">
                                <div class="item-img-wrap ">
                                    <img src="resources/img/work-8.png" class="img-responsive" alt="workimg">
                                    <div class="item-img-overlay">
                                        <a href="resources/img/work-8.png" class="show-image">
                                            <span></span>
                                        </a>
                                    </div>
                                </div> <!--item img wrap-->


                            </div><!--work item-->
                            <div class="mix col-sm-4 design margin-btm-30">
                                <div class="item-img-wrap ">
                                    <img src="resources/img/work-5.png" class="img-responsive" alt="workimg">
                                    <div class="item-img-overlay">
                                        <a href="resources/img/work-5.png" class="show-image">
                                            <span></span>
                                        </a>
                                    </div>
                                </div> <!--item img wrap-->


                            </div><!--work item-->
                            <div class="mix col-sm-4 html margin-btm-30">
                                <div class="item-img-wrap ">
                                    <img src="resources/img/work-6.png" class="img-responsive" alt="workimg">
                                    <div class="item-img-overlay">
                                        <a href="resources/img/work-6.png" class="show-image">
                                            <span></span>
                                        </a>
                                    </div>
                                </div> <!--item img wrap-->


                            </div><!--work item-->
                            <div class="mix col-sm-4 design wordpress margin-btm-30">
                                <div class="item-img-wrap ">
                                    <img src="resources/img/work-7.png" class="img-responsive" alt="workimg">
                                    <div class="item-img-overlay">
                                        <a href="resources/img/work-7.png" class="show-image">
                                            <span></span>
                                        </a>
                                    </div>
                                </div> <!--item img wrap-->


                            </div><!--work item-->
                            <div class="mix col-sm-4 design fun margin-btm-30">
                                <div class="item-img-wrap ">
                                    <img src="resources/img/work-4.png" class="img-responsive" alt="workimg">
                                    <div class="item-img-overlay">
                                        <a href="resources/img/work-4.png" class="show-image">
                                            <span></span>
                                        </a>
                                    </div>
                                </div> <!--item img wrap-->

                            </div><!--work item-->
                            <div class="mix col-sm-4 html margin-btm-30">
                                <div class="item-img-wrap ">
                                    <img src="resources/img/work-9.png" class="img-responsive" alt="workimg">
                                    <div class="item-img-overlay">
                                        <a href="resources/img/work-9.png" class="show-image">
                                            <span></span>
                                        </a>
                                    </div>
                                </div> <!--item img wrap-->

                            </div><!--work item-->
                        </div><!--#grid for filter items-->
                    </div><!--.col-md-12 of portfolio filter-->
                </div><!--.row-->
            </div>
        </section><!--work-->
       
        <section class="fun-facts parallax" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 margin-btm-30 text-center">
                        <div class="fact-inner">
                            <h1 class="counter">3450</h1>
                            <h3>Dummy Numbers</h3>
                        </div>
                    </div><!--facts col-->
                      <div class="col-md-4 margin-btm-30 text-center">
                        <div class="fact-inner">
                            <h1><span class="counter">345</span>+</h1>
                            <h3>Goes Up</h3>
                        </div>
                    </div><!--facts col-->
                       <div class="col-md-4 margin-btm-30 text-center">
                        <div class="fact-inner">
                            <h1><span class="counter">6000</span></h1>
                            <h3>And Stays</h3>
                        </div>
                    </div><!--facts col-->
                </div>
            </div>
        </section><!--fun facts-->
        <div class="cta-3">
            <div class="container text-center">
                <h3 class=" wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="100ms">Klutch is going to be Big</h3>
                <p class=" wow animated fadeInDown"  data-wow-duration="700ms" data-wow-delay="200ms"><a href="#" class="btn btn-border-white btn-lg">UP</a></p>
            </div>
        </div><!--cta-3-->
        <section id="blog" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="center-heading text-center">
                            <h2 class=" wow animated bounceIn"  data-wow-duration="700ms" data-wow-delay="100ms">Latest from the blog</h2>
                            <span class="icon"><i class="fa fa-calendar"></i></span> 
                        </div><!--center heading-->
                    </div>
                </div><!--center heading-->
               
                <div class="divided-50"></div>
                <div class="row">
                
                <c:forEach var="list" items="${bloglist }">
                    <div class="col-sm-4 margin-btm-30 wow animated fadeInUp"  data-wow-duration="700ms" data-wow-delay="100ms">
                        <div class="item-img-wrap ">
                            <img src="../SB/${list.articlepicturepath }" class="img-responsive" alt="workimg">
                            <div class="item-img-overlay">
                                <a href="../SB/${list.articlepicturepath }" class="show-image">
                                    <span></span>
                                </a>
                            </div>
                        </div><!--item image hover-->
                        <div class="blog-desc">
                            <h3><a href="#">${list.articlesubject }</a></h3>
                            <span><fmt:formatDate value="${list.articletime }" pattern="yyyy MM dd"/></span>
                            <p>
                                <%
												pageContext.setAttribute("enter", "\r\n");
												pageContext.setAttribute("space", "\u0020");
								%>
                                        	<c:set var="string1" value="${fn:replace(list.articlecontent,enter,'<br/>')}"/>
                                        	<c:set var="string2" value="${fn:replace(string1,space,'&nbsp;')}"/>
                                            ${string2 }
                            </p>
                            <p class="text-right">
                                <a href="blog" class="btn btn-dark btn-xs">
                                    Read More
                                </a>
                            </p>
                        </div><!--blog desc-->
                    </div><!--blog post col end-->
                    </c:forEach>
                </div><!--blog post row-->
            </div>
        </section><!--blog section end-->
        <div class="cta-2">
            <div class="container text-center">
                <a href="blog" class="btn btn-border-white btn-lg wow animated bounceInDown"  data-wow-duration="700ms" data-wow-delay="100ms">Read all blog post</a>
            </div>
        </div><!--cta 2-->

        <section id="contact" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="center-heading text-center">
                            <h2 class=" wow animated fadeInRight"  data-wow-duration="700ms" data-wow-delay="100ms">Keep in touch</h2>
                            <span class="icon"><i class="fa fa-phone"></i></span> 
                        </div><!--center heading-->
                    </div>
                </div><!--center heading-->
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p class="lead">
                            Got anything to talk about? Give me a call or drop us a line.
                        </p>
                    </div>
                </div>
                <div class="divided-50"></div>
                <div class="row contact-form">    
                    <div class="col-md-7 wow animated fadeInUp margin-btm-30"  data-wow-duration="700ms" data-wow-delay="300ms">
                        <form role="form" action="homeMessage" method="post">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" id="name" name="name" required="true">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" class="form-control" id="email" name="email" required="true">
                            </div>
                            <div class="form-group">
                                <label for="message">Message</label>
                                <textarea class="form-control" rows="7" id="message" name="content" required="true"></textarea>
                            </div> <div class="clearfix"></div>                     
                            <p class="text-right">
                                <button type="submit" class="btn btn-theme btn-lg">Send Message</button>
                            </p>
                        </form>
                    </div><!--form col-->
                    <div class="col-md-5">
                           <div class=" margin-btm-30 address-info wow animated bounceIn"  data-wow-duration="700ms" data-wow-delay="200ms">
                        <h3>Office</h3>
                        <p><i class="fa fa-map-marker"></i> Address: Seoul, Korea</p>
                        <p><i class="fa fa-phone"></i> Phone: (010) 1234-1234</p>
                        <p><i class="fa fa-envelope"></i> Email: klutchhitter@gmail.com</p>
                        <p><strong>Monday - Friday : </strong> 11:00 Am - 4:00 Pm</p>
                        <p><strong>Saturday - Sunday: </strong> Closed</p>
                    </div>
                        <div class=" address-info wow animated bounceIn"  data-wow-duration="700ms" data-wow-delay="400ms">
                            <h3>Elsewhere</h3>
                            <ul class="list-inline social">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section><!--contact-->
        <div class="divided-50"></div>

        <footer id="footer">
            <div class="container text-center">
                <a href="#home" class="to-top">Klutch</a>
                <span>&copy; 2014. Klutch</span>
            </div>
        </footer>
        <!--scripts and plugins -->
        <!--must need plugin jquery-->
        <script src="resources/js/jquery.min.js"></script>        
        <!--bootstrap js plugin-->
        <script src="resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!--easing plugin for smooth scroll-->
        <script src="resources/js/jquery.easing.1.3.min.js" type="text/javascript"></script>
        <script src="resources/js/jquery.sticky.js" type="text/javascript"></script>
        <!--digit countdown plugin-->
        <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
        <!--digit countdown plugin-->
        <script src="resources/js/jquery.counterup.min.js" type="text/javascript"></script>
        <!--on scroll animation-->
        <script src="resources/js/wow.min.js" type="text/javascript"></script> 
        <script src="resources/js/jquery.flexslider-min.js" type="text/javascript"></script>
        <script src="resources/js/jquery.mixitup.min.js" type="text/javascript"></script>
        <script src="resources/js/jquery.stellar.min.js" type="text/javascript"></script>
        <!--owl carousel slider-->
        <script src="resources/js/owl.carousel.min.js" type="text/javascript"></script>
        <!--popup js-->
        <script src="resources/js/jquery.magnific-popup.min.js" type="text/javascript"></script>

        <!--customizable plugin edit according to your needs-->
        <script src="resources/js/custom.js" type="text/javascript"></script>
    </body>
</html>

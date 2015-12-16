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
                                <h1>Create</h1>

                            </li>
                            <li>
                                <h1>Enjoy</h1>
                            </li>
                        </ul>
                    </div> 
                    <h2 class="slide-btm-text">Kay Lee Presents ${totalCnt } ${ip }</h2>
                    <div class="home-link-btn text-center">
                        <p><a href="/home/main" class="btn btn-lg btn-border-white">ENTER </a></p>
                    </div>
                </div>
            </div>
        </section><!--home section end-->
        
		<!--scripts and plugins -->
        <!--must need plugin jquery-->
        <script src="/resources/js/jquery.min.js"></script>        
        <!--bootstrap js plugin-->
        <script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!--easing plugin for smooth scroll-->
<!--         <script src="/resources/js/jquery.easing.1.3.min.js" type="text/javascript"></script> -->
<!--         <script src="/resources/js/jquery.sticky.js" type="text/javascript"></script> -->
        <!--digit countdown plugin-->
<!--         <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script> -->
        <!--digit countdown plugin-->
<!--         <script src="/resources/js/jquery.counterup.min.js" type="text/javascript"></script> -->
        <!--on scroll animation-->
        <script src="/resources/js/wow.min.js" type="text/javascript"></script> 
        <script src="/resources/js/jquery.flexslider-min.js" type="text/javascript"></script>
        <script src="/resources/js/jquery.mixitup.min.js" type="text/javascript"></script>
        <script src="/resources/js/jquery.stellar.min.js" type="text/javascript"></script>
        <!--owl carousel slider-->
        <script src="/resources/js/owl.carousel.min.js" type="text/javascript"></script>
        <!--popup js-->
<!--         <script src="/resources/js/jquery.magnific-popup.min.js" type="text/javascript"></script> -->

        <!--customizable plugin edit according to your needs-->
        <script src="/resources/js/custom.js" type="text/javascript"></script>
</body>
</html>

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
                    <div class="blog-intro-text bg-heading">
                        <h5>Welcome to the blog</h5>
                        <div class="center-heading text-center">
                            <h2>Klutch's daily post</h2>
                            <span class="icon"><i class="fa fa-bars"></i></span> 
                        </div><!--center heading-->
                        <div class=" text-center">
                            <p><a href="#blog-wrapper" class="btn btn-lg btn-border-white">Read a blog</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section><!--blog intro section end-->    
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
                        <a class="navbar-brand" href="index.html">Klutch</a>
                    </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="home#home">Home</a></li>
                            <li><a href="home#about">About</a></li>
                            <li><a href="home#team">Team</a></li>
                            <li><a href="home#services">Services</a></li>
                            <li><a href="home#work">Work</a></li>
                            <li><a href="home#pricing">Pricing</a></li>
                            <li class="active"><a href="#blog">Blog</a></li>
                            <li><a href="home#contact">Contact</a></li>
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container -->
            </div><!--navbar-default-->
        </section><!--navigation section end here-->
        <div class="divided-50"></div>
        <section id="blog-wrapper" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                    <c:forEach var="list" items="${list }">
                        <div class="blog-post-wrap">
                            <div class="row">
                                <div class="col-sm-2 margin-btm-30 hidden-xs">
                                    <div class="post-date   text-right">
                                        <h2><fmt:formatDate value="${list.articletime}" pattern="dd"/></h2>
                                        <span><fmt:formatDate value="${list.articletime}" pattern="yyyy MM"/></span>
                                    </div>
                                    <div class="post-left-info">
                                        <p><i class="fa fa-user"></i> <a href="#">${list.articleuserid }</a></p>
                                        <p><i class="fa fa-tag"></i> <a href="#">Tag</a></p>
                                        <p><i class="fa fa-comment"></i> <a href="#">${list.cnum} Comments</a></p>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <div class="blog-post-info">
                                        <a href="#">
                                            <c:if test="${list.articlepicturepath eq null }">
                                            <img src="resources/img/blog-1.jpg" class="img-responsive" alt=""/>
                                            </c:if>
                                            <c:if test="${list.articlepicturepath ne null }">
                                            <img src="../SB/${list.articlepicturepath }" class="img-responsive"/>
                                            </c:if>
                                        </a>
                                        <h3><a href="#">${list.articlesubject}</a></h3>
                                        <ul class="list-inline xs-post-info visible-xs">
                                            <li><i class="fa fa-user"></i> <a href="#">${list.articleuserid }</a></li>
                                            <li><i class="fa fa-tag"></i> <a href="#">Tag</a></li>
                                            <li><i class="fa fa-comment"></i> <a href="#">${list.cnum} Comments</a></li>
                                        </ul>
                                        <p>
                                            ${list.articlecontent }
                                        </p>
                                        <p class="text-right">
                                            <a href="blogPost" class="btn btn-dark btn-sm">
                                                Read more
                                            </a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div><!--blog post wrap-->
                    </c:forEach>
                        <ul class="pager">
  <li><a href="blog?page=${page-4 }">Previous Page</a></li>
  <li><a href="blog?page=${page+4 }">Next Page</a></li>
</ul>

                    </div><!--blog-post col-->
                    <div class="col-sm-3">
                        <div class="post-sidebar-box">
                            <form role="form">
                                <input type="text" class="form-control" placeholder="type and hit enter for search">
                          
                            </form>
                        </div><!--sidebar box-->
                        <div class="post-sidebar-box">
                            <h4>Me?</h4>
                            <p>
                                A Software engineer<br/>
                                An English teacher<br/>
                                An Automotive technician<br/>
                                in Seoul<br/>
                                been in Toronto<br/>
                           		been in Tokyo<br/>
                           		been in Vancouver
                            </p>
                        </div>
                        <div class="sidebar-box margin40">
                        <h4>Categories</h4>
                        <ul class="list-unstyled cat-list">
                            <li> <a href="#">Computing</a> <i class="fa fa-angle-right"></i></li>
                            <li> <a href="#">Sports</a> <i class="fa fa-angle-right"></i></li>
                            <li> <a href="#">Fashion</a> <i class="fa fa-angle-right"></i></li>
                            <li> <a href="#">Media</a> <i class="fa fa-angle-right"></i></li>
                        </ul>
                    </div>
                    </div><!--blog sidebar col-->
                </div>
            </div>
        </section><!--blog wrapper-->
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

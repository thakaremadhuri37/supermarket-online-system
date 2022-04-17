<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="en">

<!-- Mirrored from html.lionode.com/bigmarket/bm002/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:07:34 GMT -->
<head>

<script>

</script>

<!-- =====  BASIC PAGE NEEDS  ===== -->
<meta charset="utf-8">
<title>Bigmarket E-commerce Bootstrap Template</title>

<!-- =====  SEO MATE  ===== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="distribution" content="global">
<meta name="revisit-after" content="2 Days">
<meta name="robots" content="ALL">
<meta name="rating mt-5 mb-5" content="8 YEARS">
<meta name="GOOGLEBOT" content="NOARCHIVE">

<!-- =====  MOBILE SPECIFICATION  ===== -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- =====  CSS  ===== -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.css" />" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/font-awesome.min.css" />" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/all.css"/>
	integrity="
	sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="<c:url value="/resources/css/meanmenu.css" />" />
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" />

<link rel="stylesheet"
	href="<c:url value="/resources/css/magnific-popup.css" />" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/owl.carousel.css" />" />
<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.png" />" />
<link rel="apple-touch-icon"
	href="<c:url value="/resources/images/apple-touch-icon.html" />" />
<link rel="apple-touch-icon" sizes="72x72"
	href="<c:url value="/resources/images/apple-touch-icon-72x72.html" />" />
<link rel="apple-touch-icon" sizes="114x114"
	href="<c:url value="/resources/images/apple-touch-icon-114x114.html"/>" />

</head>

<body onload="homePageOnLoad()">


	<!-- =====  LODER  ===== -->
	<div class="loder"></div>
	
<div class="main">
	<div class="wrapper">
		

		<!-- =====  HEADER START  ===== -->
		
		<%@ include file="comman.jsp"%>
		
		<!-- =====  HEADER END  ===== -->
		<!-- =====  BREADCRUMB STRAT  ===== -->
		<div class="breadcrumb section pt-60 pb-60">
			<div class="container">
				<h1 class="uppercase">Login</h1>
				<ul>
					<li><a href="home"><i class="fa fa-home"></i></a></li>
					<li class="active">Login</li>
				</ul>
			</div>
		</div>
		<!-- =====  BREADCRUMB END===== -->
		<div class="page-login section">
			<!-- =====  CONTAINER START  ===== -->
			<div class="container">
				<div class="row ">
					<div class="col-12 my-3">
						<div class="row">

							<!-- Login -->
							<div class="col-md-6 col-12 d-flex">

								<div class="login">

									<h3>Login to your account</h3>
									<!-- Login Form -->
									<form class="my-4" action="login" method="post" onsubmit="return login()">
										<div class="form-group" >
											<div style="color: red">${Login_msg}</div>
											<input type="text" class="form-control"
												id="email" placeholder="Enter your Email_id"
												name="email" required>
										</div>
										<div class="form-group">
											<input type="password" class="form-control"
												id="exampleInputPassword1" placeholder="Password"
												name="password" required>
										</div>
										
										<button type="submit" class="btn mt-10">Login</button>
									</form>

									<h4>
										Don’t have account? please click <a href="register.html" style="color: green;">Register</a>
									</h4>

								</div>
							</div>


							<!-- Login With Social -->
							<div class="col-md-6 col-12 d-flex">
								<img
												src="<c:url value="/resources/images/pro/supermarket.gif"/>"
												alt="Strawberry" title="Strawberry" class="img-thumbnail">
								<!-- <div class="social-login">
									<h3>Also you can login with...</h3>

									<a href="#" class="facebook-login">Login with <i
										class="fab fa-facebook-f"></i></a> <a href="#"
										class="twitter-login">Login with <i class="fab fa-twitter"></i></a>
									<a href="#" class="google-plus-login">Login with <i
										class="fab fa-google-plus"></i></a>

								</div>  -->

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- =====  CONTAINER END  ===== -->
	<!-- =====  FOOTER START  ===== -->
	<div class="footer section pt-40">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 footer-block">
					<h4 class="footer-title py-2">Information</h4>
					<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Delivery Information</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms & Conditions</a></li>
						<li><a href="about.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-lg-3 footer-block">
					<h4 class="footer-title py-2">Services</h4>
					<ul>
						<li><a href="#">Returns</a></li>
						<li><a href="#">Site Map</a></li>
						<li><a href="#">Wish List</a></li>
						<li><a href="#">My Account</a></li>
						<li><a href="#">Order History</a></li>
					</ul>
				</div>
				<div class="col-lg-3 footer-block">
					<h4 class="footer-title py-2">Extras</h4>
					<ul>
						<li><a href="#">Brands</a></li>
						<li><a href="#">Gift Certificates</a></li>
						<li><a href="#">Affiliates</a></li>
						<li><a href="#">Specials</a></li>
						<li><a href="#">Newsletter</a></li>
					</ul>
				</div>
				<div class="col-lg-3 footer-block">
					<h4 class="footer-title py-2">Contacts</h4>
					<ul>
						<li class="add">Warehouse & Offices, 12345 Street name,
							California USA</li>
						<li class="phone">(+123) 456 789 <br> (+024) 666 888
						</li>
						<li class="email">Contact@yourcompany.com</li>
					</ul>
				</div>
			</div>
			<!-- =====  Newslatter ===== -->
			<div class="newsletters mt-30">
				<div class="news-head pull-left">
					<h2>Subscribe for our offer news</h2>
				</div>
				<div class="news-form pull-right">
					<form onsubmit="return validatemail();" method="post">
						<div class="form-group required">
							<input name="email" id="email" placeholder="Enter Your Email"
								class="form-control input-lg" required="" type="email">
							<button type="submit" class="btn btn-default btn-lg">Subscribe</button>
						</div>
					</form>
				</div>
			</div>
			<!-- =====  Newslatter End ===== -->
		</div>

		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-12 col-lg-4 mt-20">
						<div class="section_title">payment option</div>
						<div class="payment-icon text-center">
							<ul>
								<li><i class="fab fa-cc-paypal"></i></li>
								<li><i class="fab fa-cc-visa"></i></li>
								<li><i class="fab fa-cc-discover"></i></li>
								<li><i class="fab fa-cc-mastercard"></i></li>
								<li><i class="fab fa-cc-amex"></i></li>
							</ul>
						</div>
					</div>

					<div class="col-12 col-lg-4 mt-20">
						<div class="section_title">download app</div>
						<div class="app-download text-center">
							<ul class="app-icon">
								<li><a href="#" title="playstore"><img
										src="images/play-store.png" alt="playstore"
										class="img-responsive"></a></li>
								<li><a href="#" title="appstore"><img
										src="images/app-store.png" alt="appstore"
										class="img-responsive"></a></li>
							</ul>
						</div>
					</div>
					<div class="col-12 col-lg-4 mt-20">
						<div class="section_title">Social media</div>
						<div class="social_icon text-center">
							<ul>
								<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
								<li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
								<li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
								<li><a href="#"><i class="fab fa-twitter"></i></a></li>
								<li><a href="#"><i class="fas fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-12 ">
						<div class="copyright-part text-center pt-10 pb-10 mt-30">@
							2019 All Rights Reserved Bigmarket</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- =====  FOOTER END  ===== -->
	<a id="scrollup"></a>
	<script src="<c:url value="/resources/js/modernizr.js"/>"></script>
	<script src="<c:url value="/resources/js/jQuery_v3.1.1.min.js"/>"></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/resources/js/popper.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.magnific-popup.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.firstVisitPopup.js"/>"></script>
	<script src="<c:url value="/resources/js/custom.js"/>"></script>
	<script src="<c:url value="/resources/js/main.js"/>"></script>
</div>
</body>


<!-- Mirrored from html.lionode.com/bigmarket/bm002/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:07:34 GMT -->
</html>
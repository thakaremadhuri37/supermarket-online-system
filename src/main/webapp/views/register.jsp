<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="en">

<!-- Mirrored from html.lionode.com/bigmarket/bm002/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:07:34 GMT -->
<head>

<!-- =====  BASIC PAGE NEEDS  ===== -->
<meta charset="utf-8">
<title>Grocrey Supermarket</title>

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
	<div class="wrapper">


		<!-- =====  HEADER START  ===== -->
		<%@ include file="comman.jsp"%>

		<!-- =====  HEADER END  ===== -->
		<!-- =====  BREADCRUMB STRAT  ===== -->
		<div class="breadcrumb section pt-60 pb-60">
			<div class="container">
				<h1 class="uppercase">Register</h1>
				<ul>
					<li><a href="home"><i class="fa fa-home"></i></a></li>
					<li class="active">Register</li>
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

							<!-- register -->
							<div class="page-login section">
								<!-- =====  CONTAINER START  ===== -->
								<div class="container">
									<div class="row ">
										<div class="col-12 my-4">
											<div class="row">

												<!-- register -->
												<div class="col-md-6 col-12 d-flex">

													<div class="register">

														<h3>Registration to your account</h3>

														<!-- register Form -->
														<form action="register" method="post" name="reg"
															class="my-4" onsubmit="return check()">
															<div class="form-group">
																<input type="text" class="form-control"
																	id="name"
																	aria-describedby="exampleInputtext"
																	placeholder="Enter your name" name="username" required/>
																	<span id="name_error" style="color: red"></span>
															</div>
															<div class="form-group">
																<input type="email" class="form-control"
																	id="exampleInputemail"
																	aria-describedby="exampleInputemail"
																	placeholder="Enter your email" name="email" required>
															</div>
															<div class="form-group">
																<input type="password" class="form-control" value=""
																	id="password" placeholder="Password" name="password"
																	required /><span id="pass_msg" style="color: red"></span>
															</div>
															<div class="form-group">
																<input type="password" class="form-control"
																	id="confirmpassword" value=""
																	placeholder="Conform password" name="confirmpassword"
																	required><span id="pass_msg"></span>
															</div>
															<button type="submit" class="btn mt-10">register</button>
														</form>

														<h4>
															You have account? please click <a href="login">Login</a>
														</h4>

													</div>
												</div>


												<!-- Login With Social -->
												<div class="col-md-6 col-12 d-flex">


													<img
														src="<c:url value="/resources/images/pro/supermarket.gif"/>"
														alt="Strawberry" title="Strawberry" class="img-thumbnail">
												</div>

											</div>

										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- =====  CONTAINER END  ===== -->
		
		
		<%@include file="commanFooter.jsp" %>
		
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
</body>


<!-- Mirrored from html.lionode.com/bigmarket/bm002/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:07:34 GMT -->
</html>
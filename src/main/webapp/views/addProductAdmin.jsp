<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="en">

<!-- Mirrored from html.lionode.com/bigmarket/bm002/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:07:34 GMT -->
<head>

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
	<div class="wrapper">


		<%@ include file="comman.jsp"%>

		<!-- =====  BREADCRUMB STRAT  ===== -->
		<div class="breadcrumb section pt-60 pb-60">
			<div class="container">
				<h1 class="uppercase">Add Product</h1>
				<ul>
					<li><a href="home"><i class="fa fa-home"></i></a></li>
					<li class="active">product Dashboard</li>
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

														<h3>!!Add New Product!!</h3>

														<!-- register Form -->
														<form action="addProduct" method="post" name="addProduct"
															enctype="multipart/form-data">
															<div class="form-group">
																<input type="text" class="form-control" id="productName"
																	aria-describedby="exampleInputtext"
																	placeholder="Enter Product name" name=name required>
															</div>
															<div class="form-group">
																<!-- <input type="number" class="form-control"
																	id="productPrice"
																	aria-describedby="exampleInputemail"
																	placeholder="Enter price" name="price" required> -->
																<input type="number" class="form-control"
																	placeholder="Enter price" min="0" value="" step="any"
																	required name="price">
															</div>

															<div class="form-group">
																<select name="catagoryId" class="form-control"
																	id="catagory" required="required">
																	<option value="" disabled selected>Select the
																		category</option>
																	<c:forEach var="category" items="${categorylist}">
																		<option value="${category.categoryid}">${category.name}</option>

																	</c:forEach>
																</select>
															</div>

															<div class="form-group">
																<input type="file" class="form-control" value=""
																	id="productImagename" placeholder="Enter imagename.jpg"
																	name="file" required />
															</div>

															Display Product on Home Page:<br> <input
																type="radio" id="showOnHome" name="showOnHome" value="Y">
															<label for="showOnHome">yes</label> <input type="radio"
																id="age2" name="showOnHome" value="N"> <label>No</label><br>

															<button type="submit" class="btn mt-10">Add</button>
														</form>



													</div>
												</div>


												<br> <br>







												<h1>
													<a href="showallproducts" class="btn mt-10"
														style="color: red;font-size: large;border: 2px solid black;width:20;">Show
														All Products</a>
												</h1>&nbsp;&nbsp;
												<h1>
													<a href="showallorders" class="btn mt-10"
														style="color: red;font-size: large;width:20;border: 2px solid black;">Show
														All Orders</a>
														
												</h1><h1>
												
													<a href="showallusers" class="btn mt-10"
														style="color: red;font-size:large;width:20; border: 2px solid black;">Show
														All Users</a>
												</h1>


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
			<!-- =====  FOOTER START  ===== -->
			<div class="footer section pt-40">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 footer-block">
							<h4 class="footer-title py-2">Information</h4>
							<ul>
								<li><a href="about">About Us</a></li>
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
								<li class="add">Jaylaxmi Supermarket</li>
						<li class="phone">9673961258
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
							<form method="post">
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
			<script
				src="<c:url value="/resources/js/jquery.firstVisitPopup.js"/>"></script>
			<script src="<c:url value="/resources/js/custom.js"/>"></script>
			<script src="<c:url value="/resources/js/main.js"/>"></script>
</body>


<!-- Mirrored from html.lionode.com/bigmarket/bm002/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:07:34 GMT -->
</html>
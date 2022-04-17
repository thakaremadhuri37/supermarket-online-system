<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="no-js" lang="en">

<!-- Mirrored from html.lionode.com/bigmarket/bm002/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:02:57 GMT -->
<head>

<!-- =====  BASIC PAGE NEEDS  ===== -->
<meta charset="utf-8">
<title>Grocery-Supermarket</title>

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

		<!-- Modal -->
		<div id="subscribe-me-" class="modal animated" role="dialog"
			data-keyboard="true" tabindex="-1">
			<div class="newsletter-popup row align-items-center py-4  px-2">
				<img src="<c:url value="/resources/images/newsbg.html" /> alt="
					offer"
					class="offer col d-none d-sm-block">
				<div class="col-auto newsletter-popup-static newsletter-popup-top">
					<div class="popup-text">
						<div class="popup-title">
							50% <span>off</span>
						</div>
						<div class="popup-desc mb-30">
							<div>Sign up and get 50% off your next Order</div>
						</div>
					</div>
					<form method="post">
						<div class="form-group required">
							<input type="email" name="email-popup" id="email-popup"
								placeholder="Enter Your Email" class="form-control input-lg"
								required="">
						</div>
						<div class="form-group required">
							<button type="submit" class="btn" id="email-popup-submit">Subscribe</button>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input" id="checkme">
							<label class="form-check-label" for="checkme">Dont show
								again</label>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Modal End -->

		<!-- =====  Nav START  ===== -->


		<!-- =====  HEADER START  ===== -->
		<%@ include file="comman.jsp"%>

		<!-- =====  HEADER END  ===== -->


		<!-- =====  BREADCRUMB STRAT  ===== -->
		<div class="breadcrumb section pt-60 pb-60 mb-30">
			<div class="container">
				<h1 class="uppercase">Grocery & Staples</h1>
				<ul>
					<li><a href="home"><i class="fa fa-home"></i></a></li>
					<li class="active">Grocery & Staples</li>
				</ul>
			</div>
		</div>

		<!-- =====  BREADCRUMB END===== -->

		<div class="product-section section">
			<!-- =====  CONTAINER START  ===== -->
			<div class="container">
				<div class="row">
					<div class="col-12 mb-20">
						<form id="productFormId" name="productForm"
							onsubmit="return cartNumbers2(event)">

							<div class="row mt_10 ">
								<%--            <c:forEach var="productDetail" items="${productbean}">
 --%>
								<div class="col-md-5">
									<div>
										<a class="thumbnails"> <img data-name="product_image"
											src=" <c:url value="/resources/images/pro/${productbean.imagename }"/>"
											alt="" height="300px" width="300px" /></a>
									</div>

								</div>


								<div class="col-md-7 prodetail caption">
									<h4 data-name="product_name" class="product-name">${productbean.name}</h4>
									<div class="rating mt-5 mb-5">
										<span class="fa fa-stack"><i
											class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
											class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
											class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
											class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i
											class="fa fa-star fa-stack-x"></i></span>
									</div>
									<span class="price mb-20"><span class="amount"><span
											class="currencySymbol">&#x20B9 ${productbean.price}</span></span> </span>
									<hr>
									<ul class="list-unstyled product_info my-3">
										<li><label>Brand:</label> <span> <a href="#">${productbean.name}</a></span></li>

										<li><label>Availability:</label> <span> In Stock</span></li>
									</ul>
									<hr>

									<div id="product">

										<div class="qty mt-30 form-group">
											<label>Qty</label> <input min="1" value="1" type="number"
												name="quantity">
										</div>
										<input type="hidden"
											value='{"id":"${productbean.id}", "name":"${productbean.name}", "price":${productbean.price}, "imagename":"${productbean.imagename}"}'
											name="productDetails" />
										<div class="button-group mt-30">
											<div class="add-to-cart" data-toggle="tooltip" title=""
												data-original-title="Add to cart">
												<a href="#">
													<button type="submit"
														value='{"id":${productbean.id}, "name":"${productbean.name}", "price":${productbean.price}, "imagename":"${product.imagename}"}'
														class="addtocart pull-right">Add</button>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
</div>
		<!-- =====  CONTAINER END  ===== -->


	<!-- =====  FOOTER START  ===== -->
	<%@include file="commanFooter.jsp"%>
	
	<!-- =====  FOOTER END  ===== -->
	</div>
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
</html>
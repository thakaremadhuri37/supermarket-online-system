<!doctype html>
<html class="no-js" lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Mirrored from html.lionode.com/bigmarket/bm002/category_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:07:04 GMT -->
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
<%--  <link rel="stylesheet" href="<c:url value="/resources/css/all.css"/> integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
 --%>
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
<link rel="stylesheet"
	href="<c:url value="/resources/css/jquery-ui.css"/>" />

<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.png" />" />
<link rel="apple-touch-icon"
	href="<c:url value="/resources/images/apple-touch-icon.html" />" />
<link rel="apple-touch-icon" sizes="72x72"
	href="<c:url value="/resources/images/apple-touch-icon-72x72.html" />" />
<link rel="apple-touch-icon" sizes="114x114"
	href="<c:url value="/resources/images/apple-touch-icon-114x114.html"/>" />

<style>
.zoom:hover {
	-ms-transform: scale(1.1); /* IE 9 */
	-webkit-transform: scale(1.1); /* Safari 3-8 */
	transform: scale(1.1);
}
</style>
</head>

<body onload="homePageOnLoad()">
	<!-- =====  LODER  ===== -->
	<div class="loder"></div>
	<div class="wrapper">

	
		<%@ include file="comman.jsp"%>

	
		<!-- =====  HEADER END  ===== -->
		<!-- =====  BREADCRUMB STRAT  ===== -->
		<div class="breadcrumb section pt-60 pb-60">
			<div class="container">
				<h1 class="uppercase">Gdrocery & Staples</h1>
				<ul>
					<li><a href="home"><i class="fa fa-home"></i></a></li>
					<li class="active">Grocery & Staples</li>
				</ul>
			</div>
		</div>
		<!-- =====  BREADCRUMB END===== -->
		<div class="product-section section mt-30">
			<!-- =====  CONTAINER START  ===== -->
			<div class="container">
				<div class="row">

					<div class="col-lg-9 col-xl-9 col-sm-8"
						style="flex: 0 0 100%; max-width: 100%;">

						<div class="row">


							<c:forEach var="category" items="${productlist}">

								<div class="product-layout  product-grid col-lg-3 col-6 ">
									<div class="item">
										<div class="product-thumb transition">
											<div class="image">
												<div class="first_image">

													 <a href="product?id=${category.id}" >  <img
														src="<c:url value="/resources/images/pro/${category.imagename}"/>"
														alt="pure-spice-3" title="pure-spice-3"
														class="img-responsive">
													</a>
												</div>
												<!--                     <div class="swap_image"> <a href="product_detail_page.html"> <img src="images/pro/015.jpg" alt="pure-spice-3" title="pure-spice-3" class="img-responsive"> </a></div>
 -->
											</div>
											<div class="product-details">
												<div class="caption">
													<h4>
														<a href="product?${category.id}"> ${category.name}</a>
													</h4>
													<p class="price">
														&#x20B9 ${category.price}<span class="price-tax">Ex
															Tax: $7.25</span>
													</p>

													<div class="product_option">
											<form id="productFormId" name="productForm"
															onsubmit="return cartNumbers2(event)" method="post">

															<div class="input-group button-group">
																<label class="control-label">Qty</label> <input
																	type="number" name="quantity" min="1" value="1"
																	step="1" class="qty form-control" /> <input
																	type="hidden"
																	value='{"id":${category.id}, "name":"${category.name}", "price":${category.price}, "imagename":"${category.imagename}"}'
																	name="productDetails" />

																<button type="submit" class="addtocart pull-right">Add</button>
															</div>
														</form>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>

							</c:forEach>

						</div>

						<!-- <div class="pagination-nav text-center mt-50">
							<ul>
								<li><a href="#"><i class="fas fa-angle-double-left"></i></a></li>
								<li><a href="#"><i class="fas fa-angle-left"></i></a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#"><i class="fas fa-angle-right"></i></a></li>
								<li><a href="#"><i class="fas fa-angle-double-right"></i></a></li>
							</ul>
						</div> -->
					</div>
				</div>
			</div>
			<!-- =====  CONTAINER END  ===== -->

		</div>
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
	</div>
	<a id="scrollup"></a>
	<!-- <script src="js/modernizr.js"></script>
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>  
  <script src="js/custom.js"></script>
  <script src="js/jquery-ui.js"></script> -->

	<script src="<c:url value="/resources/js/modernizr.js"/>"></script>
	<script src="<c:url value="/resources/js/jQuery_v3.1.1.min.js"/>"></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/resources/js/popper.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.magnific-popup.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.firstVisitPopup.js"/>"></script>
	<script src="<c:url value="/resources/js/custom.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery-ui.js"/>"></script>
	<script src="<c:url value="/resources/js/main.js"/>"></script>


	<script>
		$(function() {
			$("#slider-range")
					.slider(
							{
								range : true,
								min : 0,
								max : 500,
								values : [ 75, 300 ],
								slide : function(event, ui) {
									$("#amount").val(
											"$" + ui.values[0] + " - $"
													+ ui.values[1]);
								}
							});
			$("#amount").val(
					"$" + $("#slider-range").slider("values", 0) + " - $"
							+ $("#slider-range").slider("values", 1));
		});
	</script>
</body>


<!-- Mirrored from html.lionode.com/bigmarket/bm002/category_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:07:33 GMT -->
</html>
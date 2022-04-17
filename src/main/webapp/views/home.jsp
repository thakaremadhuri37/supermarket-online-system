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
<style >
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





		<!-- =====  HEADER START  ===== -->
		<%@ include file="comman.jsp"%>

		<!-- =====  HEADER END  ===== -->

		<!-- =====  BANNER STRAT  ===== -->
		<div class="banner section">
			<div class="main-banner owl-carousel">
				<div class="item" >
					<a href="categorypage?categoryid=4"><img
						src="<c:url value="/resources/images/banner/banner1.jpg"/>"
						alt="Main Banner" class="img-responsive" /></a>
				</div>
				<div class="item">
					<a href="categorypage?categoryid=5"><img
						src="<c:url value="/resources/images/banner/banner2.jpg"/>"
						alt="Main Banner" class="img-responsive" /></a>
				</div>

			</div>
		</div>

		<!-- =====  CONTAINER START  ===== -->
		<div class="container"><br>
		
			<!-- =====  SUB BANNER  STRAT ===== -->
			<div class="subbanner-section section mt-20">
				<div class="owl-carousel banner-carousel">
					<div class="home-subbanner">
						<div class="home-img">
							<a href="categorypage?categoryid=8"><img class="leftbanner"
								src="<c:url value="/resources/images/sub-banner1.jpg"/>"
								alt="sub-banner1"></a>
						</div>
						<div class="cms-desc">
							<div class="cms-text1">
								Get <b>Dal</b>
							</div>
							<div class="cms-text2">@ 50%</div>
							<div class="cms-text3">Shop for ₹500</div>
						</div>
					</div>
					<div class="home-subbanner">
						<div class="home-img">
							<a href="categorypage?categoryid=1"><img class="leftbanner"
								src="<c:url value="/resources/images/sub-banner2.jpg" />"
								alt="sub-banner1"></a>
						</div>
						<div class="cms-desc">
							<div class="cms-text1">
								Get <b>products</b>
							</div>
							<div class="cms-text2">@ 50%</div>
							<div class="cms-text3">Discounts</div>
						</div>
					</div>
					<div class="home-subbanner">
						<div class="home-img">
							<a href="categorypage?categoryid=1"><img class="leftbanner"
								src="<c:url value="/resources/images/sub-banner3.jpg"/>"
								alt="sub-banner1"></a>
						</div>
						<div class="cms-desc">
							<div class="cms-text1">
								Get <b>Chana dal</b>
							</div>
							<div class="cms-text2">@ ₹20</div>
							<div class="cms-text3">Shop for ₹500</div>
						</div>
					</div>
				</div>
			</div>
			<!-- =====  SUB BANNER END  ===== -->
			<!-- =====  PRODUCT CATEGORY START  ===== -->


			<div class="category-banner-block">
				<div class="section_title">top categories</div>



				<div class="row">
					<c:forEach var="category" items="${categorylist}">

						<div class="product-layout col-lg-2 col-md-3 col-sm-4 col-6">
							<div class="product-thumb transition text-center">
								<div class="caption categoryname">
									<h4>
										<a href="categorypage?categoryid=${category.categoryid}">${category.name}</a>
									</h4>
								</div>
								<div class="image">
									<a href="categorypage?categoryid=${category.categoryid}" class="zoom" > <%-- <a href="categorypage?categoryid=${catagory.categoryid}"> --%>
										<img
										src="<c:url value="/resources/images/${category.imagename}"/>"
										alt="Del Monte Beets" title="Del Monte Beets"
										class="img-responsive"></a>
								</div>
							</div>

						</div>
					</c:forEach>
				</div>

				<!-- =====  PRODUCT CATEGORY END  ===== -->
			



				<!-- =====  PRODUCT section  ===== -->
				<div class="category_product section">
					<div class="row">
						<div class="col-12">
							<div class="section_title">Fruits store</div>
						</div>
						<div class="col-sm-3 productcategory_thumb text-center mb-15">
							<img src="<c:url value="/resources/images/14.jpg"/>" alt=""
								title="" class="img-thumbnail">
						</div>
						<div class="col-sm-9 right_block">
							<div class="row">
								<div class="product-layout col-lg-4 col-md-4 col-sm-4 col-6">
									<div class="product-thumb transition">
										<p class="tag">
											11<br> % <br> <i>off</i>
										</p>
										<h4 class="zoom">
											<a href="categorypage?categoryid=6">Apple</a>
										</h4>
										<div class="image">
											<a href="categorypage?categoryid=6"><img
												src="<c:url value="/resources/images/12.jpg"/>" alt="Apple"
												title="Apple" class="img-thumbnail"></a>
										</div>
									</div>
								</div>
								<div class="product-layout col-lg-4 col-md-4 col-sm-4 col-6">
									<div class="product-thumb transition">

										<h4>
											<a href="categorypage?categoryid=6">Strawberry</a>
										</h4>
										<div class="image">
											<a href="categorypage?categoryid=6"><img
												src="<c:url value="/resources/images/11.jpg"/>"
												alt="Strawberry" title="Strawberry" class="img-thumbnail"></a>
										</div>
									</div>
								</div>
								<div class="product-layout col-lg-4 col-md-4 col-sm-4 col-6">
									<div class="product-thumb transition">
										<h4>
											<a href="categorypage?categoryid=6">Pineapple</a>
										</h4>
										<div class="image">
											<a href="categorypage?categoryid=6"><img
												src="<c:url value="/resources/images/10.jpg"/>"
												alt="Pineapple" title="Pineapple" class="img-thumbnail"></a>
										</div>
									</div>
								</div>
								<div class="product-layout col-lg-4 col-md-4 col-sm-4 col-6">
									<div class="product-thumb transition">
										<p class="tag">
											20<br> % <br> <i>off</i>
										</p>
										<h4>
											<a href="categorypage?categoryid=6" class="zoom">Banana</a>
										</h4>
										<div class="image">
											<a href="categorypage?categoryid=6"><img
												src="<c:url value="/resources/images/09.jpg"/>" alt="Banana"
												title="Banana" class="img-thumbnail"></a>
										</div>
									</div>
								</div>
								<div class="product-layout col-lg-4 col-md-4 col-sm-4 col-6">
									<div class="product-thumb transition">
										<h4>

											<a href="categorypage?categoryid=6">Orange</a>
										</h4>
										<div class="image">
											<a href="categorypage?categoryid=6"><img
												src="<c:url value="/resources/images/08.jpg"/>" alt="Orange"
												title="Orange" class="img-thumbnail"></a>
										</div>
									</div>
								</div>
								<div class="product-layout col-lg-4 col-md-4 col-sm-4 col-6">
									<div class="product-thumb transition">

										<h4>
											<a href="categorypage?categoryid=6">Greps</a>
										</h4>
										<div class="image">
											<a href="categorypage?categoryid=6"><img
												src="<c:url value="/resources/images/07.jpg"/>" alt="Greps"
												title="Greps" class="img-thumbnail"></a>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>

				<!-- =====  featured section  ===== -->
				<div class="featured_product section mt-30">
					<div class="row">
						<div class="col-12">
							<div class="section_title">Featured Products</div>
						</div>
						<div class="section-product grid section">
							<!--start -->
							<c:forEach var="product" items="${productlist}">
								<form id="productFormId" name="productForm"
									onsubmit="return cartNumbers2(event)">
									<div class=" product-items col-6 col-sm-4 col-md-4 col-lg-3">
										<div class="product-thumb transition">
											<div class="image">
												<a href="product?id=${product.id}"class="zoom" > <img
													src="<c:url value="/resources/images/pro/${product.imagename}"/>"
													alt="pure-spice-3" title="pure-spice-3"
													class="img-responsive" height="170" width="170">
												</a>
												<!-- </div> -->
											</div>
											<div class="product-details">
												<div class="caption">
													<h4>
														<a id="productName" href="product/${product.id}">${product.name}</a>
													</h4>
													<div id="productPrice" class="price">₹
														${product.price}</div>
													<div class="product_option">
														<!-- <br>  -->

														<div class="input-group button-group">
															<label class="control-label">Qty</label> <input
																id="totalQty" type="number" value="1" name="quantity"
																min="1" step="1" class="qty form-control"> <input
																type="hidden"
																value='{"id":${product.id}, "name":"${product.name}", "price":${product.price}, "imagename":"${product.imagename}"}'
																name="productDetails" />
															<button type="submit"
																value='{"id":${product.id}, "name":"${product.name}", "price":${product.price}, "imagename":"${product.imagename}"}'
																class="addtocart pull-right">Add</button>

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</form>
							</c:forEach>
						</div>
					</div>

				</div>
			</div>
			<!-- =====  featured section end ===== -->
	<!-- =====  SEARVICES START  ===== -->
				<div class="shipping-outer section">
					<div class="shipping-inner row">
						<div class="heading col-lg-3 col-12 text-center text-lg-left">
							<h2>Why choose us?</h2>
						</div>
						<div
							class="subtitle-part subtitle-part1 col-lg-3 col-4 text-center text-lg-left">
							<div class="subtitle-part-inner">
								<div class="subtitile">
									<div class="subtitle-part-image"></div>
									<div class="subtitile1">On time delivery</div>
									<div class="subtitile2">15% back if not able</div>
								</div>
							</div>
						</div>
						<div
							class="subtitle-part subtitle-part2 col-lg-3 col-4 text-center text-lg-left">
							<div class="subtitle-part-inner">
								<div class="subtitile">
									<div class="subtitle-part-image"></div>
									<div class="subtitile1">Free delivery</div>
									<div class="subtitile2">Order over $ 200</div>
								</div>
							</div>
						</div>
						<div
							class="subtitle-part subtitle-part3 col-lg-3 col-4 text-center text-lg-left">
							<div class="subtitle-part-inner">
								<div class="subtitile">
									<div class="subtitle-part-image"></div>
									<div class="subtitile1">Quality assurance</div>
									<div class="subtitile2">You can trust us</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- SEARVICES END  -->

			<div class="category_product section category_product2 mt-30">
				<div class="row">
					<div class="col-12">
						<div class="section_title">Grocery & Staples</div>
					</div>

					<div>
						<img src="<c:url value="/resources/images/bannerbottom1.jpg"/>"
							alt="" title="" class="img-thumbnail" height="880px">
					</div>
				</div>
			</div>
		</div>
		<br> <br>
		<%@ include file="commanFooter.jsp"%>
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
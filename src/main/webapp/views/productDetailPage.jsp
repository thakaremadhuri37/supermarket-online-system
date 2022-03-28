<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="no-js" lang="en">

<!-- Mirrored from html.lionode.com/bigmarket/bm002/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:02:57 GMT -->
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
					<form onsubmit="return  validatpopupemail();" method="post">
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
		<nav id="top">
			<div class="container">
				<div class="row">
					<span class="responsive-bar"><i class="fa fa-bars"></i></span>
					<div class="header-middle-outer closetoggle">
						<div id="responsive-menu"
							class="nav-container1 nav-responsive navbar">
							<div class="navbar-collapse navbar-ex1-collapse collapse">
								<ul class="nav navbar-nav">
									<li class="collapsed" data-toggle="collapse"
										data-target="#GroceryampStaples"><a href="#">Grocery
											Staples</a> <span><i class="fa fa-plus"></i></span>
										<ul class="menu-dropdown collapse" id="GroceryampStaples">
											<li class="dropdown"><a href="category_page.html">Daal
													Pulses</a>
												<ul class="list-unstyled childs_2">
													<li><a href="category_page.html">Arhar</a></li>
													<li><a href="category_page.html">Masoor</a></li>
													<li><a href="category_page.html">Moong</a></li>
													<li><a href="category_page.html">Rajma Chana</a></li>
													<li><a href="category_page.html">Urad</a></li>
												</ul></li>
											<li class="dropdown"><a href="5.html">Dry Fruits
													Nuts</a>
												<ul class="list-unstyled childs_2">
													<li><a href="category_page.html">Akhrot Figs</a></li>
													<li><a href="category_page.html">Almonds Cashews</a></li>
													<li><a href="category_page.html">Nuts Seeds</a></li>
													<li><a href="category_page.html">Other Dry Fruits</a></li>
												</ul></li>
											<li class="dropdown"><a href="6.html">Edible Oils</a>
												<ul class="list-unstyled childs_2">
													<li><a href="category_page.html">Groundnut Coconut
															Oil</a></li>
													<li><a href="category_page.html">Health Oils</a></li>
													<li><a href="category_page.html">Mustard Oils</a></li>
													<li><a href="category_page.html">Soyabean Oils</a></li>
													<li><a href="category_page.html">Sunflower Oils</a></li>
												</ul></li>
											<li class="dropdown"><a href="2.html">Riced
													cauliflower</a>
												<ul class="list-unstyled childs_2">
													<li><a href="category_page.html">Basmati</a></li>
													<li><a href="category_page.html">Millet Others</a></li>
													<li><a href="category_page.html">Poha</a></li>
													<li><a href="category_page.html">Sonamasuri Kolam</a></li>
												</ul></li>
											<li>
												<div class="menu-image">
													<img
														src="../../../opencart.lionode.com/bigmarket/oc012019/oc01/image/cache/catalog/13-281x391.jpg"
														alt="" title="" class="img-thumbnail">
												</div>
											</li>
										</ul></li>
									<li class="collapsed" data-toggle="collapse"
										data-target="#PersonalCare"><a href="#">Personal Care</a>
										<span><i class="fa fa-plus"></i></span>
										<ul class="menu-dropdown collapse" id="PersonalCare">
											<li class="main_cat"><a href="category_page.html">Deos
													Perfumes</a></li>
											<li class="main_cat"><a href="category_page.html">Hair
													Care</a></li>
										</ul></li>
									<li class="collapsed" data-toggle="collapse"
										data-target="#Biscuits,SnacksampChocolates"><a href="#">Biscuits,
											Snacks Chocolates</a> <span><i class="fa fa-plus"></i></span>
										<ul class="menu-dropdown collapse"
											id="Biscuits,SnacksampChocolates">
											<li class="main_cat"><a href="category_page.html">Biscuits
													Cookies</a></li>
											<li class="main_cat"><a href="category_page.html">Chips
													Crisps</a></li>
										</ul></li>
									<li class="collapsed" data-toggle="collapse"
										data-target="#HouseholdNeeds"><a href="#">Household
											Needs</a> <span><i class="fa fa-plus"></i></span>
										<ul class="menu-dropdown collapse" id="HouseholdNeeds">
											<li class="main_cat"><a href="category_page.html">Cleaning
													Tools Brushes</a></li>
											<li class="main_cat"><a href="category_page.html">Home
													Car Fresheners</a></li>
										</ul></li>
									<li class="collapsed" data-toggle="collapse"
										data-target="#BreakfastampDairy"><a href="#">Breakfast
											Dairy</a> <span><i class="fa fa-plus"></i></span>
										<ul class="menu-dropdown collapse" id="BreakfastampDairy">
											<li class="main_cat"><a href="category_page.html">Breakfast
													Cereal Mixes</a></li>
											<li class="main_cat"><a href="category_page.html">Paneer
													Curd</a></li>
										</ul></li>
									<li><a href="#">Fruits store</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<!-- =====  Nav END  ===== -->

		<!-- =====  HEADER START  ===== -->
		<%@ include file="comman.jsp" %>
		<%-- <header id="header" class="section">
			<div class="container">
				<div class="header-top py-1">
					<div class="row align-items-center">
						<div class="col-md-6">
				<!-- 			<ul class="header-top-left pull-left">
								<li class="language dropdown px-2"><span
									class="dropdown-toggle" id="dropdownMenu1"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false" role="button">Language <span
										class="caret"></span>
								</span>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="#">English</a></li>
										<li><a href="#">French</a></li>
										<li><a href="#">German</a></li>
									</ul></li>
								<li class="currency dropdown pr-2"><span
									class="dropdown-toggle" id="dropdownMenu12"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false" role="button">Currency <span
										class="caret"></span>
								</span>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu12">
										<li><a href="#">â¬ Euro</a></li>
										<li><a href="#">Â£ Pound Sterling</a></li>
										<li><a href="#">$ US Dollar</a></li>
									</ul></li>
							</ul> -->
						</div>
						<div class="col-md-6">
							<ul class="header-top-right pull-right">
								<li class="telephone"><a href="#"><i
										class="fa fa-phone"></i> +91 9673961258</a></li>
								<li class="login"><a href="login.html"><i
										class="fa fa-user"></i>Login</a></li>
								<li class="register"><a href="register.html">Signup</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="header section pt-15 pb-15">
				<div class="container">
					<div class="row">
						 <div class="navbar-header col-2 header-bottom-left">
						 <a class="navbar-brand" href="index-2.html"> <img
								alt="Bigmarket"
								src="<c:url value="/resources/images/logo2.png"/>" width="100px" /> 
							</a> 
						
						</div> 
						
						<div class="col-10 header-bottom-right">
							<div class="header-menu">
								<div class="responsive-menubar-block">
									<span>Shop By<br> Category
									</span> <span class="menu-bar collapsed"
										data-target=".navbar-ex1-collapse" data-toggle="collapse"><i
										class="fa fa-bars"></i></span>
								</div>
								<nav id="menu" class="navbar">
									<div class="collapse navbar-collapse navbar-ex1-collapse">
										<ul class="nav navbar-nav main-navigation">
											<li class="main_cat dropdown active"><a
												href="category_page.html">Grocery & Staples</a>
												<div class="dropdown-menu megamenu column4">
													<div class="dropdown-inner">
														<ul class="list-unstyled childs_1">

															<!-- 2 Level Sub Categories START -->
															<li class="dropdown active"><a
																href="category_page.html">Daal & Pulses</a>
																<div class="dropdown-menu">
																	<div class="dropdown-inner">
																		<ul class="list-unstyled childs_2">
																			<li class="active"><a href="category_page.html">Arhar</a></li>
																			<li><a href="category_page.html">Masoor</a></li>
																			<li><a href="category_page.html">Moong</a></li>
																			<li><a href="category_page.html">Rajma &
																					Chana</a></li>
																			<li><a href="category_page.html">Urad</a></li>
																		</ul>
																	</div>
																</div></li>

															<!-- 2 Level Sub Categories END -->
														</ul>
														<ul class="list-unstyled childs_1">

															<!-- 2 Level Sub Categories START -->
															<li class="dropdown active"><a
																href="category_page.html">Dry Fruits & Nuts</a>
																<div class="dropdown-menu">
																	<div class="dropdown-inner">
																		<ul class="list-unstyled childs_2">
																			<li class="active"><a href="category_page.html">Akhrot
																					& Figs</a></li>
																			<li><a href="category_page.html">Almonds &
																					Cashews</a></li>
																			<li><a href="category_page.html">Nuts &
																					Seeds</a></li>
																			<li><a href="category_page.html">Other Dry
																					Fruits</a></li>
																		</ul>
																	</div>
																</div></li>

															<!-- 2 Level Sub Categories END -->
														</ul>
														<ul class="list-unstyled childs_1">

															<!-- 2 Level Sub Categories START -->
															<li class="dropdown active"><a href="#">Edible
																	Oils</a>
																<div class="dropdown-menu">
																	<div class="dropdown-inner">
																		<ul class="list-unstyled childs_2">
																			<li class="active"><a href="category_page.html">Groundnut
																					& Coconut Oil</a></li>
																			<li><a href="category_page.html">Health Oils</a></li>
																			<li><a href="category_page.html">Mustard
																					Oils</a></li>
																			<li><a href="category_page.html">Soyabean
																					Oils</a></li>
																			<li><a href="category_page.html">Sunflower
																					Oils</a></li>
																		</ul>
																	</div>
																</div></li>

															<!-- 2 Level Sub Categories END -->
														</ul>
														<ul class="list-unstyled childs_1">

															<!-- 2 Level Sub Categories START -->
															<li class="dropdown active"><a
																href="category_page.html">Riced cauliflower</a>
																<div class="dropdown-menu">
																	<div class="dropdown-inner">
																		<ul class="list-unstyled childs_2">
																			<li class="active"><a href="category_page.html">Basmati</a></li>
																			<li><a href="category_page.html">Millet &
																					Others</a></li>
																			<li><a href="category_page.html">Poha</a></li>
																			<li><a href="category_page.html">Sonamasuri
																					& Kolam</a></li>
																		</ul>
																	</div>
																</div></li>

															<!-- 2 Level Sub Categories END -->
														</ul>
														<div class="menu-image">
															<img src="images/13.jpg" alt="" title=""
																class="img-thumbnail">
														</div>
													</div>
												</div></li>
											<li class="main_cat dropdown"><a
												href="category_page.html">Personal Care</a>
												<div class="dropdown-menu megamenu column1">
													<div class="dropdown-inner">
														<ul class="list-unstyled childs_1">

															<!-- 2 Level Sub Categories START -->
															<li class="main_cat active"><a
																href="category_page.html">Deos & Perfumes</a></li>
															<li class="main_cat"><a href="category_page.html">Hair
																	Care</a></li>

															<!-- 2 Level Sub Categories END -->
														</ul>
													</div>
												</div></li>
											<li class="main_cat dropdown"><a
												href="category_page.html">Biscuits, Snacks & Chocolates</a>
												<div class="dropdown-menu megamenu column1">
													<div class="dropdown-inner">
														<ul class="list-unstyled childs_1">

															<!-- 2 Level Sub Categories START -->
															<li class="main_cat active"><a
																href="category_page.html">Biscuits & Cookies</a></li>
															<li class="main_cat"><a href="#">Chips & Crisps</a>
															</li>

															<!-- 2 Level Sub Categories END -->
														</ul>
													</div>
												</div></li>
											<li class="main_cat dropdown"><a
												href="category_page.html">Household Needs</a>
												<div class="dropdown-menu megamenu column1">
													<div class="dropdown-inner">
														<ul class="list-unstyled childs_1">

															<!-- 2 Level Sub Categories START -->
															<li class="main_cat active"><a
																href="category_page.html">Cleaning Tools & Brushes</a></li>
															<li class="main_cat"><a href="category_page.html">Home
																	& Car Fresheners</a></li>

															<!-- 2 Level Sub Categories END -->
														</ul>
													</div>
												</div></li>
											<li class="main_cat dropdown"><a
												href="category_page.html">Breakfast & Dairy</a>
												<div class="dropdown-menu megamenu column1">
													<div class="dropdown-inner">
														<ul class="list-unstyled childs_1">

															<!-- 2 Level Sub Categories START -->
															<li class="main_cat active"><a
																href="category_page.html">Breakfast Cereal & Mixes</a></li>
															<li class="main_cat"><a href="category_page.html">Paneer
																	& Curd</a></li>

															<!-- 2 Level Sub Categories END -->
														</ul>
													</div>
												</div></li>
											<li class="main_cat thumb"><a href="category_page.html">Fruits
													store </a>
												<div class="dropdown-menu">
													<div class="dropdown-inner">
														<img src="#" alt="" title="" class="img-thumbnail">
													</div>
												</div></li>
										</ul>
									</div>
								</nav>
							</div>
							<div class="header-link-search">
								<div class="header-search">
									<div class="actions">
										<button type="submit" title="Search" class="action search"
											id="head-search"></button>
									</div>
									<div id="search" class="input-group">
										<input type="text" id="search-input" name="search" value=""
											placeholder="Search" class="form-control input-lg"
											autocomplete="off"> <span class="input-group-btn">
											<button type="button" class="btn btn-default btn-lg">Search</button>
										</span>
									</div>
								</div>
								<!-- <div class="header-link">
									<ul class="list-unstyled">
										<li><a href="#">Bm offers</a></li>
										<li><a href="#">Bm express</a></li>
										<li><a href="#">Bm speciality</a></li>
										<li><a href="#">Bm store</a></li>
									</ul>
								</div> -->
							</div>
							<div class="shopcart">
								<div id="cart" class="btn-block mt-40 mb-30 ">
									<button type="button" class="btn" data-target="#cart-dropdown"
										data-toggle="collapse" aria-expanded="true">
										<span id="shippingcart">My basket</span><span id="cart-total">
											0</span>
									</button>
									<a href="cart_page.html" class="cart_responsive btn"><span
										id="cart-text">My basket</span><span id="cart-total-res">1</span>
									</a>
								</div>
								<div id="cart-dropdown" class="cart-menu collapse">
									<ul>
										<li>
											<table class="table table-striped">
												<tbody id="myItemCart">

													<!-- 	<tr>
														<td class="text-center"><a href="#"><img
																src="images/pro/70x70_1.jpg" alt="iPod Classic"
																title="iPod Classic"></a></td>
														<td class="text-left product-name"><a href="#">MacBook
																Pro</a> <span class="text-left price">$20.00</span> <input
															class="cart-qty" name="product_quantity" min="1"
															value="1" type="number"></td>
														<td class="text-center"><a class="close-cart"><i
																class="fa fa-times-circle"></i></a></td>
													</tr>
													<tr>
														<td class="text-center"><a href="#"><img
																src="images/pro/70x70_2.jpg" alt="iPod Classic"
																title="iPod Classic"></a></td>
														<td class="text-left product-name"><a href="#">MacBook
																Pro</a> <span class="text-left price">$20.00</span> <input
															class="cart-qty" name="product_quantity" min="1"
															value="1" type="number"></td>
														<td class="text-center"><a class="close-cart"><i
																class="fa fa-times-circle"></i></a></td>
													</tr>
													<tr>
														<td class="text-center"><a href="#"><img
																src="images/pro/70x70_1.jpg" alt="iPod Classic"
																title="iPod Classic"></a></td>
														<td class="text-left product-name"><a href="#">MacBook
																Pro</a> <span class="text-left price">$20.00</span> <input
															class="cart-qty" name="product_quantity" min="1"
															value="1" type="number"></td>
														<td class="text-center"><a class="close-cart"><i
																class="fa fa-times-circle"></i></a></td>
													</tr> -->
												</tbody>
											</table>
										</li>
										<li>
											<table class="table">
												<tbody>
													<!-- <tr>
														<td class="text-right"><strong>Sub-Total</strong></td>
														<td class="text-right" id="subTotal">0.00</td>
													</tr>
													<tr>
														<td class="text-right"><strong>Eco Tax
																(-2.00)</strong></td>
														<td class="text-right">₹2.00</td>
													</tr>
													<tr>
														<td class="text-right"><strong>VAT (20%)</strong></td>
														<td class="text-right">₹20.00</td>
													</tr> -->
													<tr>
														<td class="text-right"><strong>Total Cart
																Amount &nbsp;&nbsp;&nbsp; </strong></td>
														<td class="text-right" id="totalCartAmt">₹0.00</td>
													</tr>
												</tbody>
											</table>
										</li>
										<li>
											<!-- 	<div >
												<input class="btn pull-left" id="viewCartDetails" name="cartbean" value="View cart" type="button">
											</div>  -->
											<form action="viewCart" , method="POST">
												<input type="hidden" id="viewCartDetails1" name="cartBean" value="">
												<input class="btn pull-left" name="cartbean"
													value="View cart" type="submit">
											</form>
											<form action="checkoutFromCart" , method="POST">
												<input type="hidden" id="cheackOutDetails" name="cartBean" value="">
												<input class="btn pull-right" name="cartbean"
													value="Checkout" type="submit">
											</form>
											
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="header-static-block">
				<div class="container">
					<div class="row">
						<div class="icon-block">
							<div class="home_icon">
								<a href="index-2.html"><i class="fa fa-home"></i>Home</a>
							</div>
							<div class="search_icon">
								<a href="#"><i class="fa fa-search"></i>Search</a>
							</div>
							<div class="cart_icon"></div>
							<div class="login_icon">
								<a href="login.html"><i class="fa fa-user"></i>Login</a>
							</div>
							<div class="telephone_icon">
								<a href="contact_us.html"><i class="fa fa-phone"></i>Contact</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header> --%>
		<!-- =====  HEADER END  ===== -->
		
		
		    <!-- =====  BREADCRUMB STRAT  ===== -->
    <div class="breadcrumb section pt-60 pb-60 mb-30">
      <div class="container">
        <h1 class="uppercase">Grocery & Staples</h1>
        <ul>
          <li><a href="index-2.html"><i class="fa fa-home"></i></a></li>
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
            <div class="row mt_10 ">
<%--            <c:forEach var="productDetail" items="${productbean}">
 --%>              <div class="col-md-5">
                <div><a class="thumbnails"> <img data-name="product_image" src= " <c:url value="/resources/images/pro/${productbean.imagename }"/>" alt="" /></a></div>
                <div id="product-thumbnail" class="owl-carousel">
                  <div class="item">
                    <div class="image-additional"><a class="thumbnail" href="images/pro/001.jpg" data-fancybox="group1"> <img src="<c:url value="/resources/images/pro/001.jpg "/>" alt="" /></a></div>
                  </div>
                  <div class="item">
                    <div class="image-additional"><a class="thumbnail" href="images/pro/002.jpg" data-fancybox="group1"> <img src="images/pro/002.jpg" alt="" /></a></div>
                  </div>
                  <div class="item">
                    <div class="image-additional"><a class="thumbnail" href="images/pro/003.jpg" data-fancybox="group1"> <img src="images/pro/003.jpg" alt="" /></a></div>
                  </div>
                  <div class="item">
                    <div class="image-additional"><a class="thumbnail" href="images/pro/004.jpg" data-fancybox="group1"> <img src="images/pro/004.jpg" alt="" /></a></div>
                  </div>
                  <div class="item">
                    <div class="image-additional"><a class="thumbnail" href="images/pro/005.jpg" data-fancybox="group1"> <img src="images/pro/005.jpg" alt="" /></a></div>
                  </div>
                  <div class="item">
                    <div class="image-additional"><a class="thumbnail" href="images/pro/006.jpg" data-fancybox="group1"> <img src="images/pro/006.jpg" alt="" /></a></div>
                  </div>
                  <div class="item">
                    <div class="image-additional"><a class="thumbnail" href="images/pro/007.jpg" data-fancybox="group1"> <img src="images/pro/007.jpg" alt="" /></a></div>
                  </div>
                </div> 
              </div>
<%--               </c:forEach>
 --%>              <div class="col-md-7 prodetail caption">
                <h4 data-name="product_name" class="product-name">${productbean.name}</h4>
                  <div class="rating mt-5 mb-5"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-x"></i></span> </div>
                <span class="price mb-20"><span class="amount"><span class="currencySymbol">&#x20B9 ${productbean.price}</span></span>
                </span>
                <hr>
                <ul class="list-unstyled product_info my-3">
                  <li>
                    <label>Brand:</label>
                    <span> <a href="#">${productbean.name}</a></span></li>
                  
                  <li>
                    <label>Availability:</label>
                    <span> In Stock</span></li>
                </ul>
                <hr>
<!--                 <p class="product-desc mt-20"> More room to move. With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go. Cover Flow. Browse through your music collection by flipping..</p>
 -->                <div id="product">
                  <!-- <div class="form-group">
                    <div class="row">
                      <div class="Sort-by col-lg-6 col-12 mt-20">
                        <label>Sort by</label>
                        <select name="product_size" id="select-by-size" class="selectpicker form-control">
                          <option>Small</option>
                          <option>Medium</option>
                          <option>Large</option>
                        </select>
                      </div>
                      <div class="Color col-lg-6 col-12 mt-20">
                        <label>Color</label>
                        <select name="product_color" id="select-by-color" class="selectpicker form-control">
                          <option>Blue</option>
                          <option>Green</option>
                          <option>Orange</option>
                          <option>White</option>
                        </select>
                      </div>
                    </div>
                  </div> -->
                  <div class="qty mt-30 form-group">
                    <label>Qty</label>
                    <input name="product_quantity" min="1" value="1" type="number">
                  </div>
                  <div class="button-group mt-30">
                    <div class="add-to-cart" data-toggle="tooltip" title="" data-original-title="Add to cart"><a href="#"><span class="addtocart pull-right">Add</span></a></div>
                    <div class="wishlist" data-toggle="tooltip" title="" data-original-title="Wish list"><a href="#"><span ><i class="fa fa-heart"></i></span></a></div><div class="compare" data-toggle="tooltip" title="" data-original-title="Compare"><a href="#"><span><i class="fas fa-exchange-alt"></i></span></a></div>
                  </div>
               
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-12 my-5">
               <!--  <ul class="nav nav-tabs mb-30" id="myTab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="overview-tab" data-toggle="tab" href="#Overview" role="tab" aria-controls="Overview" aria-selected="true">Overview</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="reviews-tab" data-toggle="tab" href="#Reviews" role="tab" aria-controls="reviews-tab" aria-selected="false">Reviews (1)</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="solution-tab" data-toggle="tab" href="#Solution" role="tab" aria-controls="solution-tab" aria-selected="false">Solution</a>
                  </li>
                </ul> -->
                <div class="tab-content" id="myTabContent">
                 <!--  <div class="tab-pane fade show active" id="Overview" role="tabpanel" aria-labelledby="Overview"><p>CLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.</p></div>
                  <div class="tab-pane fade" id="Reviews" role="tabpanel" aria-labelledby="Reviews"> -->
                    <form>
                      <div id="review"></div>
                      <h4 class="mt-5 mb-10">Write a review</h4>
                      <div class="form-group required">
                        <label for="formGroupExampleInput">Your Name</label>
                        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Your Name">
                      </div>
                      <div class="form-group required">
                        <label for="formGroupExampleInput2">Your Review</label>
                        <textarea class="form-control" id="formGroupExampleInput2" placeholder="Your Review"></textarea>
                        <div class="help-block"><span class="text-danger">Note:</span> HTML is not translated!</div>
                      </div>
                      <div class="form-group row align-items-center">
                        <div class="col-8 col-md-9">
                          <label class="control-label">Rating</label>
                          <div class="rates"> <span class="ml-10"> Bad</span>
                          <input type="radio" name="rating" value="1">
                          <input type="radio" name="rating" value="2">
                          <input type="radio" name="rating" value="3">
                          <input type="radio" name="rating" value="4">
                          <input type="radio" name="rating" value="5">
                          <span>Good</span></div>
                        </div>
                        <div class="col-4 col-md-3">
                          <div class="buttons pull-right">
                              <button type="submit" class="btn">Continue</button>
                          </div>
                        </div>
                      </div>
                    </form>

                  </div>
<!--                   <div class="tab-pane fade" id="Solution" role="tabpanel" aria-labelledby="Solution"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis malesuada mi id tristique. Sed ipsum nisi, dapibus at faucibus non, dictum a diam. Nunc vitae interdum diam. Sed finibus, justo vel maximus facilisis, sapien turpis euismod tellus, vulputate semper diam ipsum vel tellus.applied clearfix to the tab-content to rid of the gap between the tab and the content</p></div>
 -->                </div>

              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="heading-part text-center mb-10">
                  <h3 class="section_title mt-50">Related Products</h3>
                </div>
                <div class="related_pro">
                  <div class="product-layout related-pro  owl-carousel mb-50 ">
                    <div class="product-grid">
                      <div class="item">
                         <div class="product-thumb transition">
                            <div class="image">
                              <div class="first_image"> <a href="#"> <img src="images/pro/014.jpg" alt="pure-spice-3" title="pure-spice-3" class="img-responsive"> </a> </div>
                              <div class="swap_image"> <a href="#"> <img src="images/pro/015.jpg" alt="pure-spice-3" title="pure-spice-3" class="img-responsive"> </a></div>
                            </div>
                            <div class="product-details">
                              <div class="caption">
                                <h4><a href="#">pure-spice-3</a></h4>
                                <p class="price">$7.25<span class="price-tax">Ex Tax: $7.25</span></p>
                                <p class="desc">freshly picked for you.Store them in a cool, dry place away from direct sunlight...</p>
                                <div class="product_option">
                                  <div class="form-group required ">
                                    <select name="option[239]" id="input-option231" class="form-control">
                                      <option value=""> --- Please Select --- </option>
                                      <option value="45">1kg(+$0.07)</option>
                                      <option value="46">5kg(+$0.22)</option>
                                      <option value="47">10kg(+$0.44)</option>
                                    </select>
                                  </div>
                                  <div class="input-group button-group">
                                    <label class="control-label">Qty</label>
                                    <input type="number" name="quantity" min="1" value="1"  step="1" class="qty form-control">
                                    <button type="button" class="addtocart pull-right">Add</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                        </div>
                      </div>
                    </div>
                    <div class="product-grid">
                      <div class="item">
                         <div class="product-thumb transition">
                            <div class="image">
                              <div class="first_image"> <a href="#"> <img src="images/pro/015.jpg" alt="pure-spice-3" title="pure-spice-3" class="img-responsive"> </a> </div>
                              <div class="swap_image"> <a href="#"> <img src="images/pro/016.jpg" alt="pure-spice-3" title="pure-spice-3" class="img-responsive"> </a></div>
                            </div>
                            <div class="product-details">
                              <div class="caption">
                                <h4><a href="#">pure-spice-3</a></h4>
                                <p class="price">$7.25<span class="price-tax">Ex Tax: $7.25</span></p>
                                <p class="desc">freshly picked for you.Store them in a cool, dry place away from direct sunlight...</p>
                                <div class="product_option">
                                  <div class="form-group required ">
                                    <select name="option[239]" id="input-option232" class="form-control">
                                      <option value=""> --- Please Select --- </option>
                                      <option value="45">1kg(+$0.07)</option>
                                      <option value="46">5kg(+$0.22)</option>
                                      <option value="47">10kg(+$0.44)</option>
                                    </select>
                                  </div>
                                  <div class="input-group button-group">
                                    <label class="control-label">Qty</label>
                                    <input type="number" name="quantity" min="1" value="1"  step="1" class="qty form-control">
                                    <button type="button" class="addtocart pull-right">Add</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                        </div>
                      </div>
                    </div>
                    <div class="product-grid">
                      <div class="item">
                         <div class="product-thumb transition">
                            <div class="image">
                              <div class="first_image"> <a href="#"> <img src="images/pro/004.jpg" alt="pure-spice-3" title="pure-spice-3" class="img-responsive"> </a> </div>
                              <div class="swap_image"> <a href="#"> <img src="images/pro/005.jpg" alt="pure-spice-3" title="pure-spice-3" class="img-responsive"> </a></div>
                            </div>
                            <div class="product-details">
                              <div class="caption">
                                <h4><a href="#">pure-spice-3</a></h4>
                                <p class="price">$7.25<span class="price-tax">Ex Tax: $7.25</span></p>
                                <p class="desc">freshly picked for you.Store them in a cool, dry place away from direct sunlight...</p>
                                <div class="product_option">
                                  <div class="form-group required ">
                                    <select name="option[239]" id="input-option233" class="form-control">
                                      <option value=""> --- Please Select --- </option>
                                      <option value="45">1kg(+$0.07)</option>
                                      <option value="46">5kg(+$0.22)</option>
                                      <option value="47">10kg(+$0.44)</option>
                                    </select>
                                  </div>
                                  <div class="input-group button-group">
                                    <label class="control-label">Qty</label>
                                    <input type="number" name="quantity" min="1" value="1"  step="1" class="qty form-control">
                                    <button type="button" class="addtocart pull-right">Add</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                        </div>
                      </div>
                    </div>
                    <div class="product-grid">
                      <div class="item">
                         <div class="product-thumb transition">
                            <div class="image">
                              <div class="first_image"> <a href="#"> <img src="images/pro/001.jpg" alt="pure-spice-3" title="pure-spice-3" class="img-responsive"> </a> </div>
                              <div class="swap_image"> <a href="#"> <img src="images/pro/002.jpg" alt="pure-spice-3" title="pure-spice-3" class="img-responsive"> </a></div>
                            </div>
                            <div class="product-details">
                              <div class="caption">
                                <h4><a href="#">pure-spice-3</a></h4>
                                <p class="price">$7.25<span class="price-tax">Ex Tax: $7.25</span></p>
                                <p class="desc">freshly picked for you.Store them in a cool, dry place away from direct sunlight...</p>
                                <div class="product_option">
                                  <div class="form-group required ">
                                    <select name="option[239]" id="input-option234" class="form-control">
                                      <option value=""> --- Please Select --- </option>
                                      <option value="45">1kg(+$0.07)</option>
                                      <option value="46">5kg(+$0.22)</option>
                                      <option value="47">10kg(+$0.44)</option>
                                    </select>
                                  </div>
                                  <div class="input-group button-group">
                                    <label class="control-label">Qty</label>
                                    <input type="number" name="quantity" min="1" value="1"  step="1" class="qty form-control">
                                    <button type="button" class="addtocart pull-right">Add</button>
                                  </div>
                                </div>
                              </div>
                            </div>
                        </div>
                      </div>
                    </div>
                    <div class="product-grid">
                      <div class="item">
                         <div class="product-thumb transition">
                            <div class="image">
                              <div class="first_image"> <a href="#"> <img src="images/pro/003.jpg" alt="pure-spice-3" title="pure-spice-3" class="img-responsive"> </a> </div>
                              <div class="swap_image"> <a href="#"> <img src="images/pro/004.jpg" alt="pure-spice-3" title="pure-spice-3" class="img-responsive"> </a></div>
                            </div>
                            <div class="product-details">
                              <div class="caption">
                                <h4><a href="#">pure-spice-3</a></h4>
                                <p class="price">$7.25<span class="price-tax">Ex Tax: $7.25</span></p>
                                <p class="desc">freshly picked for you.Store them in a cool, dry place away from direct sunlight...</p>
                                <div class="product_option">
                                  <div class="form-group required ">
                                    <select name="option[239]" id="input-option235" class="form-control">
                                      <option value=""> --- Please Select --- </option>
                                      <option value="45">1kg(+$0.07)</option>
                                      <option value="46">5kg(+$0.22)</option>
                                      <option value="47">10kg(+$0.44)</option>
                                    </select>
                                  </div>
                                  <div class="input-group button-group">
                                    <label class="control-label">Qty</label>
                                    <input type="number" name="quantity" min="1" value="1"  step="1" class="qty form-control">
                                    <button type="button" class="addtocart pull-right">Add</button>
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
          </div>
        </div>
    <!-- =====  Brand start ===== -->
      <div id="brand_carouse" class="section text-center mt-30 pb-15">
        <div class="row">
          <div class="col-12">
            <div class="section_title">Our Popular Brands</div>
          </div>
          <div class="col-sm-12">
            <div class="brand owl-carousel">
              <div class="product-thumb"><div class="item text-center"> <a href="#"><img src="images/brand/brand1.png" alt="Disney" class="img-responsive" /></a> </div></div>
              <div class="product-thumb"><div class="item text-center"> <a href="#"><img src="images/brand/brand2.png" alt="Dell" class="img-responsive" /></a> </div></div>
              <div class="product-thumb"><div class="item text-center"> <a href="#"><img src="images/brand/brand3.png" alt="Harley" class="img-responsive" /></a> </div></div>
              <div class="product-thumb"><div class="item text-center"> <a href="#"><img src="images/brand/brand4.png" alt="Canon" class="img-responsive" /></a> </div></div>
              <div class="product-thumb"><div class="item text-center"> <a href="#"><img src="images/brand/brand5.png" alt="Canon" class="img-responsive" /></a> </div></div>
              <div class="product-thumb"><div class="item text-center"> <a href="#"><img src="images/brand/brand6.png" alt="Canon" class="img-responsive" /></a> </div></div>
              <div class="product-thumb"><div class="item text-center"> <a href="#"><img src="images/brand/brand7.png" alt="Canon" class="img-responsive" /></a> </div></div>
              <div class="product-thumb"><div class="item text-center"> <a href="#"><img src="images/brand/brand8.png" alt="Canon" class="img-responsive" /></a> </div></div>
              <div class="product-thumb"><div class="item text-center"> <a href="#"><img src="images/brand/brand9.png" alt="Canon" class="img-responsive" /></a> </div></div>
            </div>
          </div>
        </div>
      </div>
      <!-- =====  Brand end ===== -->

      </div>
    <!-- =====  CONTAINER END  ===== -->
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


<!-- Mirrored from html.lionode.com/bigmarket/bm002/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:06:22 GMT -->
</html>
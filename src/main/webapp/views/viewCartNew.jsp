<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from html.lionode.com/bigmarket/bm002/cart_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:07:34 GMT -->
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
	href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />" />
	<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"> -->
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
	<!--  <div class="loder"></div>
				  <div class="wrapper"> -->
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
										<li class="dropdown"><a href="5.html">Dry Fruits Nuts</a>
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
						<!--	<ul class="header-top-left pull-left">
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
							<li class="currency dropdown pl-2"><span
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
							<li class="telephone"><a href="#"><i class="fa fa-phone"></i>
									+91 987-654-355521</a></li>
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
							alt="Bigmarket" src="images/logo.png">
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
																		<li><a href="category_page.html">Nuts & Seeds</a></li>
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
																		<li><a href="category_page.html">Mustard Oils</a></li>
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
																		<li><a href="category_page.html">Sonamasuri &
																				Kolam</a></li>
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
										<li class="main_cat d	ropdown"><a
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
														<li class="main_cat"><a href="#">Chips & Crisps</a></li>

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
							<div class="header-link">
								<!-- <ul class="list-unstyled">
									<li><a href="#">Bm offers</a></li>
									<li><a href="#">Bm express</a></li>
									<li><a href="#">Bm speciality</a></li>
									<li><a href="#">Bm store</a></li>
									
								</ul> -->
														</div>
						</div>
						<div class="shopcart">
							<div id="cart" class="btn-block mt-40 mb-30 ">
								<button type="button" class="btn" data-target="#cart-dropdown"
									data-toggle="collapse" aria-expanded="true">
									<span id="shippingcart">My basket</span><span id="cart-total">Item
										0</span>
								</button>
								<a href="cart_page.html" class="cart_responsive btn"><span
									id="cart-text">My basket</span><span id="cart-total-res">0</span>
								</a>
							</div>
							<div id="cart-dropdown" class="cart-menu collapse">
								<ul>
									<li>
										<table class="table table-striped">
											<tbody>
												<tr>
													<td class="text-center"><a href="#"><img
															src="images/pro/70x70_1.jpg" alt="iPod Classic"
															title="iPod Classic"></a></td>
													<td class="text-left product-name"><a href="#">MacBook
															Pro</a> <span class="text-left price">$20.00</span> <input
														class="cart-qty" name="product_quantity" min="1" value="1"
														type="number"></td>
													<td class="text-center"><a class="close-cart"><i
															class="fa fa-times-circle"></i></a></td>
												</tr>
												<tr>
													<td class="text-center"><a href="#"><img
															src="images/pro/70x70_2.jpg" alt="iPod Classic"
															title="iPod Classic"></a></td>
													<td class="text-left product-name"><a href="#">MacBook
															Pro</a> <span class="text-left price">$20.00</span> <input
														class="cart-qty" name="product_quantity" min="1" value="1"
														type="number"></td>
													<td class="text-center"><a class="close-cart"><i
															class="fa fa-times-circle"></i></a></td>
												</tr>
											</tbody>
										</table>
									</li>
									<li>
										<table class="table">
											<tbody>
												<tr>
													<td class="text-right"><strong>Sub-Total</strong></td>
													<td class="text-right">$2,100.00</td>
												</tr>
												<tr>
													<td class="text-right"><strong>Eco Tax
															(-2.00)</strong></td>
													<td class="text-right">$2.00</td>
												</tr>
												<tr>
													<td class="text-right"><strong>VAT (20%)</strong></td>
													<td class="text-right">$20.00</td>
												</tr>
												<tr>
													<td class="text-right"><strong>Total</strong></td>
													<td class="text-right">$2,122.00</td>
												</tr>
											</tbody>
										</table>
									</li>
									<li>
										<form
											action="http://html.lionode.com/bigmarket/bm002/cart_page.html">
											<input class="btn pull-left" value="View cart" type="submit">
										</form>
										<form
											action="http://html.lionode.com/bigmarket/bm002/checkout_page.html">
											<input class="btn pull-right" value="Checkout" type="submit">
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
	<!-- =====  BREADCRUMB STRAT  ===== -->
	<div class="breadcrumb section pt-60 pb-60">
		<div class="container">
			<h1 class="uppercase">Shopping Cart</h1>
			<ul>
				<li><a href="index-2.html"><i class="fa fa-home"></i></a></li>
				<li class="active">Shopping Cart</li>
			</ul>
		</div>
	</div>
	<!-- =====  BREADCRUMB END===== -->
	<!-- =====  HEADER END  ===== -->
	<div class="page-cart section">
		<!-- =====  CONTAINER START  ===== -->

		<div class="container">
			<div class="row ">
				<div class="col-12 mt-20 mb-20">
					<form:form method="post" action="checkout_page"
						modelAttribute="CartBeanObj">
						<div class="table-responsive">
							<table class="table table-bordered" >
								<thead>
									<tr>
										<td class="text-center">Image</td>
<!-- 										<td class="text-left">Product Name</td>
 -->										<td class="text-left">Model</td>
										<td class="text-left">Quantity</td>
										<td class="text-right">Unit Price</td>
										<td class="text-right">Total</td>
									</tr>
								</thead>
								<tbody align="center">
									<c:forEach var="cartproduct" items="${cartbean.productList}" varStatus="tagStatus">
										<tr>
											<td class="text-center"><a href="#"><img
													src="<c:url value="/resources/images/pro/${cartproduct.imagename}" />"
													width="70px"></a></td>
											 <td class="text-left"> <a href="product.html">${cartproduct.name}</a> 
											<form:hidden path="productList[${tagStatus.index}].id" value="${cartproduct.id}" />
											<form:hidden path="productList[${tagStatus.index}].name" value="${cartproduct.name}" />
											<form:hidden path="productList[${tagStatus.index}].imagename" value="${cartproduct.imagename}" />
											
											</td> 
<%-- 											<td class="text-left">${cartproduct.name}</td>
 --%>											<td class="text-left">
												<div style="max-width: 200px;" class="input-group btn-block">
													<input type="text" class="form-control quantity" size="1"
														value="1" name="quantity"> <span
														class="input-group-btn">
														<button class="btn" title="" data-toggle="tooltip"
															type="submit" data-original-title="Update">
															<i class="fa fa-refresh"></i>
														</button>
														<button class="btn btn-danger" title=""
															data-toggle="tooltip" type="button"
															data-original-title="Remove">
															<i class="fa fa-times-circle"></i>
														</button>
													</span>
												</div>
											</td>
											<td class="text-right">${cartproduct.price}</td>
											<td class="text-right">${cartproduct.price}</td>
											<form:hidden path="productList[${tagStatus.index}].price" value="${cartproduct.price}" />
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>


						<div class="row">
							<div class="col-md-6 offset-md-6">
								<table class="table table-bordered">
									<tbody>
										<tr>
											<td class="text-right"><strong>Sub-Total:</strong></td>
											<td class="text-right">${cartbean.totalCartAmount}</td>
										</tr>
										<tr>
											<td class="text-right"><strong>GST (18%):</strong></td>
											<td class="text-right">0.00</td>
										</tr>
										<tr>
											<td class="text-right"><strong>Total:</strong></td>
											<td class="text-right" id="totalCartAmt">${cartbean.totalCartAmount}</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>


					<!-- 	<input type="hidden" id="cartBeanObj" name="productList"
							value=${cartbean} />    -->
						<form:hidden path="totalCartAmount"
							value="${cartbean.totalCartAmount}" />
						<input class="btn pull-right mt_30" type="submit" value="Checkout" />
					</form:form>
					<form action="home">
						<input class="btn pull-left mt_30" type="submit"
							value="Continue Shopping" />
					</form>

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
							<div class="product-thumb">
								<div class="item text-center">
									<a href="#"><img
										src="<c:url value="/resources/images/brand/brand1.png"/>"
										alt="Disney" class="img-responsive" /></a>
								</div>
							</div>
							<div class="product-thumb">
								<div class="item text-center">
									<a href="#"><img
										src="<c:url value="/resources/images/brand/brand2.png"/>"
										alt="Dell" class="img-responsive" /></a>
								</div>
							</div>
							<div class="product-thumb">
								<div class="item text-center">
									<a href="#"><img
										src="<c:url value="/resources/images/brand/brand3.png"/>"
										alt="Harley" class="img-responsive" /></a>
								</div>
							</div>
							<div class="product-thumb">
								<div class="item text-center">
									<a href="#"><img
										src="<c:url value="/resources/images/brand/brand4.png"/>"
										alt="Canon" class="img-responsive" /></a>
								</div>
							</div>
							<div class="product-thumb">
								<div class="item text-center">
									<a href="#"><img
										src="<c:url value="/resources/images/brand/brand5.png"/>"
										alt="Canon" class="img-responsive" /></a>
								</div>
							</div>
							<div class="product-thumb">
								<div class="item text-center">
									<a href="#"><img
										src="<c:url value="/resources/images/brand/brand6.png"/>"
										alt="Canon" class="img-responsive" /></a>
								</div>
							</div>
							<div class="product-thumb">
								<div class="item text-center">
									<a href="#"><img
										src="<c:url value="/resources/images/brand/brand7.png"/>"
										alt="Canon" class="img-responsive" /></a>
								</div>
							</div>
							<div class="product-thumb">
								<div class="item text-center">
									<a href="#"><img
										src="<c:url value="/resources/images/brand/brand8.png"/>"
										alt="Canon" class="img-responsive" /></a>
								</div>
							</div>
							<div class="product-thumb">
								<div class="item text-center">
									<a href="#"><img
										src="<c:url value="/resources/images/brand/brand9.png"/>"
										alt="Canon" class="img-responsive" /></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- =====  Brand end ===== -->
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


<!-- Mirrored from html.lionode.com/bigmarket/bm002/cart_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 01 Mar 2022 11:07:36 GMT -->
</html>

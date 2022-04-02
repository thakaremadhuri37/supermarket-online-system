<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- =====  HEADER START  ===== -->
	<header id="header" class="section">
		<div class="container">
			<div class="header-top py-1">

				<div class="row align-items-center">
					<div class="col-md-6"></div>
					<div class="col-md-6">
						<ul class="header-top-right pull-right">
							<li class="telephone"><a href="#"><i class="fa fa-phone"></i>
									+91 9673961258</a></li>
							<li class="login"><a href="login"><i class="fa fa-user"></i>Login</a></li>
							<li class="register"><a href="register">Signup</a></li>&emsp;
							<li class="register"><b><a href=addProductPage>Product Dashboard</a></b></li>
							<li class="register"><a href=addProductPage><div id="usr_name_vaue">${user_login}</div></a></li>
							
							<li><input type="hidden" id="usr_name" value="${user_login}"/></li>
							<li><input type="hidden" id="user_email" value="${user_login_email}"/></li>
							
							<li><input type="hidden" id="usr_error" value="${Login_msg}"/></li>
							
							
						</ul>
						
					</div>
				</div>
			</div>
		</div>

		<div class="header section pt-15 pb-15">
			<div class="container">
				<div class="row">
					<div class="navbar-header col-2 header-bottom-left">
						<a class="navbar-brand" href="home"> <img
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
											href="category_page.html">Dairy Products</a></li>
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
										<li class="main_cat thumb"><a href="product">Fruits
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
								<ul>
				
									<marquee behavior="alternate">
									<li><a href="#">Offers !!</a></li>
										<li><a href="#"> !! 
												Offers !! </a></li>
												 <li><a href="#">offers !!</a></li>
									</marquee>
								</ul>

							</div>
						</div>
						<div class="shopcart">
							<div id="cart" class="btn-block mt-40 mb-30 ">
								<button type="button" class="btn" data-target="#cart-dropdown"
									data-toggle="collapse" aria-expanded="true">
									<span id="shippingcart">My basket</span><span id="cart-total">
										0</span>
								</button>
								<a href="viewCart" class="cart_responsive btn"><span
									id="cart-text">My basket</span><span id="cart-total-res">1</span>
								</a>
							</div>
							<div id="cart-dropdown" class="cart-menu collapse">
								<ul>
									<li>
										<table class="table table-striped">
											<tbody id="myItemCart">
											</tbody>
										</table>
									</li>
									<li>
										<table class="table">
											<tbody>

												<tr>
													<td class="text-right"><strong>Total Cart
															Amount &nbsp;&nbsp;&nbsp; </strong></td>
													<td class="text-right" id="totalCartAmt">₹0.00</td>
												</tr>
											</tbody>
										</table>
									</li>
									<li>
										<form action="viewCart" , method="POST">
											<input type="hidden" id="viewCartDetails1" name="cartBean"
												value=""> <input class="btn pull-left"
												name="cartbean" value="View cart" type="submit">
										</form>
										<form action="checkoutFromCart" , method="POST">
											<input type="hidden" id="cheackOutDetails" name="cartBean"
												value=""> <input class="btn pull-right"
												name="cartbean" value="Checkout" type="submit">
										</form>

									</li>
									
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
	</header>
	<!-- =====  HEADER END  ===== -->
</body>
</html>
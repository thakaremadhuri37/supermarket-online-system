<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html
	class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers no-applicationcache svg inlinesvg smil svgclippaths"
	lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<!-- =====  BASIC PAGE NEEDS  ===== -->
<meta charset="utf-8">
<title>Grocery-Supermarket</title>

<!-- =====  SEO MATE  ===== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
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
<link rel="stylesheet" href="font-awesome.min.css" />
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


</head>

<body onload="homePageOnLoad()">
	<!-- =====  LODER  ===== -->
	<div class="loder" style="display: none;"></div>
	<div class="wrapper">


		<!-- =====  HEADER START  ===== -->
		<%@ include file="comman.jsp"%>

		<!-- =====  HEADER END  ===== -->
		<!-- =====  BREADCRUMB STRAT  ===== -->
		<div class="breadcrumb section pt-60 pb-60">
			<div class="container">
				<h1 class="uppercase">Shopping Cart</h1>
				<ul>
					<li><a href="home"><i class="fa fa-home"></i></a></li>
					<li class="active">Shopping Cart</li>
				</ul>
			</div>
		</div>
		<!-- =====  BREADCRUMB END===== -->
		<div class="page-checkout section">
			<!-- =====  CONTAINER START  ===== -->
			<div class="container">
				<div class="row ">

					<div class="col-12 my-3">
						<div id="accordion">
							<%
							if (null == session.getAttribute("user_login_email")) {
							%>
							<div class="card my-1">
								<div class="card-header" id="headingOne">
									<h4 class="mb-0">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseOne"> Checkout Options <i
											class="fa fa-caret-down"></i></a>
									</h4>
								</div>

								<div id="collapseOne" class="collapse show"
									aria-labelledby="headingOne" data-parent="#accordion">
									<div class="card-body">
										<div class="row">


											<div class="col-sm-6">
												<form action="login" method="post" onsubmit="return login()">
													<h3 style="color: red">Login First!!</h3>

													<div class="form-group">
														<label for="input-email" class="control-label">E-Mail</label>
														<input type="text" class="form-control" id="input-email"
															placeholder="E-Mail" name="email">
													</div>
													<div class="form-group">
														<label for="input-password" class="control-label">Password</label>
														<input type="password" class="form-control"
															id="input-password" placeholder="Password" value=""
															name="password"> <br> <input type="submit"
															class="btn mt_20" data-loading-text="Loading..."
															id="button-login" value="Login">
													</div>
												</form>
											</div>
											<h4>
												Don’t have account? please click <a href="register"
													style="color: green;">Register</a>
											</h4>
										</div>
									</div>
								</div>
							</div>
							<%
							} else {
							%>
							<div class="card my-1">
								<div class="card-header" id="headingFive">
									<h4 class="mb-0">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseFive"> Payment Method <i
											class="fa fa-caret-down"></i></a>
									</h4>
								</div>
								<div id="collapseFive" class="collapse"
									aria-labelledby="headingFive" data-parent="#accordion">
									<div class="card-body">
										<p>Please select the preferred payment method to use on
											this order.</p>

										<div class="form-check">
											<input class="form-check-input" type="radio"
												name="exampleRadios" id="exampleRadios2" value="option2"
												checked="checked"> <label class="form-check-label"
												for="exampleRadios2"> Credit Card </label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio"
												name="exampleRadios" id="exampleRadios1" value="option1">
											<label class="form-check-label" for="exampleRadios1">
												Debit Card </label>
										</div>




										<%@  include file="payment.jsp"%>

		
									</div>
								</div>
							</div>
						</div>
						<div class="card my-1">
							<div class="card-header" id="headingSix">
								<h4 class="mb-0">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseSix1"> Confirm Order <i
										class="fa fa-caret-down"></i></a>
								</h4>
							</div>
							<div id="collapseSix" class="collapse"
								aria-labelledby="headingSix" data-parent="#accordion">
								<div class="card-body">
									<form:form method="post" action="orderConfirm"
										modelAttribute="CartBeanObj">
										<div class="table-responsive">
											<table class="table table-bordered table-hover">
												<thead>
													<tr>
														<td class="text-left">Product Name</td>
														<!--                             <td class="text-left">Model</td>
 -->
														<td class="text-right">Quantity</td>
														<td class="text-right">Unit Price</td>
														<td class="text-right">Total</td>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="cartproduct"
														items="${cartbean.productList}" varStatus="tagStatus">
														<tr>
															<td class="text-left"><a href="#">${cartproduct.name}</a></td>
															<!--  <td class="text-left"></td> -->
															<td class="text-right">${cartproduct.quantity}</td>
															<td class="text-right">${cartproduct.price}</td>
															<td class="text-right">${cartproduct.productTotal}</td>
															<form:hidden
																path="productList[${tagStatus.index}].productTotal"
																value="${cartproduct.productTotal}" />

															<form:hidden path="productList[${tagStatus.index}].price"
																value="${cartproduct.price}" />
															<form:hidden path="productList[${tagStatus.index}].name"
																value="${cartproduct.name}" />
															<form:hidden path="productList[${tagStatus.index}].id"
																value="${cartproduct.id}" />
															<form:hidden
																path="productList[${tagStatus.index}].imagename"
																value="${cartproduct.imagename}" />
															
															<form:hidden
																path="productList[${tagStatus.index}].quantity"
																value="${cartproduct.quantity}" />

														</tr>



													</c:forEach>
												</tbody>
												<tfoot>
													<tr>
														<td class="text-right" colspan="3"><strong>Sub-Total:</strong></td>
														<td class="text-right">${cartbean.totalCartAmount}</td>
													</tr>

													<tr>
														<td class="text-right" colspan="3"><strong>Total:</strong></td>
														<td class="text-right">${cartbean.totalCartAmount}</td>
													</tr>
												</tfoot>
											</table>
										</div>
										<form:hidden path="totalCartAmount"
																value="${cartbean.totalCartAmount}" />
										<div class="buttons">
											<div class="pull-right">
												<a href=""><input type="submit"
													data-loading-text="Loading..." class="btn"
													id="button-confirm" value="Confirm Order"
													onclick="confirm_order_localstore()"></a>
											</div>
										</div>
									</form:form>
								</div>

							</div>
						</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
			<!-- =====  Brand start ===== -->
			<!-- <div id="brand_carouse" class="section text-center my-5">
        <div class="type-01">
          <div class="heading-part mb-10 ">
            <h3 class="section_title">Brand Logo</h3>
          </div>
          <div class="row">
            <div class="col-sm-12">
              <div class="brand owl-carousel py-3 owl-loaded owl-drag">
                
                
                
                
                
                
                
                
                
              <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1950px, 0px, 0px); transition: all 0.25s ease 0s; width: 4095px;"><div class="owl-item cloned" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand4.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item cloned" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand5.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item cloned" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand6.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item cloned" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand7.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item cloned" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand8.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item cloned" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand9.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand1.png" alt="Disney" class="img-responsive"></a> </div></div><div class="owl-item" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand2.png" alt="Dell" class="img-responsive"></a> </div></div><div class="owl-item" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand3.png" alt="Harley" class="img-responsive"></a> </div></div><div class="owl-item" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand4.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item active" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand5.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item active" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand6.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item active" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand7.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item active" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand8.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item active" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand9.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item cloned active" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand1.png" alt="Disney" class="img-responsive"></a> </div></div><div class="owl-item cloned" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand2.png" alt="Dell" class="img-responsive"></a> </div></div><div class="owl-item cloned" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand3.png" alt="Harley" class="img-responsive"></a> </div></div><div class="owl-item cloned" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand4.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item cloned" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand5.png" alt="Canon" class="img-responsive"></a> </div></div><div class="owl-item cloned" style="width: 195px;"><div class="item text-center"> <a href="#"><img src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/brand6.png" alt="Canon" class="img-responsive"></a> </div></div></div></div><div class="owl-nav disabled"><div class="owl-prev">prev</div><div class="owl-next">next</div></div><div class="owl-dots disabled"></div></div>
            </div>
          </div>
        </div>
      </div> -->
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
						<li><a href="#">Terms &amp; Conditions</a></li>
						<li><a
							href="http://html.lionode.com/bigmarket/bm002/about.html">Contact
								Us</a></li>
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
						<li class="add">Warehouse &amp; Offices, 12345 Street name,
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
										src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/play-store.png"
										alt="playstore" class="img-responsive"></a></li>
								<li><a href="#" title="appstore"><img
										src="Bigmarket%20E-commerce%20Bootstrap%20Template_files/app-store.png"
										alt="appstore" class="img-responsive"></a></li>
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
	<a id="scrollup" style="display: none;"></a>
	<script src="<c:url value="/resources/js/modernizr.js"/>"></script>
	<script src="<c:url value="/resources/js/jQuery_v3.1.1.min.js"/>"></script>
	<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/resources/js/popper.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.magnific-popup.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.firstVisitPopup.js"/>"></script>
	<script src="<c:url value="/resources/js/custom.js"/>"></script>
	<script src="<c:url value="/resources/js/main.js"/>"></script>

	<script>
		$('input[name=\'payment_address\']').on('change', function() {
			if (this.value == 'new') {
				$('#payment-existing').hide();
				$('#payment-new').show();
			} else {
				$('#payment-existing').show();
				$('#payment-new').hide();
			}
		});
		$('input[name=\'shipping_address\']').on('change', function() {
			if (this.value == 'new') {
				$('#shipping-existing').hide();
				$('#shipping-new').show();
			} else {
				$('#shipping-existing').show();
				$('#shipping-new').hide();
			}
		});
	</script>


</body>
</html>
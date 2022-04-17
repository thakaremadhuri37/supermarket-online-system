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
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />
<link rel="stylesheet"
	href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />" />
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
				  <div class="wrapper"> -->


	<!-- =====  HEADER START  ===== -->
	<%@ include file="comman.jsp" %>
	
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
									<tr style="color: black; font-family: sans-serif;font-size: large;">
										<td class="text-center">Image</td>
<!-- 										<td class="text-left">Product Name</td>
 -->										<td class="text-center">Product name</td>
										<td class="text-center">Quantity</td>
										<td class="text-center">Unit Price</td>
										<td class="text-center">Total</td>
									</tr>
								</thead>
								<tbody align="center">
									<c:forEach var="cartproduct" items="${cartbean.productList}" varStatus="tagStatus">
										<tr style="color: black; font-size: medium;" >
											<td class="text-center"><a href="#"><img
													src="<c:url value="/resources/images/pro/${cartproduct.imagename}" />"
													width="70px"></a></td>
											 <td class="text-center"> <a href="product.html">${cartproduct.name}</a> 
											<form:hidden path="productList[${tagStatus.index}].id" value="${cartproduct.id}" />
											<form:hidden path="productList[${tagStatus.index}].imagename" value="${cartproduct.imagename}" />
											
											
											</td> 

 												<td class="text-center">${cartproduct.quantity}
												<form:hidden path="productList[${tagStatus.index}].quantity" value="${cartproduct.quantity}" />
												 
											</td>
										<td class="text-center">${cartproduct.price}</td>
											<td class="text-right">${cartproduct.productTotal} </td>
											<form:hidden path="productList[${tagStatus.index}].productTotal" value="${cartproduct.price}" />
											
											<form:hidden path="productList[${tagStatus.index}].price" value="${cartproduct.price}" />
											<form:hidden path="productList[${tagStatus.index}].name" value="${cartproduct.name}" />
											
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>


						<div class="row">
							<div class="col-md-6 offset-md-6">
								<table class="table table-bordered">
									<tbody>
										<tr style="color: black;">
											<td class="text-right"><strong>Sub-Total:</strong></td>
											<td class="text-right">${cartbean.totalCartAmount}</td>
										</tr>
										<!-- <tr>
											<td class="text-right"><strong>GST (18%):</strong></td>
											<td class="text-right">0.00</td>
										</tr> -->
										<tr style="color: black;font-size: medium;">
											<td class="text-right"><strong>Total:</strong></td>
											<td class="text-right" id="totalCartAmt">${cartbean.totalCartAmount}</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>


					
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
			
	</div>
	<%@ include file="commanFooter.jsp" %>


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

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
<title>Grocery Supermarket</title>

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


		<!-- =====  HEADER START  ===== -->
		<%@ include file="comman.jsp"%>


		<div class="breadcrumb section pt-60 pb-60">
			<div class="container">
				<h1 class="uppercase">Product Dashboard</h1>
				<ul>
					<li><a href="home"><i class="fa fa-home"></i></a></li>
					<li class="active">Product Dashboard</li>
				</ul>
			</div>
		</div>

		<!-- =====  HEADER END  ===== -->
		<div class="page-cart section">
			<!-- =====  CONTAINER START  ===== -->

			<div class="container">
				<div class="row ">
					<div class="col-12 mt-20 mb-20">

						<div class="table-responsive">
							<!-- <table class="table table-bordered"> -->
							<table style="border: 1px solid black;"
								class="table table-bordered">

								<tr class="text-center"
									style="color: black; font-family: sans-serif; font-size: large;">


									<th class="text-center">ID</th>
									<!-- 										<td class="text-left">Product Name</td>
 -->
									<th class="text-center" class="zoom">Image</th>
									<th class="text-center" width="25%">Product Name</th>
									<th class="text-center">Price</th>
									<th class="text-center">Edit/Delete</th>
									<th class="text-center">Product_Stock</th>

								</tr>
								<c:forEach var="product" items="${productList}">

									<tbody align="center">

										<tr
											style="color: black; font-family: sans-serif; font-size: medium;">
											<td class="text-center">${product.id}</td>
											<td class="text-center"><a href="#" class="zoom"><img
													src="<c:url value="/resources/images/pro/${product.imagename}" />"
													width="70px"></a></td>
											<td class="text-center">${product.name}</td>
											<td class="text-center">${product.price}</td>



											<td class="text-center" style="color: blue;"><a
												href="updateProductByAdmin?id=${product.id}">Edit</a>&nbsp;&nbsp;<a
												href="deletProduct?id=${product.id}">Delete</a></td>
												<td class="text-center">${product.product_stock}</td>
										</tr>

									</tbody>
								</c:forEach>
							</table>
						</div>




					</div>
				</div>

			</div>
			<!-- =====  CONTAINER END  ===== -->
		</div>
		<%@ include file="commanFooter.jsp"%>

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

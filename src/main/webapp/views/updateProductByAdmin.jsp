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
	

		<!-- =====  HEADER START  ===== -->
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
														<form action="updateproduct" method="post" name="addProduct"
															enctype="multipart/form-data">
															<div class="form-group">
																<input type="text" class="form-control" id="productName"
																	aria-describedby="exampleInputtext"
																	placeholder="Enter Product name" name=name value="${productbean.name}">
															</div>
															<div class="form-group">
																<!-- <input type="number" class="form-control"
																	id="productPrice"
																	aria-describedby="exampleInputemail"
																	placeholder="Enter price" name="price" required> -->
																<input type="number" class="form-control"
																	placeholder="Enter price"  value="${productbean.price}" 
																	 name="price">
																	 <input type="hidden" value="${productbean.id}" name="id" >
															</div>

															<div class="form-group">
																<select name="catagoryId" class="form-control"
																	id="catagory" required="required">
																
																	<c:forEach var="category" items="${categorylist}">
																		<option value="${category.categoryid}"  ${category.categoryid == productbean.catagoryId ? 'selected="selected"' : ''}>${category.name}</option>

																	</c:forEach> 
																</select>
															</div>
															<!-- <div class="form-group">
																<input type="file" class="form-control" value=""
																	id="productImagename" placeholder="Enter imagename.jpg"
																	name="file" required />
															</div>
 -->
															<button type="submit" class="btn mt-10"><u>Update</u></button>
														</form>



													</div>
												</div>


												<br> <br>







												<h1>
													<a href="showallproducts" class="btn mt-10"
														style="text-decoration: underline; color: red; font-size: large;">Show
														All Products</a>
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
			<%@ include file="commanFooter.jsp" %>
			
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


</html>
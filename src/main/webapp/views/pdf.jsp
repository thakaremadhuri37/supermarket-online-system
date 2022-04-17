<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" crossorigin="anonymous">
    
    <link rel="stylesheet"
	href="<c:url value="/resources/css/pdf.css" />" />
    	<script src="<c:url value="/resources/js/pdf.js"/>"></script>  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container d-flex justify-content-center mt-50 mb-50">
        <div class="row">
            <div class="col-md-12 text-right mb-3">
                <button class="btn btn-primary" id="download"> download pdf</button>
            </div>
            <div class="col-md-12">
                <div class="card" id="invoice">
                    <div class="card-header bg-transparent header-elements-inline">
                        <h6 class="card-title text-primary">Sale invoice</h6>
                    </div>
                    <div class="card-body">
                        <div class="row">
                          &nbsp;  <h1 style="color: red">Jaylaxmi Supermarket</h1>
                           <!--  <div class="col-sm-6">
                                <div class="mb-4 ">
                                    <div class="text-sm-right">
                                        <h1 class="invoice-color mb-2 mt-md-2">Jaylaxmi Supermarket</h1><br>
                                        
                                    </div>
                                </div>
                            </div> -->
                        </div>
                        <div class="d-md-flex flex-md-wrap">
                            <div class="mb-4 mb-md-2 text-left"> <span class="text-muted">Invoice To:</span>
                                <ul class="list list-unstyled mb-0">
                                                                   
                                
                                    <li>
                                      <h6 class="my-2">Name : ${sessionScope.user_login }</h6>
                                     </li>
                                     <li><h6 class="my-2">Email : ${sessionScope.user_login_email }</h6></li>
                                  <li><time datetime="2017-02-14 20:00"></time></li>
                                   
                                </ul>
                            </div>
                            <div class="mb-2 ml-auto"> <span class="text-muted"></span>
                                <div class="d-flex flex-wrap wmin-md-400">
                           
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-lg" border="1">
                            <thead>
                                <tr>
                                    <th>Product name</th>
                                    <th>quantity</th>
                                    <th>Unit price</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                                                <c:forEach var="cartproduct" items="${cartbean.productList}">
                            
                            <tbody>
                                <tr>
                                    <td>
                                        <h6 class="mb-0">${cartproduct.name}</h6> 
                                    </td>
                                    <td>${cartproduct.quantity}</td>
                                    <td>${cartproduct.price}</td>
                                    <td><span class="font-weight-semibold">${cartproduct.productTotal}</span></td>
                                </tr>
                       
                            </tbody>
                            </c:forEach>
                        </table>
                    </div>
                    <div class="card-body">
                        <div class="d-md-flex flex-md-wrap">
                            <div class="pt-2 mb-3 wmin-md-400 ml-auto">
                               
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                           
                                           
                                            <tr>
                              
                                                <td class="text-right text-primary">
                                                   <h2>Total : ${cartbean.totalCartAmount}</h2> 
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                       
                            </div>
                        </div>
                    </div>
                    <h6>Address: Jaylaxmi Supermarket, Near Bus-Stand, Shindkheda.</h6>
                 
                </div>
            </div>
        </div>
    </div>
</body>
</html>
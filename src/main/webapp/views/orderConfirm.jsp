<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<img src="<c:url value="/resources/images/orderConfirm.gif"/>">
		<h1>Thank You For Your Order!!!</h1>
		<br>
		<table style="max-width: 600px;" width="100%" cellspacing="0"
			cellpadding="0" border="0" align="center">
			<tbody>
				<tr>
					<td style="padding: 25px 0 15px 0;" align="center">
						<table cellspacing="0" cellpadding="0" border="0">
							<tbody>
								<tr>
									<td style="border-radius: 5px;" bgcolor="#66b3b7"
										align="center"><a href="home" target="_blank"
										style="font-size: 18px; font-family: Open Sans, Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; border-radius: 5px; background-color: #F44336; padding: 15px 30px; border: 1px solid #F44336; display: block;">Shop
											Again</a></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<%@include file="pdf.jsp" %>
</body>
</html>




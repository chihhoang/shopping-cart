<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Customers</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>
<body>

	<div id="wrapper">
		<div id="header">
				<h2>Shopping Cart</h2>
		</div>
	</div>
	
	<div id="container" class="panel panel-default">
		<div id="content">
			<div class="panel-body">
				<br/>
				<button class="btn btn-primary" onclick="window.location.href='showAddForm'">Add product</button>
				
	      <div class="table-responsive">
					<table class="table table-striped table-bordered table-hover">
						<tr>
							<th>Id</th>
							<th>Product name</th>
							<th>Price</th>
							<th>Quantity</th>
						</tr>
						
						<c:forEach items="${products}" var="product">
							<tr>
								<td>${product.id }</td>
								<td>${product.productName}</td>
								<td>${product.price}</td>
								<td>${product.quantity }</td>
							</tr>
						</c:forEach>
					</table>
					
					<%-- <p>Total: $ ${total}</p> --%>
					
				</div>
			</div>
		</div>
	
	</div>

</body>
</html>
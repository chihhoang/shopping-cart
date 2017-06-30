<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add form</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />

</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>Shopping Cart</h2>		
		</div>
	</div>

	<div id="container">
		<form:form action="saveProduct" modelAttribute="product" method="POST">
			<div class="input-group">
			  <span class="input-group-addon" id="sizing-addon2">Product name</span>
				<form:input path="productName" />
			</div>
			<div class="input-group">
			  <span class="input-group-addon" id="sizing-addon2">Price</span>
				<form:input path="price" />
			</div>
			<div class="input-group">
			  <span class="input-group-addon" id="sizing-addon2">Quantity</span>
				<form:input path="quantity" />
			</div>
		
			<br/><br/>
			<button type="submit" class="btn btn-primary">Save</button>
		</form:form>
		
		<br/><br/>
		<a href="${pageContext.request.contextPath}/product/list">Go back to list</a>
		
	</div>


</body>
</html>
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<title>迷你小网站</title>
</head>
		<p> welcome: ${user.userName},欢迎！</p>
<body>
<center>
	<table class="table table-bordered">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>category</th>
			<th>describe</th>
			<th>price</th>
			<th>Operation</th>
		</tr>
		<c:forEach var="es" items="${listGoods}">
			<tr>
				<th>${es.goodsId}</th>
				<th>${es.goodsName}</th>
				<th>${es.category}</th>
				<th>${es.describe}</th>
				<th>${es.price}</th>
				<th align="center"><a href="/shoppingcart/information"></a>addCart</th>
			</tr>
		</c:forEach>
	</table>
</center>
</body>
</html>


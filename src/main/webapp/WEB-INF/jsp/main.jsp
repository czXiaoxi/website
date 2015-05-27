<%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>小希的小店</title>
</head>

<p align="center" >welcome  to xiaoxi's website</p>

<body>
	<center>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>category</th>
			<th>price</th>
			<th>Operation</th>
		</tr>
		<c:forEach var="es" items="${listGoods}">
			<tr>
				<th>${es.goodsId}</th>
				<th>${es.goodsName}</th>
				<th>${es.category}</th>
				<th>${es.price}</th>
				<td align="center"><a href="<c:url  value="/shoppingcart/orderline/${es.goodsId}" />" />orderNow</td>

			</tr>
		</c:forEach>
	</table>
</center>
</body>
</html>
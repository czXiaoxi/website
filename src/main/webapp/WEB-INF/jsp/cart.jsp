<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<p align="center"> welcome  to xiaoxi's website</p>
<body>
	<center>
	<p align="center"> shaoppingcart information</p>
	<a href="/website/shoppingcart/information"> go shopping </a>
	<table align="center"   border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Price</th>
			<th>Count</th>
			<th>TotalPrice</th>
			<th>Operation</th>
		</tr>
		<c:forEach var="it" items="${cart}">
			<tr>
				<td>${it.goodsId}</td>
				<td>${it.goodsName}</td>
				<td>${it.price}</td>
				<td>${it.count}</td>
				<td>${it.price * it.count}</td>
				<td align="center"> <a href="<c:url  value="/shoppingcart/delete/${it.goodsId}" />" />delete</td>
			</tr>
		</c:forEach>
	</table>
	</center>
</body>
</html>
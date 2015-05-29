<%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>小希的小店</title>
    <link type="text/css" rel="stylesheet" href="<c:url value="/packages/bootstrap/css/bootstrap.min.css" />" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/bootstrap/css/bootstrap-theme.min.css" />" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/styles/css/normalize.css" /> " />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/styles/css/docs.css" />" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/styles/css/main.css" />" />
</head>
<body>
	<div class="nav navbar-inverse navbar-fixed-top" >
      <div class="container">
        <div class="navbar-collapse collapse" role="navigation" style="margin-top: -8px">
          <ul class="nav navbar-nav" style="font-size: 14px;">
              <li>
                  <a href="<c:url value="/common/adminlogin"/>" target="_blank">后台管理</a>
              </li>
            <li>
            	<a href="<c:url value="/common/cart" />" >购物车</a>
            </li>
             <li>
            	<a href="#" >我的订单</a>
            </li>
            <li>
            	<a href="<c:url value="/common/login"/>" >登录</a>
            </li>
             <li>
            	<a href="<c:url value="/common/register"/>" >免费注册</a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right hidden-sm" style="font-size: 14px">
          	 	<li>
          	 		<a href="<c:url value="/shoppingcart/information"/>">购物大厅</a>
          	 	</li>
          	 <li style="color: white; margin-top: 15px; margin-right:10px; padding-left: 5px">
          	 	您好：xx
          	 </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container" >
    <div class="row">
    <div class="col-md-offset-2" style="padding-left: 30px;margin-top: 30px ;margin-right: 60px" >
	<table class="table table-hover table-bordered">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>category</th>
				<th>price</th>
				<th>Operation</th>
			</tr>
		</thead>
		<tbody>	
		<c:forEach var="es" items="${listGoods}">
			<tr>
				<th>${es.goodsId}</th>
				<th>${es.goodsName}</th>
				<th>${es.category}</th>
				<th>${es.price}</th>
				<td><a href="<c:url  value="/shoppingcart/orderline/${es.goodsId}" />" >orderNow</a></td>

			</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
</div>
</div>
</body>
</html>
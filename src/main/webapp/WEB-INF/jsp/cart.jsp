<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">管理中心<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li>
                  <a href="#" target="_blank">后台管理</a>
                </li>
                <li>
                  <a href="#" target="_blank">用户管理</a>
                </li>
              </ul>
            </li>
            <li>
            	<a href="#" >购物车</a>
            </li>
             <li>
            	<a href="#" >我的订单</a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right hidden-sm" style="font-size: 14px">
          	 	<li>
          	 		<a href="#">服务大厅</a>
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
	 	<div class="col-md-1 bs-docs-sidenav">
			<ul class="nav nav-list bs-docs-sidenav affix" >
				<li><a href="#"><i class="glyphicon glyphicon-chevron-right" style="float: right;color: #e5e5e5;">go shopping</i></a></li>
		        <li><a href="#"><i class="glyphicon glyphicon-chevron-right" style="float: right;color: #e5e5e5;"></i></a></li>
	        </ul>
	    </div>
	    <div class="col-md-offset-2" style="padding-left: 30px;margin-top: 30px" >
	<table class="table table-hover table-bordered">
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
				<td align="center"> <a href="<c:url  value="/shoppingcart/delete/${it.goodsId}" />" >delete</a></td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	</div>
</body>
</html>
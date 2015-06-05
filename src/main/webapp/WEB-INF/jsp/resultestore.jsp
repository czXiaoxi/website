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
                  <a href="<c:url value="/common/login"/>" target="_blank">退出</a>
              </li>
            <li>
            	<a href="<c:url value="/common/adminlogin" />" >登入</a>
            </li>
             <li>
            	<a href="<c:url value="/common/adminreg" />" >注册</a>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right hidden-sm" style="font-size: 14px">
          	 	
          	 <li style="color: white; margin-top: 15px; margin-right:10px; padding-left: 5px">
          	 	您好：欢迎来到迷你小网站
          	 </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container" >
    <div class="row">
    <div class="col-md-1 bs-docs-sidenav">
		<ul class="nav nav-list bs-docs-sidenav affix" >
		<li><a href="<c:url value="/estore/information"/> ">商品信息<i class="glyphicon glyphicon-chevron-right" style="float: right;color: #e5e5e5;"></i></a></li>
			<li><a href="<c:url value="/common/addgoods"/>">添加商品<i class="glyphicon glyphicon-chevron-right" style="float: right;color: #e5e5e5;"></i></a></li>
		    <li><a href="<c:url value="/common/search"/>">查看商品<i class="glyphicon glyphicon-chevron-right" style="float: right;color: #e5e5e5;"></i></a></li>
	    </ul>
	</div>  
    <div class="col-md-offset-3" style="padding-left: 30px;margin-top: 30px ;margin-right: 60px" >
	<table class="table table-hover table-bordered">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>category</th>
			<th>describe</th>
			<th>Price</th>
			<th>Operation</th>
		</tr>
		<c:forEach var="es" items="${estore}">
			<tr>
				<td>${es.goodsId}</td>
				<td>${es.goodsName}</td>
				<td>${es.category}</td>
				<td>${es.describe}</td>
				<td>${es.price}</td>
				<td> 
					<a href="<c:url  value="/estore/deletegoods/${es.goodsId}" />" >delete</a>
					<a href="<c:url  value="/estore/update/${es.goodsId}" />" >update</a>
				</td>
			</tr>
		</c:forEach>
	</table>	
	</div>
</div>
</div>
</body>
</html>
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
    <div class="col-md-offset-2" style="padding-left: 30px;margin-top: 30px ;margin-right: 60px" >
    <form class="bs-docs-example" action="<c:url value="/admin/register"/>"  name="admin" method="post">
			  <fieldset>
			    <legend>Register Admin</legend>
			    <div class="form-group">
			      <label class="col-md-2 form-text">用户名:</label>
			      <div class="col-md-4"><input type="text"  name="adminName" id="adminName"  class="form-control" placeholder="请输入用户名…" /></div>
			      <span class="help-block form-text"></span>
			    </div>
			    
			    <div class="form-group">
			      <label class="col-md-2 form-text">密码:</label>
			      <div class="col-md-4"><input type="password"  name="password" id="password" class="form-control" placeholder="请输入密码…" /></div>
			      <span class="help-block form-text"></span>
			    </div>
			    
			    <!-- <div class="form-group clearfix">
			      <label class="col-md-2 form-text">密码确认:</label>
			      <div class="col-md-4">
			        <input type="password"  name="againpasswd" id="againpasswd" class="form-control" placeholder="请再次输入密码…" /></div>
			      <span class="help-block form-text"></span>
			    </div> -->
			    <div > 
			    	<button type="submit" class="btn btn-success">Submit</button>
			    </div>
			  </fieldset>
			</form>
		</div>
	</div>
</div>
<script src="<c:url value="/packages/jquery-1.10.2.js" />"></script>
<script src="<c:url value="/packages/bootstrap/js/bootstrap.min.js" /> "></script> 
</body>
</html>
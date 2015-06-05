<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>
    	小希de小店
    </title>
    <link type="text/css" rel="stylesheet" href="<c:url value="/packages/bootstrap/css/bootstrap.min.css" />" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/bootstrap/css/bootstrap-theme.min.css" />" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/styles/css/normalize.css" /> " />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/styles/css/docs.css" />" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/styles/css/main.css" />" />
 <!-- <script language="JavaScript" type="text/JavaScript">

    function validate()
    {
      var userName=document.user.userName.value;
      var password=document.user.password.value;
      var againpasswd=document.user.againpasswd.value;
      var phoneNumber=document.user.phoneNumber.value;
      var address=document.user.address.value;


      if(userName.length==0)
      {
        alert("请输入用户名！");
        document.user.userName.focus();
        return false;
      }
      else if(password.length==0)
      {
        alert("请输入密码！");
        document.user.password.focus();
        return false;
      }
      else if(againpasswd.length==0)
      {
        alert("请输入确认密码");
        document.user.againpasswd.focus();
        return false;
      }
      else if(password!=againpasswd)
      {
        alert("两次密码输入不一致，请重新输入！");
        document.user.password.focus();
        return false;
      }
      else if(address.length==0)
      {
        alert("请输入address!");
        document.user.address.focus();
        return false;
      }
      else
      {
        return true;
      }
    }
    </script>  -->
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
            	<a href="<c:url value="/common/reset" />" >购物中心</a>
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
    <div class="col-md-offset-2" style="padding-left: 30px;margin-top: 30px ; margin-right: 60px">	
			<form class="bs-docs-example" action="<c:url value="/user/registeruser"/>"  name="reuser" method="post">
			  <fieldset>
			    <legend>Register User</legend>
			    <div class="form-group">
			      <label class="col-md-2 form-text">用户名:</label>
			      <div class="col-md-4"><input type="text"  name="userName" id="userName"  class="form-control" placeholder="请输入用户名…" /></div>
			      <span class="help-block form-text"></span>
			    </div>
			    
			    <div class="form-group">
			      <label class="col-md-2 form-text">密码:</label>
			      <div class="col-md-4"><input type="password"  name="password" id="password" class="form-control" placeholder="请输入密码…" /></div>
			      <span class="help-block form-text"></span>
			    </div>
			    
			    <div class="form-group clearfix">
			      <label class="col-md-2 form-text">密码确认:</label>
			      <div class="col-md-4">
			        <input type="password"  name="againpasswd" id="againpasswd" class="form-control" placeholder="请再次输入密码…" /></div>
			      <span class="help-block form-text"></span>
			    </div>
			    <div class="form-group">
			      <label class="col-sm-2 form-text">地址:</label>
			      <div class="col-md-4">
			       <input type="text"  name="address" id="address" class="form-control" placeholder="请输入您的地址…" /></div>
			       <span class="help-block form-text"></span>
			    </div>
			    
			    <div class="form-group">
			      <label class="col-sm-2 form-text">电话:</label>
			      <div class="col-md-4">
			      <input type="text"  name="phoneNumber" id="phoneNumber" class="form-control"  placeholder="请输入您的常用联系方式…" /></div>
			      <span class="help-block form-text"></span>
			    </div>
			     
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
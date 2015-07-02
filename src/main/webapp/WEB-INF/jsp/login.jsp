<%@ page language="java" contentType="text/html; charset=UTF-8" 
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>迷你小网站</title>
    <link type="text/css" rel="stylesheet" href="<c:url value="/packages/bootstrap/css/bootstrap.min.css" />" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/bootstrap/css/bootstrap-theme.min.css" />" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/styles/css/normalize.css" /> " />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/styles/css/docs.css" />" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/packages/styles/css/main.css" />" />
	
<script language="text/JavaScript">
function logincheck(){
	if(isNull(login.userName.value)){
		alter("用户名不可以为空");
		return false;
	}
	
	if(isNull(login.password.value)){
		alter("密码不可以为空");
		return false;
	}
}

function isNull(str) {
	if( str == "") return true;
	var re = "^[ ]+$";
	var reg = new RegExp(re);
	return reg.test(str); 
}
</script>
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
	<c:if test="${!empty error}">
    	<font color="red"><c:out value="${error}"/></font>
	</c:if>
	<form name="login" class="bs-docs-example" action="<c:url value="/user/loginCheck"/>"  method="post" onsubmit="return logincheck()">
		<div>
			<label class="form-text">
				<a href="<c:url value="/common/register" />">立即注册?</a>
			</label>
		</div>
	  <fieldset>
		  <legend> Login </legend>
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
	    
	    <div > 
			 <input type="Submit" class="btn button" value="Submit" />
			 <button type="reset" class="btn">Reset</button>
		</div>
	  </fieldset>
	</form>
	</div>
	</div>
	</div>
</body>
</html>

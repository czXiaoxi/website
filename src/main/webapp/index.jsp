<%-- <%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <base href="<%=basePath%>">

    <title>loading...</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>
<script>
    window.location.href = "<c:url value="/common/login" />";
</script>
</html>
  --%>
 <!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link type="text/css" rel="stylesheet" href="/packages/bootstrap/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="/packages/bootstrap/css/bootstrap-theme.min.css" />
<link type="text/css" rel="stylesheet" href="/styles/css/normalize.css" />
<link type="text/css" rel="stylesheet" href="/styles/css/docs.css" />
<link type="text/css" rel="stylesheet" href="/styles/css/main.css" />
</head>
<body>
<body>
 <div class="nav navbar-inverse navbar-fixed-top" >
      <div class="container">
        <div class="navbar-collapse collapse" role="navigation" style="margin-top: -8px">
          <ul class="nav navbar-nav" style="font-size: 14px;">
            <li class="dropdown" style="margin-left: -20px;">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">配置<b class="caret"></b></a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">管理中心<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li>
                  <a href="/html/job_list.html" target="_blank">调度管理</a>
                </li>
                <li>
                  <a href="/html/data_dictionary.html" target="_blank">数据字典</a>
                </li>
              </ul>
            </li>
             <li>
            	<a href="/html/operation_analysis.html" >经营分析</a>
            </li>
            <li>
            	<a href="/html/decision_center.html" >决策中心</a>
            </li>
            <li><a href="#">数据提取</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right hidden-sm" style="font-size: 14px">
          	 	<li>
          	 		<a href="/html/service_center.html">服务大厅</a>
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
				<li><a href="/html/job_list.html">调度管理<i class="glyphicon glyphicon-chevron-right" style="float: right;color: #e5e5e5;"></i></a></li>
		        <li><a href="/html/data_dictionary.html">数据字典<i class="glyphicon glyphicon-chevron-right" style="float: right;color: #e5e5e5;"></i></a></li>
	        </ul>
	    </div>
	    <div class="col-md-offset-3" style="padding-left: 30px;margin-top: 30px">	
			<form class="bs-docs-example" action="http://localhost:8080/dataxsrv/rest/scheduling/addjob" method="post">
			  <fieldset>
			    <legend>创建调度任务（Job）</legend>
			    <div class="form-group">
			      <label class="col-md-2 form-text">Job编号</label>
			      <div class="col-md-4"><input type="text"  class="form-control" placeholder="请输入调度任务编号…" /></div>
			      <span class="help-inline form-text">形如J0120141104，第1位为保留字母J，接下来2位为创建Job的当日顺序码，后8位为创建日期</span>
			    </div>
			    
			    <div class="form-group">
			      <label class="col-md-2 form-text">Job名称</label>
			      <div class="col-md-4"><input type="text"  class="form-control" placeholder="请输入调度任务名称…" /></div>
			      <span class="help-block form-text"></span>
			    </div>
			    
			    <div class="form-group clearfix">
			      <label class="col-md-2 form-text">计算任务</label>
			      <div class="col-md-4">
			        <div class="input-group" style="margin-bottom: 15px">
			          <input type="text"  class="form-control" placeholder="请输入计算任务名称…" />
			          <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
			          <span class="input-group-addon"><i class="glyphicon glyphicon-minus"></i></span>
			        </div>
			        <div class="input-group">
			          <input type="text"  class="form-control" placeholder="请输入计算任务名称…" />
			          <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
			          <span class="input-group-addon"><i class="glyphicon glyphicon-minus"></i></span>
			        </div>
			      </div>
			      <span class="help-block form-text"></span>
			    </div>
			    <div class="form-group">
			      <label class="col-sm-2 form-text">开始日期</label>
			      <div class="col-md-4">
			        <div class="input-group">
			          <input type="text" class="form-control" placeholder="" />
			          <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
			        </div>
			      </div>
			      <span class="help-block form-text">任务执行开始时间，必填</span>
			    </div>
			    
			    <div class="form-group">
			      <label class="col-sm-2 form-text">结束时间</label>
			      <div class="col-md-4">
			        <div class="input-group">
			          <input type="text"  class="form-control" placeholder="" />
			          <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
			        </div>
			      </div>
			      <span class="help-block form-text">任务执行结束时间，选填</span>
			    </div>
			        
			    <div class="form-group">
			      <label class="col-sm-2 form-text">Cron表达式</label>
			      <div class="col-md-4"><input type="text" class="form-control" placeholder="请输入Cron表达式…" /></div>
			      <span class="help-block form-text"></span>
			    </div>
			    
			    <button type="submit" class="btn btn-success">Submit</button>
			  </fieldset>
			</form>
		</div>
	</div>
</div>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
</html>
 
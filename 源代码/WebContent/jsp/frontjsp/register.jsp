<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/frontcss/register.css">
	<script type="text/javascript" src="<%=basePath%>js/jQuery/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/frontjs/register.js"></script>
  </head>
  <body>
  	<jsp:include page ="header.jsp" />
      <div class="container">
      	<div style="width:1140px;margin:0 auto;">
      		<div class="registerheader">
	      		<h2 class="registerh1">欢迎游客注册</h2>
	      	</div>
	      	<div class="regcontent">
	      		<div class="form-horizontal">
		    		<div class="form-group">
			        	<label class="col-lg-2 control-label bigsize">用户名：</label>
			        	<div class="col-lg-4">
			        		<input type="text" id="username" name="username" value="" class="form-control" placeholder="请输入用户名" />
			        	</div>
			        </div>
			        <div class="form-group">
			        	<label class="col-lg-2 control-label bigsize">密码：</label>
			        	<div class="col-lg-4">
			        		<input type="password" id="password" name="password" value="" class="form-control" placeholder="请输入密码" />
			        	</div>
			        </div>
			        <div class="form-group">
			        	<label class="col-lg-2 control-label bigsize">确认密码：</label>
			        	<div class="col-lg-4">
			        		<input type="password" id="passwordtwo" name="passwordtwo" value="" class="form-control" placeholder="请再次输入密码" />
			        	</div>
			        </div>
			        <div class="form-group">
			        	<label class="col-lg-2 control-label bigsize">邮箱：</label>
			        	<div class="col-lg-4">
			        		<input type="text" id="email" name="email" value="" class="form-control" placeholder="请输入邮箱" />
			        	</div>
			        </div>
	    		</div>
	    		<br/>
	    		<div style="padding-left: 195px;">
	    			<button type="button" class="btn btn-primary" onclick="register()">注册</button>&nbsp;
	  				<button type="reset" class="btn btn-danger"  onclick="resetSelectCase()">重置</button>
	    		</div>
	      	</div>
      	</div>
      </div> 
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>售后服务</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/frontcss/aftersales.css">
<script type="text/javascript" src="<%=basePath%>js/jQuery/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=basePath%>js/frontjs/addaftersales.js"></script>
</head>
<%
String id=request.getParameter("id");
String userid=request.getParameter("userid");
String goodsid=request.getParameter("goodsid");
%>
<body>
	<jsp:include page ="header.jsp" />
	<div class="container">
		<div class="aftersaless">
			<h3>售后服务</h3>
			<form action ="insertAftersales" id="forms" method="POST">
			<div class="form-horizontal checkgoods">
			<div class="col-sm-12">
       			<div class="form-group col-sm-6">
       				<input type="hidden" id="id" name="id" value="<%=id%>">
       				<input type="hidden" id="userid" name="userid" value="<%=userid%>">
       				<input type="hidden" id="goodsid" name="goodsid" value="<%=goodsid%>">
	                <label class="col-sm-4 control-label">珠宝类型:</label>
	                <div class="col-sm-8">
	                    <select id="type" name="type" class="form-control">
				    		<option value="">全部</option>
				    		<option value="1">换货</option>
				    		<option value="2">退货</option>
				    	</select>   
	                </div>
	            </div>
	        </div>
	        <div class="col-sm-12">
       			<div class="form-group col-sm-12">
	                <label class="col-sm-2 control-label">描述:</label>
	                <div class="col-sm-9">
	                    <textarea class="form-control" name="cause" id="cause"></textarea>
	                </div>
	            </div>
       		</div>
			<div class="clearfix"></div>	
	        <div style="margin-left:220px;">
               	<input type="button" onclick="checkaftersales()" value="提交" class="btn btn-primary" />
            </div>
			</div>
			</form>
		</div>	
	</div>
</body>
</html>
<%@page import="com.hand.ssm.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">

<title>update</title>
<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">13048 李婧</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<%=request.getContextPath()%>/quit"
					onclick="javascript:return confirm('确定要退出吗！')">欢迎&nbsp;&nbsp; <%=request.getSession().getAttribute("success")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</a></li>
			</ul>

		</div>
	</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#">Overview <span
							class="sr-only">(current)</span></a></li>
					<br />
					<li><a href="<%=request.getContextPath()%>/views/login.jsp">登录</a>
					</li>
					<li><a href="#">修改</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

				<h3 class="sub-header">基本信息</h3>
				<br />
				<div class="table-responsive">
					<table class="table table-bordered">
						<form class="form-horizontal"
							action="<%=request.getContextPath()%>/update" method="post">
							<input type="hidden" name="id" class="form-control"
								style="width: 400px;" value="${edit.customerId}">
							<div class="form-group">
								<label class="col-sm-2 control-label">First Name</label>
								<div class="col-sm-10">
									<input type="text" name="fName" class="form-control"
										style="width: 400px;" value="${edit.firstName}">
								</div>
							</div>
							<br /> <br /> <br />
							<div class="form-group">
								<label class="col-sm-2 control-label">Last Name</label>
								<div class="col-sm-10">
									<input type="text" name="lName" class="form-control"
										style="width: 400px;" value="${edit.lastName}">
								</div>
							</div>
							<br /> <br /> <br />
							<div class="form-group">
								<label class="col-sm-2 control-label">Email</label>
								<div class="col-sm-10">
									<input type="text" name="email" class="form-control"
										style="width: 400px;" value="${edit.email}">
								</div>
							</div>
							<br /> <br /> <br />
							<div class="form-group">
								<label class="col-sm-2 control-label">Address</label>
								<div class="col-sm-10">
									<%-- <input type="text" name="address" class="form-control"
										style="width: 400px;" value="${edit.address}"> --%>
									<select name="addressId">
										<c:forEach items="${site}" var="address">
											<c:if test="${address.addressId==edit.addressId}">
												<option value="${address.addressId}" selected>${address.address}</option>
											</c:if>
											<c:if test="${address.addressId!=edit.addressId}">
												<option value="${address.addressId}">${address.address}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
							<br /> <br /> <br />
							<div class="form-group">
								<label class="col-sm-2 control-label">&nbsp;</label>
								<div class="col-sm-10">
									<input type="submit" name="insert" value="修改">&nbsp;&nbsp;&nbsp;
									<input type="reset" name="cancel" value="取消">
								</div>
							</div>
						</form>
					</table>
				</div>
			</div>
		</div>
	</div>

	<script
		src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>

</html>
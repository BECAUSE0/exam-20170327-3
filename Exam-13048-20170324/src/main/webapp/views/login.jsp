<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	padding-top: 40px;
	padding-bottom: 50px;
	background-color: #f5f5f5;
	background-image: url(../image/a.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

.form-signin {
	max-width: 350px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #F5F5F5;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	margin-top: 120px;
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin input[type="text"], .form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}

</style>
<title>login</title>
</head>
<body  >
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">13048 李婧</a>
		</div>
	</div>
	<div class="container">
		
		<form class="form-signin" action="<%=request.getContextPath()%>/login" method="post">
			<h2 class="form-signin-heading">电影租赁管理系统</h2><br />
			用户名:&nbsp;&nbsp;<input type="text" name="user" class="input-block-level"
				placeholder="User Name" required="required" > <br />&nbsp;&nbsp;&nbsp;密码：<input type="password"
				name="pswd" class="input-block-level" placeholder="Password" required="required"><br />
			<div align="center"><button class="btn btn-large btn-primary" type="submit" >登录</button></div>
		</form>
		
	</div>

	<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>
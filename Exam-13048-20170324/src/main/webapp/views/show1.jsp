<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<style type="text/css">
	#d1{
		float: left;
	}
	#d2{
		float: right;
	}
}
</style>
<title>show</title>
</head>
<body>
	<center>
		<table class="table table-bordered">
			<tr>
				<td>
					<div id="d1">客户列表</div>
					<div id="d2">
						<input type="button" value="新增" id="add" />
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<table class="table table-striped">
						<tr>
							<th>操作</th>
							<th>Customer Id</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Address</th>
							<th>Email</th>
							<th>Last Update</th>
						</tr>

						<c:forEach items="${list}" var="cust">
							<tr>
								<th>|</th>
								<th><input value="${cust.customerId}"
									style="border-style: none" readonly /></th>
								<th><input value="${cust.firstName}"
									style="border-style: none" readonly /></th>
								<th><input value="${cust.lastName}"
									style="border-style: none" readonly /></th>
								<th><input value="${cust.address}"
									style="border-style: none" readonly /></th>
								<th><input value="${cust.email}" style="border-style: none"
									readonly /></th>
								<th><input value="${cust.lastUpdate}"
									style="border-style: none" readonly /></th>
							</tr>
						</c:forEach>
					</table>
				</td>
			</tr>
			<tr>
				<td><div align="right">
						<input type="button" value="首页" id="first" /> <input
							type="button" value="上一页" id="before" /> <input type="button"
							value="下一页" id="next" /> <input type="button" value="末页"
							id="last" />
					</div></td>
			</tr>
		</table>

	</center>
	<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>
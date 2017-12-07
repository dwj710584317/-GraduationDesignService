
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/my-css.css">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

</head>

<body background="1.jpg">
	<!--背景图片-->

	<div class="container">

		<form class="form-signin">
			<h2 class="form-signin-heading ">帐号密码登录</h2>
			<label for="inputEmail" class="sr-only">帐号</label> <input
				type="email" id="inputEmail" class="form-control"
				placeholder="输入您的帐号名称" required autofocus> <label
				for="inputPassword" class="sr-only">密码</label> <input
				type="password" id="inputPassword" class="form-control"
				placeholder="请输入您的密码" required>
			<div class="checkbox">
				<label> <input type="checkbox" value="remember-me">
					记住密码
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
		</form>

	</div>
	<!-- /container -->

</body>
</html>




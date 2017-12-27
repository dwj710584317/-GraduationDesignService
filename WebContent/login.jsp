
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
<title>注册</title>

<!-- <link href="css/signin.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrapValidator.css" rel="stylesheet">
<script type="text/javascript" src="jq/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
 -->




<link rel="stylesheet" href="css/login.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css" />

<script type="text/javascript" src="jq/jquery.cookie.js"></script>
<script type="text/javascript" src="jq/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
</head>

<body>



	<body background="img/login.jpg">

	<div class="container">
		<div class="row ">
			<div class="col-md-offset-3 col-md-6">
				<form class="form-horizontal" id="defaultForm" method="post"
					action="login_action.jsp">
					<span class="heading">用户登录</span>
					<div class="form-group">
						<input type="text" class="form-control" id="inputEmail3"
							placeholder="电子邮件" name="usermail"> <i
							class="fa fa-user"></i>
					</div>
					<div class="form-group help">
						<input type="password" class="form-control" id="inputPassword3"
							placeholder="密　码" name="userpassword"> <i
							class="fa fa-lock"></i> <a href="#" class="fa fa-question-circle"></a>
					</div>
					<div class="form-group">
						<div class="main-checkbox">
							<input type="checkbox" value="None" id="checkbox1" name="check" />
							<label for="checkbox1"></label>
						</div>
						<span class="text">记住密码</span>
						<button type="submit" class="btn btn-primary">登录</button>
						<button type="button" class="btn btn-primary"
							onclick="javascript:window.location.href='register.jsp'">注册</button>
					</div>
				</form>
			</div>
		</div>
	</div><script type="text/javascript">
		$(document).ready(function() {
			/**
			 * 下面是进行插件初始化
			 * 你只需传入相应的键值对
			 * */
			$('#defaultForm').bootstrapValidator({
				message : 'This value is not valid',
				feedbackIcons : {/*输入框不同状态，显示图片的样式*/
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {/*验证*/
					userpassword : {
						message : '密码无效',
						validators : {
							notEmpty : {
								message : '密码不能为空'
							},
							stringLength : {/*长度提示*/
								min : 6,
								max : 30,
								message : '用户名长度必须在6到30之间'
							}
						}
					},
					usermail : {/*键名username和input name值对应*/
						validators : {
							notEmpty : {/*非空提示*/
								message : '邮箱不能为空'
							},
							emailAddress : {
								message : '请输入正确的邮箱地址'
							}
						}
					}
				}
			});
		});
	</script>
</body>


</html>




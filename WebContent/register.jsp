
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

<!-- <link href="css/signin.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrapValidator.css" rel="stylesheet">
<script type="text/javascript" src="jq/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
 -->



  
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/bootstrapValidator.css"/>

    <script type="text/javascript" src="jq/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/my-js.js"></script>
</head>

<body>

<div class="container ">
		<!-- class都是bootstrap定义好的样式，验证是根据input中的name值 -->
            <form id="defaultForm" method="post" class="form-horizontal form-signin"  action="register_action.jsp">
                <!-- 下面这个div必须要有，插件根据这个进行添加提示 -->
                <div class="form-group">
                    <label class="col-lg-3 control-label">注册邮箱</label>
                    <div class="col-lg-5">
                        <input type="text" placeholder="请输入邮箱"  class="form-control" name="usermail" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">设置密码</label>
                    <div class="col-lg-5">
                        <input type="password" placeholder="请输入密码"  class="form-control" name="userpassword" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">确认密码</label>
                    <div class="col-lg-5">
                        <input type="password" placeholder="请再次输入密码" class="form-control" name="userpassword" />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-9 col-lg-offset-3">
                        <button type="submit" class="btn btn-primary">注册</button>
                    </div>
                </div>
            </form>
	</div>

<script type="text/javascript">
$(document).ready(function() {
    /**
     * 下面是进行插件初始化
     * 你只需传入相应的键值对
     * */
    $('#defaultForm').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {/*输入框不同状态，显示图片的样式*/
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {/*验证*/
            	userpassword: {
                    message:'密码无效',
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {/*长度提示*/
                            min: 6,
                            max: 30,
                            message: '用户名长度必须在6到30之间'
                        }
                    }
                },
                usermail: {/*键名username和input name值对应*/
                    validators: {
                        notEmpty: {/*非空提示*/
                            message: '邮箱不能为空'
                        },
                        emailAddress: {
                            message: '请输入正确的邮箱地址'
                        }
                    }
                }
            }
        });
});
</script>
</body>
</html>




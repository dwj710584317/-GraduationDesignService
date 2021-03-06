
<%@page import="db.DBResultGetImage"%>
<%@page import="bean.HomeProduct"%>
<%@page import="db.DBResultGetUser"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-CN">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>木匠神话</title>

<link rel="stylesheet" type="text/css" href="css/my-css2.css">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">


<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>


<script src="js/myjs.js" type="text/javascript" language="javascript"></script>

<script type="text/javascript">
	jQuery(document)
			.ready(
					function($) {
						$('div.data_div')
								.click(
										function() {
											var id = $(this).attr("id");
										
											
											var xmlhttp;
											if (window.XMLHttpRequest) {
												// IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
												xmlhttp = new XMLHttpRequest();
											} else {
												// IE6, IE5 浏览器执行代码
												xmlhttp = new ActiveXObject(
														"Microsoft.XMLHTTP");
											}
											xmlhttp.onreadystatechange = function() {
												if (xmlhttp.readyState == 4
														&& xmlhttp.status == 200) {
													alert(xmlhttp.responseText);
												}
											}
											xmlhttp.open("GET",
													"get_products.jsp?id="
															+ id, true);
											xmlhttp.send();
										});
					});
</script>

</head>
<body>
	<!--顶部菜单-->
	<div class="top_menu">
		<!--<div class="top_menuBg"></div>-->

		<div class="topBarArea">
			<%
				if (session.getAttribute("usermail") == null) {
					out.println("<div class=" + "top_menu_left clear" + "><a href="
							+ "login.jsp" + ">登录</a> <em>|</em> <a href="
							+ "register.jsp" + ">免费注册</a></div>");
					System.out.print("session==null");
				} else {
					out.print("<div class=" + "top_menu_left clear"
							+ "><p><span>欢迎您：</span>");
					out.print("<span>" + session.getAttribute("usermail")
							+ "</span>");
					out.print("<a href=" + "#" + "> 会员中心</a><em>|</em><a href="
							+ "quit.jsp" + ">退出</a></p></div>");
					System.out.print(session.getAttribute("usermail"));
				}
			%>

			<div class="top_menu_right clear">
				<a onclick="SetHome(window.location)" href="javascript:void(0)">设为首页</a>
				<em>|</em> <a onclick="AddFavorite(window.location,document.title)"
					href="javascript:void(0)">加入收藏</a> <em>|</em> <a href="#">在线留言</a>
				<em>|</em> <a href="baidumap.html">企业位置</a> <em>|</em> <a href="#">手机站</a>
			</div>

		</div>





	</div>
	<!--结束顶部菜单-->
	<!-- Static navbar -->
	<div style="background: white">
		<nav class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<img class="navbar-brand" src="img/logo.png">
			</div>
			<div id="navbar" class="navbar-collapse collapse img-responsive">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">首页</a></li>
					<li><a href="#about"> 家具产品</a></li>
					<li><a href="#contact">设计团队</a></li>
					<li><a href="#contact">关于我们</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">更多 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">人才招聘</a></li>
							<li><a href="#">企业位置</a></li>
						</ul></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
		</nav>
	</div>
	<!--轮播图-->
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- 轮播指标 -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<!-- /*<li data-target="#carousel-example-generic" data-slide-to="2"></li>*/-->
		</ol>
		<!--  图片区域 -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img
					src="http://aimg3.dlszywz.com/ev_user_module_content_tmp/2016_02_14/tmp1455427036_1062450_s.png"
					width="100%" alt="...">

			</div>
			<div class="item">
				<img
					src="http://aimg3.dlszywz.com/ev_user_module_content_tmp/2016_02_14/tmp1455426794_1062450_s.png"
					width="100%" alt="...">
			</div>
		</div>
		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!--轮播图结束-->
	<!--主体-->
	<div class="mainArea">
		<div class="addContainer">
			<!--家具产品-->
			<div class="customModuleRow">
				<ul>
					<li><a href="#" class="jiaju">家具产品</a>
						<ul class="Furnitureproducts clear">
							<li><a href="#"><strong>餐厅家具</strong></a></li>
							<li><a href="#"><strong>客厅家具</strong></a></li>
							<li><a href="#"><strong>书房家具</strong></a></li>
							<li><a href="#"><strong>儿童家具</strong></a></li>
							<li><a href="#"><strong>卧室家具</strong></a></li>
						</ul></li>
				</ul>
			</div>
			<!--结束家具产品-->
			<!--产品-->
			<div class="customModule_product">
				<div class="container productimage">
					<div class="container productimage">
						<!-- 读取数据到网页 -->
						<%
							DBResultGetImage dbResultGetImage = new DBResultGetImage();
							List<HomeProduct> homeList = dbResultGetImage.GetLoginInfo(request);
							for (int index = 0; index < homeList.size(); index++) {
								if (index == 0) {
									out.println("<div class=" + "row " + ">");
								}
								if (index % 4 == 0) {
									out.println("</div>");
									out.println("<div class=" + "row " + ">");
								}

								//out.println("<div class=" + "col-lg-3 " + " id="
								//		+ homeList.get(index).imageUrl + " onclick="+"alert("+"点击"+"")" + ">");
								String a = "col-lg-3 data_div";
								out.println("<div class=" + "\"" + "col-lg-3  data_div" + "\""
										+ "id=" + homeList.get(index).getImageUrl() + ">");

								out.println("<a href=" + "#" + "><img class="
										+ "product_border img-responsive " + "src="
										+ homeList.get(index).getImagePath() + "></a>");
								out.println("<div class=" + "pic-attr" + ">");
								out.println("<div class=" + "pic-price" + ">");
								out.println("<span class=" + "newPrice" + "> <em>¥4379</em>");
								out.println("</span>");
								out.println("</div>");
								out.println("<h3 class=" + "pic-title" + ">");
								out.println("<a href=" + "#" + ">"
										+ homeList.get(index).getImageTitle() + "</a>");
								out.println("</h3>");
								out.println("</div>");
								out.println("</div>");

							}
						%>
					</div>
				</div>
			</div>
			<!--结束产品-->
			<!-- 新闻公告，关于我们-->
			<div class="customModuleRowInner ">
				<div class="col-lg-4 customModule" style="width: 420px;">
					<div class="MoHead">
						<strong class="NameTxt"><a href="#">新闻公告</a></strong> <span
							class="MoMore clear"><a href="#">更多</a></span>
					</div>
					<div class="MoBody">
						<ul class="inner">
							<li><a href="#" title="定制家具设计师需要具备哪些素质和技能?">定制家具设计师需要具备哪些素质和技能</a></li>
							<li><a href="#" title="《木家具中有害物质限量国家标准》修订已起草完成">《木家具中有害物质限量国家标准》修订已起草完成</a></li>
							<li><a href="#" title="定制家具的时候应该注意些什么呢？">定制家具的时候应该注意些什么呢？</a></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-8 customModule" style="width: 720px">
					<div class="MoHead">
						<strong class="NameTxt"><a href="#">关于我们</a></strong> <span
							class="MoMore clear"><a href="#">更多</a></span>
					</div>
					<div class="MoBody">
						<div class="mobody">
							<a href="#"><img class="pics clear"
								src="img/tmp1455439477_1062450_s.png"></a>
						</div>

						<div class="text">
							<p>xx家具品牌在充满着对欧洲自由主义生活态度和西方视觉审美艺术的美好敬意下华丽诞生！在走过的22年岁月里，
								xx家具以稳健的经营、雄厚的实力、成熟的产品以及星级的服务，已发展成为集设计、生产、销售于一体的大型、
								规范化家具集团。现为中国家具协会副理事长单位，拥有"中国名牌"、"中国驰名商标"、"中国环境标志（即十环环保认证）"、
								政府指定采购品牌等多项国家权威荣誉。在职员工3,000多名，拥有4个家具生产基地，40万平米的厂区规模，销售网络覆盖全国拥有近600家专卖店，
								其中面积在3000平米以上的独立专卖店有四十余家。</p>
						</div>

					</div>
				</div>
			</div>

			<!-- 行业动态-->
			<div class="CModulePR">
				<div class="col-lg-7 customhangye"
					style="width: 600px; height: 546px">
					<div class="MoHead">
						<strong class="NameTxt"><a href="#">行业动态</a></strong> <span
							class="MoMore clear"><a href="#">更多</a></span>
					</div>
					<div class="MoBody" style="margin-left: -40px">
						<ul class="hangyedongtai">
							<li class="hydtimg">
								<div>
									<a href="#"><img class="hydtimg_one clear"
										src="img/_2334563.jpg"></a>
									<div class="hydt-attr">
										<h3 class="hydt-title ">
											<a href="#">定制家具的时候应该注意些什么呢？</a>
										</h3>
										<div class="hydt-intro">
											<p>定制家具可以根据家里的户型以及风格做出很好的调配，从而可以让家里变得协调而又个性十足，这都是大众化家具所没有的优势，那么在选购定制家具的时候应该注意些什么呢？对此本文会做出详细介绍。</p>
										</div>
									</div>
								</div>

							</li>
							<li class="hydtimg">
								<div>
									<a href="#"><img class="hydtimg_one clear"
										src="img/_7824130.png" style="display: inline-block;"></a>
									<div class="hydt-attr">
										<h3 class="hydt-title ">
											<a href="#">《木家具中有害物质限量国家标准》修订已起</a>
										</h3>
										<div class="hydt-intro">
											<p>日前,国家家具及室内环境质量监督检验机构称，《木家具中有害物质限量国家标准》修订已起草完成。</p>
										</div>
									</div>
								</div>

							</li>

							<li class="hydtimg">
								<div>
									<a href="#"><img class="hydtimg_one clear"
										src="img/_1030851.png"></a>
									<div class="hydt-attr">
										<h3 class="hydt-title ">
											<a href="#">定制家具设计师需要具备哪些素质和技能</a>
										</h3>
										<div class="hydt-intro">
											<p>一个好的家具设计师才能设计出好的家具，那么作为优秀的定制家具设计师该具备的技能和素质有哪些呢？</p>
										</div>
									</div>
								</div>

							</li>
						</ul>

					</div>
				</div>
				<div class="col-lg-5 customtuandui"
					style="width: 562px; height: 550px">
					<div class="MoHead">
						<strong class="NameTxt"><a href="#">设计师团队</a></strong> <span
							class="MoMore clear"><a href="#">更多</a></span>
					</div>
					<div class="MoBody">
						<ul class="sjtdul">
							<li><img src="img/_9779107.png">
								<div class="sjtd-title">
									<h3 class="sjtd-name">
										<a>首席设计师(Deanay.Wang)</a>
									</h3>
								</div></li>
							<li><img src="img/_9905005.png">
								<div class="sjtd-title">
									<h3 class="sjtd-name">
										<a>高级设计师(Linso.Liu)</a>
									</h3>
								</div></li>
							<li><img src="img/_8413981.png">
								<div class="sjtd-title">
									<h3 class="sjtd-name">
										<a>创意设计师(Liang.Yang)</a>
									</h3>
								</div></li>
							<li><img src="img/_5979718.png">
								<div class="sjtd-title">
									<h3 class="sjtd-name">
										<a>创意设计师(Liang.Yang)</a>
									</h3>
								</div></li>
						</ul>
					</div>
				</div>
			</div>


			<!--家具实景-->
			<div class="customModule_jiajushijing">
				<div class="jjsj_title">
					<strong class="NameTxt"><a href="#">新闻公告</a></strong> <span
						class="MoMore clear"><a href="#">更多</a></span>
				</div>
				<div class="jjsj_body">
					<div class="jjsj_leftimg clear">
						<a><img src="img/_8541532.png"
							style="width: 92%; height: 129px"></a>
						<div class="jjsj_leftbtoom">
							<a><img src="img/_2862555.png"
								style="width: 92%; height: 129px"></a>
						</div>
					</div>

					<div class="jjsj_rightimg">
						<a><img src="img/_4235253.png" style="width: 92%"></a>
						<div class="jjsj_leftbtoom">
							<a><img src="img/_7442182.png" style="width: 92%"></a>
						</div>
					</div>

					<div class="jjsj_centerimg clear">
						<a><img src="img/tmp1455435599_1062450_s.png"
							style="height: 277px"></a>
					</div>
				</div>
			</div>


			<div class="footer" id="footer">
				<div class="footerConArea">
					<div class="footerCon">
						<!--FOOTER NAV START-->
						<div class="footerNav" id="footer_nav">
							<a href="#">关于我们</a> <em>|</em> <a href="#">经典案例</a> <em>|</em> <a
								href="#">新闻动态</a> <em>|</em> <a href="#">服务项目</a> <em>|</em> <a
								href="#">咨询团队</a> <em>|</em> <a href="#">联系我们</a>
						</div>
						<div class="copyright" id="copyright">
							<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Copyright &#169;
								2014-2025,www.xxxxx.com,All rights reserved &nbsp; &nbsp; &nbsp;
								&nbsp;</p>
							<center id="c2"></center>
						</div>
						<!--COPYRIGHT START-->
					</div>
				</div>
			</div>


		</div>
	</div>





	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>




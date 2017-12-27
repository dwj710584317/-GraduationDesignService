
<%@page import="db.DBResultGetUser"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	DBResultGetUser dbResultSet = new DBResultGetUser();
	ResultSet result = dbResultSet.GetRegisterInfo(request);



	try {
		
		if (!result.next()) {
			dbResultSet.InsertUserInfo();
			out.println("<HTML>");
			out.println("<BODY>");
			out.println("<H1>注册成功</H1> "); //注意这边的解析！！！  
			out.println("<a href=\"" + path + "/index.jsp\">返回首页</a> "); //注意这边的解析！！！  
			out.println("  </BODY>");
			out.println("</HTML>");
		} else {
			out.println("<HTML>");
			out.println("<BODY>");
			out.println("<H1>该邮箱地址已被注册</H1> "); //注意这边的解析！！！  
			out.println("<a href=\"" + path
					+ "/register.jsp\">返回注册页面</a> "); //注意这边的解析！！！  
			out.println("  </BODY>");
			out.println("</HTML>");
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			dbResultSet.Close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
%>

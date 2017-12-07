<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//上级页面传来的数据
	String userMail = request.getParameter("usermail");
	String userPassword1 = request.getParameter("userpassword");
	//加载驱动程序   
	String driverName = "com.mysql.jdbc.Driver";
	//数据库信息  
	String userName = "root";
	//数据库名   
	String dbName = "graduation_design";

	String dbPasswd = "123456";
	//表名   
	String tableName = "user_info";
	String url = "jdbc:mysql://localhost/" + dbName + "?user="
			+ userName + "&password=" + dbPasswd;
	Connection con = null;// 创建一个数据库连接 
	PreparedStatement pre = null;// 创建预编译语句对象，一般都是用这个而不用Statement 
	ResultSet result = null;// 创建一个结果集对象 
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();//加载Oracle驱动程序 
		String sql = "select * from user_info where USER_EMAIL=?";
		con = DriverManager.getConnection(url);// 获取连接 
		System.err.println("连接数据库成功");
		pre = con.prepareStatement(sql);// 实例化预编译语句 
		pre.setString(1, userMail);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引 
		result = pre.executeQuery();// 执行查询，注意括号中不需要再加参数 
		if (!result.next()) {
			sql = "insert into user_info(USER_EMAIL,USER_PASSWORD) values(?,?)";// 预编译语句，“？”代表参数 
			pre = con.prepareStatement(sql);// 实例化预编译语句 
			pre.setString(1, userMail);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引 
			pre.setString(2, userPassword1);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引 
			pre.executeUpdate();// 执行
			out.println("<HTML>");
			out.println("<BODY>");
			out.println("<H1>注册成功</H1> "); //注意这边的解析！！！  
			out.println("<a href=\"" + path + "/index.html\">返回首页</a> "); //注意这边的解析！！！  
			out.println("  </BODY>");
			out.println("</HTML>");
		} else {
			out.println("<HTML>");
			out.println("<BODY>");
			out.println("<H1>该邮箱地址已被注册</H1> "); //注意这边的解析！！！  
			out.println("<a href=\"" + path + "/register.jsp\">返回注册页面</a> "); //注意这边的解析！！！  
			out.println("  </BODY>");
			out.println("</HTML>");
		}
	}catch (Exception e)
    {
        e.printStackTrace();
    }finally{
    	try{
    		 // 逐一将上面的几个对象关闭，因为不关闭的话会影响性能、并且占用资源
            // 注意关闭的顺序，最后使用的最先关闭
            if (result != null)
                result.close();
            if (pre != null)
                pre.close();
            if (con != null)
                con.close();
            System.out.println("数据库连接已关闭！");
    	}catch(Exception e){
    		  e.printStackTrace();
    	}
    	
    }
	
%>

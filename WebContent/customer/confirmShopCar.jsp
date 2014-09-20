<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>confirmShopCar</title>
	<style>
		#a1{
			display:block;
			width:500px;
			height:30px;
			line-height:30px;
			vertical-align:middle;
			text-align:center;
			font-size:16px;
			font-weight:bold;
			color:blue;
			margin:auto;
			text-decoration:none;
		}
		#a2{
			display:block;
			width:500px;
			height:80px;
			line-height:80px;
			vertical-align:middle;
			text-align:center;
			font-size:30px;
			font-weight:bold;
			color:yellow;
			margin:auto;
		}
		#a3{
    	text-decoration:none;
    	font-size:14px;
    	color:gray;
    	margin-left:80px;
    	}
    	#a3:hover{text-decoration:underline;color:red;}
	</style>
  </head>
  
  <body>
  	<a href="confirmShopCar1.jsp" id="a3">前进</a>
  	<a href="aleft.jsp" id="a1">返回商城继续购物</a>
  	<a href="viewShopCar.jsp" id="a1">查看购物车</a>
    <%
     response.setContentType("text/html;charset=UTF-8");
   request.setCharacterEncoding("UTF-8");
  String chk[]=request.getParameterValues("chk");
 if(chk==null||chk.equals(""))
 {

 }
 else{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
	String sql="insert into shop_car values(?)";
	PreparedStatement psmt =conn.prepareStatement(sql);
	for(int i=0;i<chk.length;i++)
	{
		psmt.setString(1,chk[i]);	
		psmt.executeUpdate();
		
	}
	out.println("<a href='confirmShopCar1.jsp' id='a2'>已加入购物车，现在就去付款</a>");
	} 
%>
  </body>
</html>

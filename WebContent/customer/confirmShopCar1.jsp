<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>confirmShopCar1</title>
    <style type="">
    .p1{
    	width:250px;
    	height:50px;
    	font-size:30px;
    	font-weight:bold;
    	color:pink;
    	margin-left:auto;
    	margin-right:auto;
    	text-align:center;
    }
    .p2{
    	width:350px;
    	height:50px;
    	font-size:14px;
    	color:red;
    	margin-left:auto;
    	margin-right:auto;
    	margin-top:10px;
    	text-align:center;
    	}
    .p2 a{
    	font-weight:bold;
    	}
    	form{
    		width:80%;
			height:100%;
			margin:auto;
    	}
    	div{
    		width:100px;
			height:30px;
			font-size:30px;
			font-weight:bold;
			color:black;
			margin-right:auto;
			margin-left:auto;
			margin-top:20px;
			margin-bottom:20px;
    		}
    	span{
    		width:30px;
			height:30px;
			display:block;
			float:left;
			text-align:center;
    	}
    	.input1{
    		width:30px;
			height:30px;
			display:block;
			float:right;
    	}
    	.input2{
    		display:block;
    		width:200px;
			height:30px;
			line-height:80px;
			vertical-align:middle;
			text-align:center;
			font-size:20px;
			margin:auto;
    	}
    	a{
    	text-decoration:none;
    	font-size:14px;
    	color:gray;
    	margin-left:80px;
    	}
    	a:hover{text-decoration:underline;color:red;}
    </style>
  </head>
  
  <body>
  <a href="confirmShopCar.jsp">返回</a>
  <p class="p1">已选商品如下</p>
  <p class="p2">注意！！！不想支付的商品请在商品编号后面<a>点消对勾</a></p>
  <form action="shopCar.jsp">
   <%
    response.setContentType("text/html;charset=UTF-8");
   request.setCharacterEncoding("UTF-8");
			Class.forName("com.mysql.jdbc.Driver");		
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			String sql="select * from shop_car";
			PreparedStatement psmt =conn.prepareStatement(sql);
			ResultSet rs= psmt.executeQuery();
	while(rs.next())
	{
		
		%><div><span><% out.print(rs.getString(1));%></span>
		<input class="input1" checked type="checkbox" name="chk" value="<%=rs.getString(1)%>"> </div><%
	}
			%>
			<input class="input2" type="submit" value="确认付款">
			</form>
  </body>
</html>

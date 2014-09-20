<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%
 response.setContentType("text/html;charset=UTF-8");
   request.setCharacterEncoding("UTF-8");
			String pid[]= request.getParameterValues("chk");
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			String sql="delete from shop_car where chk=?";
			PreparedStatement psmt =conn.prepareStatement(sql);
			for(int i=0;i<pid.length;i++)
			{
				psmt.setString(1,pid[i]);
				psmt.executeUpdate();
			}

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>delete</title>
	<script language="javascript" type="text/javascript">
   			setTimeout("javascript:location.href='viewShopCar.jsp'", 400); 
	</script>
  </head>
  
  <body>
	删除成功
  </body>
</html>

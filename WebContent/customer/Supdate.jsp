<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<%
  response.setContentType("text/html;charset=UTF-8");
   request.setCharacterEncoding("UTF-8");
		String pid= request.getParameter("pid");
		String pname=request.getParameter("pname");
		String pprice=request.getParameter("pprice");
		String pmount=request.getParameter("pmount");
		String pseller=request.getParameter("pseller");
		String mailcost=request.getParameter("mailcost");
		 if(pid==null||pid.equals(""))
		 {

		 }
		 else{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			String sql="update production set pname=?,pprice=?,pmount=?,pseller=?,mailcost=? where pid=?";
			PreparedStatement psmt =con.prepareStatement(sql);
			psmt.setString(6,pid);
			psmt.setString(1,pname);
			psmt.setString(2,pprice);
			psmt.setString(3,pmount);
			psmt.setString(4,pseller);
			psmt.setString(5,mailcost);	
			psmt.executeUpdate();
		
	}

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改订购商品</title>
	<script language="javascript" type="text/javascript">
   			setTimeout("javascript:location.href='Saleft.jsp'", 400); 
	</script>
  </head>
  
  <body>
	修改成功
  </body>
</html>

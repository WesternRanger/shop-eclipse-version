<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<jsp:directive.page import="dao.Result"/>
<%
  response.setContentType("text/html;charset=UTF-8");
   request.setCharacterEncoding("UTF-8");
//("jdbc:mysql://localhost:3306/shujuku?user=root&password=root&useUnicode=true&characterEncoding=GB2312")%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>京东商城</title>
<style type="">
.form{
    width:100%;
	height:100%;
	margin:auto;
    }
#aa{
	height:30px;
	width:350px;
	margin-top:30px;
	float:left;
	}
#aa span{
	text-align:center;
	vertical-align:middle;
	line-height:30px;
	color:blue;
	font-size:14px;
	font-family:"黑体";
	font-weight:bold;
	height:30px;
	width:50px;
	float:left;
	}
#aa1{
	height:50px;
	width:650px;
	margin-left:-2px;	
	float:left;
	}
#aa1 span{
	text-align:center;
	vertical-align:middle;
	line-height:30px;
	font-size:13px;
	height:30px;
	width:50px;
	float:left;
	}
#aa1 span #first{
	width:20px;
	height:20px;
	}

#aa1 span a,.viewC{
	text-decoration:none;
	font-size:13px;
	}
#aa1 span a:hover{text-decoration:underline;color:red;}
a:hover{text-decoration:underline;color:red;}
</style>
</head>
<body>
<%
	String jspflag=request.getParameter("flag");							
	if("ins".equals(jspflag))
	{
		Result.addShopCar(request);
	}%>
  		<form  class="form" action="confirmShopCar.jsp" name="searchface">
  		<input type="button" value="将挑选结果添加至购物车" onclick="insmeth()">
		<input type="hidden" name="flag" value="">
		<!-- <input type="text" name="pageye" value="1">
		<input type="button" name="search" value="search" onclick="seameth()"> -->
		<script type="text/javascript">
			/*function seameth()
			{
				alert("sea run!");
				document.searchface.flag.value="sea";
				document.searchface.submit();
			}*/
			function insmeth()
			{
				document.searchface.flag.value="ins";
				document.searchface.submit();
			}
		</script>
				<a class="viewC" href="viewShopCar.jsp">查看购物车</a>
  		<!-- 行标 -->
  			<div id="aa">
				<span>选择</span>
				<span>编号</span> 
				<span>名称</span> 
				<span>售价</span> 
				<span>库存</span> 
				<span>运费</span> 
				<span>配件</span>
				
			</div>


<%
ResultSet rs=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");		
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			String sql="select * from production";
			PreparedStatement psmt =conn.prepareStatement(sql);
			rs= psmt.executeQuery();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
System.out.println("rs===" + rs);
ResultSetMetaData rsmd=rs.getMetaData();
int colcount = rsmd.getColumnCount();
while(rs.next())
{%>
		<!-- 内容行 -->
		<div id="aa1">
			<span><input type="checkbox" name="chk" value="<%=rs.getString(1) %>" id="first"></span>
			<%for(int j=1;j<=colcount;j++)
			{%>
			<span>
				<a href=""><%out.println(rs.getString(j));%></a>
			</span>
			<%}%>	
		</div>
<%}%>  
</form><!-- .form类至此结束 -->
</body>
</html>
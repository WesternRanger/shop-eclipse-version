<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>viewShopCar</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="">
	
#aa{
	height:35px;
	width:600px;
	margin-top:30px;
	border-bottom:1px black solid;
	margin:auto;
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
	width:100px;
	float:left;
	}
#aa1{
	height:50px;
	width:600px;
	margin:auto;
	}
#aa1 span{
	text-align:center;
	vertical-align:middle;
	line-height:30px;
	font-size:13px;
	height:30px;
	width:100px;
	display:block;
	}
#aa1 span #input1{
	width:18px;
	height:18px;
	}
.hrefa{
	font-size:13px;
	text-decoration:none;
	}
a:hover{text-decoration:underline;color:red;}
#scrollobj{
	white-space:nowrap;
	overflow:hidden;
	width:350px;
    height:50px;
    margin-left:auto;
    	margin-right:auto;
    	margin-top:50px;
    
}
scrollobj{
white-space:nowrap;
overflow:hidden;
width:45%;
margin-left:auto;
margin-right:auto;
font-size:30px;
color:red;
}
.span2{
    	font-size:30px;
    	font-weight:bold;
    	color:pink;
    	    }
	</style>
	
  </head>
  
  <body>
  	 <div id="scrollobj"><span class="span2">您的购物车（商品编号）</span></div>
  	<script>
		function scroll(obj){
			var tmp=(obj.scrollLeft)++;
			if(obj.scrollLeft==tmp) obj.innerHTML+=obj.innerHTML;
			if(obj.scrollLeft>=obj.firstChild.offsetWidth) obj.scrollLeft=0;
		}
		setInterval("scroll(document.getElementById('scrollobj'))",20);
	</script>
	<!--<DIV id="scrollobj"><span>欢迎来到welcome网页！</span></DIV>
<script language="javascript" type="text/javascript">

    function scroll(obj) {
        var tmp = (obj.scrollLeft)++;

        if (obj.scrollLeft==tmp) obj.innerHTML += obj.innerHTML;

        if (obj.scrollLeft>=obj.firstChild.offsetWidth) obj.scrollLeft=0;
    }
    setInterval("scroll(document.getElementById('scrollobj'))",20);

</script> -->
	
  	<a class="hrefa" href="aleft.jsp">返回商城继续购物</a>
  	
			<div id="aa">
				<span>编号</span> 
				<span>名称</span> 
				<span>售价</span> 
				<span>库存</span> 
				<span>运费</span> 
				<span>配件</span>
			</div>
			<form id="aa1" action="delete.jsp">
				
  <%
   response.setContentType("text/html;charset=UTF-8");
   request.setCharacterEncoding("UTF-8");
			Class.forName("com.mysql.jdbc.Driver");		
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop?user=root&password=root&useUnicode=true&characterEncoding=GB2312");
			String sql="select * from shop_car";
			PreparedStatement psmt =conn.prepareStatement(sql);
			ResultSet rs= psmt.executeQuery();
			while(rs.next())
			{%>
				<span><input id="input1" type="checkbox" name="chk" value="<%=rs.getString(1)%>"><% out.print(rs.getString(1));%></span>
			<%}%>
				<span><input type="submit" value="删除"></span>
		</form>
  </body>
</html>

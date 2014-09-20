<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>shopCar</title>
    <script src="../cssAndScript/jQuery.js"></script>
    <style>
    a{
    	text-decoration:none;
    	font-size:14px;
    	color:gray;
    	margin-left:100px;
    	margin-top:40px;
    	}
    a:hover{text-decoration:underline; color:red;}
    .span2{
    	display:block;
    	width:500px;
    	height:50px;
    	font-size:30px;
    	font-weight:bold;
    	color:pink;
    	margin-left:auto;
    	margin-right:auto;
    	margin-top:50px;
    }
    .all{
    	margin:auto;
    	width:100%;
    	height:50%;
    	
    }
#aa{
	height:30px;
	width:562px;
	margin-top:30px;
	border-bottom:1px black solid;
	float:left;
	}
#aa div{
	text-align:center;
	vertical-align:middle;
	line-height:30px;
	color:blue;
	font-size:14px;
	font-family:"黑体";
	font-weight:bold;
	height:30px;
	width:75px;
	float:left;
	
	}
#aa1{
	height:25px;
	width:562px;
	float:left;
	border-bottom:dotted yellow 3px;
	}
#aa1 div{
	text-align:center;
	vertical-align:middle;
	line-height:25px;
	font-size:14px;
	height:25px;
	width:75px;
	float:left;
	
	}
.divR{
	width:100%;
	height:50px;
	font-size:25px;
	font-family:"黑体";
	font-weight:bold;
	color:yellow;
	margin-left:auto;
    margin-right:auto;
	}
    </style>
    <script>
    	 $(document).ready(function(){
            function animateIt() {
                $(".divR").slideToggle("slow", animateIt);
            }
            animateIt();  
            })
    </script>
  </head>
  
  <body>
  <a href="confirmShopCar1.jsp">返回上一层</a>
  		<a href="aleft.jsp">返回京东手机商城继续购物</a>
  		<span class="span2">付款成功！您购买的商品如下：</span>
  		<div class="all">
			<div id="aa">
				<div>商品编号</div> 
				<div>商品名称</div> 
				<div>单位价格</div> 
				<div>购买数量</div> 
				<div>商品费用</div> 
				<div>附加费用</div>
			</div>
  		
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
			String sql="select * from production where pid=?";
			PreparedStatement psmt =conn.prepareStatement(sql);
			
			for(int i=0;i<chk.length;i++)
			{
				psmt.setString(1,chk[i]);	
				ResultSet rs= psmt.executeQuery();
				ResultSetMetaData rsmd=rs.getMetaData();
int colcount = rsmd.getColumnCount();
				while(rs.next())
				{%>
				<div id="aa1"><%
					for(int j=1;j<=colcount;j++)
					{%>
					<div><%out.println(rs.getString(j));%></div>
					<%}%>
				</div><%
				}
			}
		}%>
		
		</div>
		<div class="divR">
			欢迎下次光临，买手机上京东，质量好，有保证！！！
		</div>
  </body>
    
</html>

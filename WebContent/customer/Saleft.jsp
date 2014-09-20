<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<jsp:useBean id="obj" class="dao.Result"></jsp:useBean>
<%
  response.setContentType("text/html;charset=UTF-8");
   request.setCharacterEncoding("UTF-8");
//("jdbc:mysql://localhost:3306/shujuku?user=root&password=root&useUnicode=true&characterEncoding=GB2312")%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>京东商城</title>
	<script src="../cssAndScript/jQuery.js"></script>
	<script>
         $(document).ready(function(){
         	 $("#click").click(function(){
         	 	$(".divIn").slideToggle();
         	 	})
         	})
    </script>
<style>
#aa{
	height:30px;
	width:420px;
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
	width:60px;
	float:left;
	}
#aa1{
	height:30px;
	width:420px;
	float:left;
	}
#aa1 span{
	text-align:center;
	vertical-align:middle;
	line-height:30px;
	font-size:13px;
	height:30px;
	width:60px;
	float:left;
	}
/*aa1 #big,#aa #big{
	width:120px;
	height:30px;
	float:left;
	text-align:center;
	vertical-align:middle;
	line-height:30px;
	font-size:13px;
}*/
#aa1 span #first{
	width:20px;
	height:20px;
	}
 .divIn input{
	width:50px;
	color:darkgray;
}
.divIn button{
	border-radius:7px;
	}
 .divIn{
	float:left;
	margin-left:50px;
	display:none;
	}       
.inSub{
	display:block;
	width:350px;
	height:30px;
	border-radius:7px;
	margin-bottom:30px;
	margin-left:50px;
	background:yellow;
}
</style>
</head>
<body>
  <form action="Supdate.jsp" class="form" name="searchface">
  		<div id="click" style="color:red;font-size:13px;">请选中要修改的商品记录，点击此行红色字体按照提示进行修改！！！注意，商品编号不可修改</div>
  		<div class="divIn">
				<button type="submit">确认</button>
				<input name="pname" value="名称">
				<input name="pprice" value="售价">
				<input name="pmount" value="库存">
				<input name="pseller" value="运费">
				<input name="mailcost" value="配件">
				
		</div>
		
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
 response.setContentType("text/html;charset=UTF-8");
   request.setCharacterEncoding("UTF-8");
ResultSet rs=obj.getModify(request);
System.out.println("rs===" + rs);
ResultSetMetaData rsmd=rs.getMetaData();
int colcount = rsmd.getColumnCount();
while(rs.next())
{%>
	<div id="aa1">
		
			<span><input type="radio" name="pid" value="<%=rs.getString(1) %>" id="first"></span>
			<%for(int j=1;j<=colcount;j++)
			{
			
					%>
			<span id="modi">
				<%out.println(rs.getString(j));%>
			</span>
			
			<%}%>
			
			
			
		</div>
	
<%}%>
	</form>
	
</body>
</html>
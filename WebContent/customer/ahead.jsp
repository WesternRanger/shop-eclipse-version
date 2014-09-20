<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<style>
	.pic{
		width:270px;
		height:52px;
		float:left;
		margin-left:150px;
	}
		#a{
			height:50%;
			margin:auto;
			color:gray;
			font-size:14px;
			width:80%;
		}
		#quit{
		display:block;
		float:right;
		margin-right:120px;
		margin-bottom:10px;
		font-size:14px;
		text-decoration:none;
		color:gray;	
	}
	.header{
	height:50%;
	width:90%;
	margin:auto;
	}
.header a{
	margin-left:40px;
	font-size:12px;
	color:gray;
	text-decoration:none;
	float:left;
	height:50%;
	vertical-align:middle;
	line-height:50%;
}
.header a:hover{text-decoration:underline;color:red;}		
	</style>
	<script>
		function fun(){
			window.open("login.jsp");
		}
	</script>
  </head>
  
  <body>
  <a class="pic" onclick="fun()"><img src="../screenShoot/jingdong.png"/></a>
   <div id="a">
		<%out.println("尊敬的客户--"+session.getAttribute("mark")+"--您好，欢迎光临京东手机商城");%>
		<span id="quit" onclick="fun()">退出</span>
	</div>
	<div class="header">
		<a href="">热门搜索：索尼T2 三星粉色手机 移动版iPhone 酷派5951 诺基亚X 浙江版缤特力蓝牙</a>
	</div>
	
  </body>
</html>

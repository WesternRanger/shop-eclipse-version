<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>register</title>
    <script src="../cssAndScript/jQuery.js"></script>
	<style type="">
		body{
			margin:0px;
			padding:0px;
		}
		#a{
			width:100%;		
			height:30px;
			background:#fafafa;
		}
		#a span span{
			font-size:13px;
			}
		#a span a{
			font-size:13px;
			text-decoration:none;
		}
		.con1 a{
			font-size:16px;
			text-decoration:none;
		}
		#a a:hover{text-decoration:underline;color:red;}
		.con1 a:hover{text-decoration:underline;color:red;}
		
		.content{
			width:1020px;
			margin:auto;
			height:500px;
			background:#ffffff;
		}
		.con1{
			margin-left:200px;
			width:100%;
			height:30px;
			display:block;
		}
		.form{
			width:800px;
			height:435px;
			float:left;
		}
		.b1,.b2{
			width:400px;
			height:435px;
			float:left;
			display: block;  
			}
		
		.b1 span,.b2 span{
			color:red;
			font-size:12px;
			}
		
		.b1 input,.b2 input{
			width:200px;
			border-radius:7px;
			height:30px;
		}
		.b1 div,.b2 div{
			margin-bottom:10px;
			font-size:12px;
			width:308px;
			}
		.b1 div .c1,.b1 div .c2,.b2 div .c1,.b2 div .c2{
			float:left;
			width:100px;
			height:25px;
			margin-left:30px;
			margin-right:20px;
			}
		.dis{
    		display: none;
		}
		.color{
			font-size:25px;
			color:darkgray;
    		font-weight:bold;
    		font-family:"黑体";
		}
		.footer{
    width:660px;
    height:140px;
    margin-top:20px;
    margin-left: auto;
    margin-right: auto;
    clear:both;
    /*border:red solid 1px;*/
}
.footer a{
    font-size:13px;
    text-decoration: none;
    color:slategray;
}
.footer span{
    float:left;
    margin-top:9px;
    margin-left: 200px;
    color:slategray;
    font-size:13px;
}
.footer a:hover{
    text-decoration: underline;
    color:red;
}
	</style>
	<script>
		$(document).ready(function(){
			$(".content .con1 a:eq(0)").click(function(){$(this).addClass("color").siblings().removeClass("color");
				$(".content .form .b1").removeClass("dis").siblings().addClass("dis");})
			$(".content .con1 a:eq(1)").click(function(){$(this).addClass("color").siblings().removeClass("color");
				$(".content .form .b2").removeClass("dis").siblings().addClass("dis");})
		})
    </script>
    <script type="text/javascript">
    		function customer(){
    			document.sub.flag.value="cus";
    			document.sub.submit();
    		}
    		function seller(){
    			document.sub.flag.value="seller";
    			document.sub.submit();
    		}
    	</script>
  </head>
  
  <body bgcolor="#f2f2f2">
  <%
  	String jspflag=request.getParameter("flag");
  	if("cus".equals(jspflag)){
  		dao.register.getModifyInsert(request);
  	}
  	if("seller".equals(jspflag)){
  		dao.register.getModifyInsert1(request);
  	}
   %>
   <!-- tou -->
  	<div id="a">
  			<img style="float:left;margin-left:200px;" src="../cssAndScript/shoucang.jpg">
  			<span style="float:right;margin-right:200px;">
  				<span>您好！欢迎来到京东！我已经注册，现在就</span>
  				<a href="login.jsp"> 登录</a> 
  				<a href="register.jsp">[免费注册]</a>
  				<span>手机京东 客户服务 网站导航</span>
 				<a href="login.jsp">退出</a>
  			</span>	
	</div>
	<!-- tupianbufen -->
	<div>
		<img style="margin-left:200px;" src="../cssAndScript/jdzhuce.jpg">
	</div>
	<div class="content">
		<span class="con1">
			<a href="" class="color">个人用户</a>
			<a href="">企业用户</a>
		</span>
  	 	<form action="register.jsp" name="sub" class="form">
    		<div class="b1">
    			<div>用户编号 <input name="userid" type="text"><span>必须填写</span></div>
    			<div>用户名称 <input name="username" type="text"><span>必须填写</span></div>
    			<div>真实姓名 <input name="truename" type="text"><span>必须填写</span></div>
    			<div>身份证号 <input name="identi" type="text"><span>必须填写</span></div>
    			<div>固定电话 <input name="tel" type="text"></div>
    			<div>手机号码 <input name="mob" type="text"><span>必须填写</span></div>
    			<div>联系地址 <input name="adress" type="text"><span>必须填写</span></div>
    			<div>电子邮箱 <input name="mail" type="text"></div>
    			<div>买卖标识 
    			<select name="mark">
    				<option>sumsung</option>
    				<option>oppo</option>
    				<option>vivo</option>
    				<option>lenovo</option>
    			</select>
    			</div>
    			<div>买方信度 <input name="xindu" type="text"></div>
    			<br>
    			<div><button class="c1" type="button" onclick="customer()">注册为买家</button><button class="c2" type="reset">取消</button></div>
    			<input type="hidden" name="flag" value=""/>
    		</div>
 
    		<div class="b2">
    		
    			<div>用户密码 <input type="text" name="passwd"><span>必须填写</span></div>
    			<div>确认密码 <input type="text" name="confirm"><span>必须填写</span></div>
    			<div>公司名称 <input type="text" name="pname"><span>必须填写</span></div>
    			<div>工厂地址 <input type="text" name="paddr"><span>如不填写，默认联系地址</span></div>
    			<div>主营业务 <input type="text" name="mainSell"><span>必须填写</span></div>
    			<div>卖方信度 <input type="text" name="sellerXindu"></div>
    			<div>法人代表 <input type="text" name="frepre"><span>如不填，默认用户名</span></div>
    			<div>法人证件 <input type="text" name="fCerti"><span>如不填，默认用户身份</span></div>
    			<br>
    			<br>
    			<div><button class="c1" type="button" onclick="seller()">注册为卖家</button><button class="c2" type="submit">取消</button></div>
    		</div>
    	</form>
    	<div style="float:left;">
    		<img src="../cssAndScript/shoujizhuce.jpg">
    	</div>
   </div>
   <div class="footer">
    	<a href="#">关于我们|</a>
    	<a href="#">联系我们|</a>
    	<a href="#">人才招聘|</a>
    	<a href="#">商家入驻|</a>
    	<a href="#">广告服务|</a>
    	<a href="#">手机京东|</a>
    	<a href="#">友情链接|</a>
    	<a href="#">销售联盟|</a>
    	<a href="#">京东社区|</a>
    	<a href="#">京东公益</a>
    	<span>Copyright©2004-2014  京东JD.com 版权所有</span>
	</div>
  </body>
</html>

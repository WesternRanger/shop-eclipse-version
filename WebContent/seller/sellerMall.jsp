<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>

<jsp:useBean id="obj" class="dao.Result"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>京东商城</title>
	<script src="../cssAndScript/jQuery.js"/>
	 <script>

    $(document).ready(function(){
    var curIndex=0;
    //时间间隔 单位毫秒
    var arr=new Array();
    arr[0]="../screenShoot/iphone 4s.jpg";
    arr[1]="../screenShoot/lumia 1520.jpg";
    arr[2]="../screenShoot/meizu mx3.jpg";
    arr[3]="../screenShoot/oppo find7.jpg";
    arr[4]="../screenShoot/sumsung s4.jpg";
    arr[5]="../screenShoot/vivo xplay 3s.jpg";
    setInterval(changeImg,1500);
    function changeImg()
    {
        var $obj=$("#obj");
        if (curIndex==arr.length-1)
        {
            curIndex=0;
        }
        else
        {
            curIndex+=1;
        }
        $obj.src=arr[curIndex];
    }
})
</script>
<style type="">
	#content{
	width:100%;
	height:100%;
	margin:auto;
	}
		
       
        img{
            width:500px;
            height:400px;
            float:left;
            margin-right:2px;
        }
        .form{
        	width:60%;
            height:100%;
            float:left;
        }
        .animate{
        	margin-top:30px;
        	width:35%;
            height:400px;
            float:left;
            display:block;
        	}
        


#aa{
	height:30px;
	width:350px;
	margin-top:30px;
	border-bottom:1px black solid;
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
#aa1 .divIn input{
	width:50px;
}
#aa1 .divIn{
	margin-left:100px;
	float:left;
	display:none;
	}
#a{
		text-align:center;
		font-size:14px;
		font-family:"黑体";
		font-weight:blod;
		background-color:#f7f7f7;
		color:gray;
		height:25px;
		line-height:25px;
		vertical-align:middle;
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
	height:52px;
	width:90%;
	margin:auto;
	}
.header a{
	margin-left:40px;
	font-size:12px;
	color:gray;
	text-decoration:none;
	float:left;
	height:52px;
	vertical-align:middle;
	line-height:52px;
}
.header img{
	width:270px;
	height:52px;
}
.header a:hover{text-decoration:underline;color:red;}
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
<script>
         $(document).ready(function(){
         	 $(".p2").click(function(){
         	 	$("#aa1 div").slideToggle();
         	 	})
         	})
    </script>
    
   
</head>
<body>
 <div id="a">
<%
			out.println("您好，您现在的位置是：京东手机商城--"+session.getAttribute("mark")+"--手机店，存货管理界面");
		%>
<a id="quit" href="../customer/login.jsp">退出</a>
</div>
<div class="header"><img src="../screenShoot/jingdong.png"/>
	<a href="">热门搜索：索尼T2 三星粉色手机 移动版iPhone 酷派5951 诺基亚X 浙江版缤特力蓝牙</a>
</div>
	
 <div id="content">
  <div class="form">
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
	<form action="update.jsp" id="aa1">
		
			<span><input type="checkbox" name="pid" value="<%=rs.getString(1) %>" id="first"></span>
			<%for(int j=1;j<=colcount;j++)
			{%>
			<span>
				<%out.println(rs.getString(j));%>
			</span>
			
			<%}%>
			<input type="button" value="点击显示修改商品信息框" class="p2">
			<input type="submit" value="修改"/>
			<div class="divIn">
				<input name="pname"><input name="pprice"><input name="pmount"><input name="pseller"><input name="mailcost">
			</div>
		</form>
	
<%}%>
	</div>
	
	<img class="animate" id="obj" src="../screenShoot/iphone 4s.jpg"/>
		
	
 </div>
</body>
</html>
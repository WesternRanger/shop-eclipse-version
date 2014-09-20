<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>

<jsp:useBean id="obj" class="dao.Result"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>京东商城</title>
	 <script src="cssAndScript/jQuery.js"></script>
<script>

    window.onload=function(){
    var curIndex=0;
    //时间间隔 单位毫秒
    var timeInterval=1500;
    var arr=new Array();
    arr[0]="screenShoot/iphone 4s.jpg";
    arr[1]="screenShoot/lumia 1520.jpg";
    arr[2]="screenShoot/meizu mx3.jpg";
    arr[3]="screenShoot/oppo find7.jpg";
    arr[4]="screenShoot/sumsung s4.jpg";
    arr[5]="screenShoot/vivo xplay 3s.jpg";
    setInterval(changeImg,timeInterval);
    function changeImg()
    {
        var obj=document.getElementById("obj");
        if (curIndex==arr.length-1)
        {
            curIndex=0;
        }
        else
        {
            curIndex+=1;
        }
        obj.src=arr[curIndex];
    }
}

 $(document).ready(function(){
         	var x=10;
            var y=10;
//第一块
            $("#u1").mouseover(function(e){
                var $new1=$("<div id='new1'><img src='"+this.href+"'/></div>");
                $("body").append($new1);
                $("#new1").css({"top":(e.pageY+y),"left":(e.pageX+x)}).show("fast");
            }).mouseout(function(){
                        $("#new1").remove();
                    }).mousemove(function(e){
                        $("#new1").css({"top": (e.pageY+y),"left": (e.pageX+x)});
                    })
//第二块
            $("#u2").mouseover(function(e){
                var $new2=$("<div id='new2'><img src='"+this.href+"'/></div>");
                $("body").append($new2);
                $("#new2").css({"top":(e.pageY+y),"left":(e.pageX+x)}).show("fast");
            }).mouseout(function(){
                        $("#new2").remove();
                    }).mousemove(function(e){
                        $("#new2").css({"top": (e.pageY+y),"left": (e.pageX+x)});
                    })
//第三块
            $("#u3").mouseover(function(e){
                var $new3=$("<div id='new3'><img src='"+this.href+"'/></div>");
                $("body").append($new3);
                $("#new3").css({"top":(e.pageY+y),"left":(e.pageX+x)}).show("fast");
            }).mouseout(function(){
                        $("#new3").remove();
                    }).mousemove(function(e){
                        $("#new3").css({"top": (e.pageY+y),"left": (e.pageX+x)});
                    })
//第四块
            $("#u4").mouseover(function(e){
                var $new4=$("<div id='new4'><img src='"+this.href+"'/></div>");
                $("body").append($new4);
                $("#new4").css({"top":(e.pageY+y),"left":(e.pageX+x)}).show("fast");
            }).mouseout(function(){
                        $("#new4").remove();
                    }).mousemove(function(e){
                        $("#new4").css({"top": (e.pageY+y),"left": (e.pageX+x)});
                    })
              
//第五块                  
             $("#u5").mouseover(function(e){
                var $new5=$("<div id='new5'><img src='"+this.href+"'/></div>");
                $("body").append($new5);
                $("#new5").css({"top":(e.pageY+y),"left":(e.pageX+x)}).show("fast");
            }).mouseout(function(){
                        $("#new5").remove();
                    }).mousemove(function(e){
                        $("#new5").css({"top": (e.pageY+y),"left": (e.pageX+x)});
                    })
        })
</script>
<style type="">
body{
	padding:0px;
	margin:0px;
}
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
        	width:45%;
            height:100%;
            float:left;
            margin-left:50px;
            margin-right:50px;
        }
        .animate{
        	width:35%;
            height:400px;
            float:left;
            display:block;
        	}
 #aa{
	height:35px;
	width:600px;
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
	width:100px;
	float:left;
	}
#aa1{
	height:50px;
	width:600px;
	margin-left:-2px;	
	float:left;
	}
#aa1 span{
	text-align:center;
	vertical-align:middle;
	line-height:30px;
	font-size:13px;
	height:30px;
	width:100px;
	float:left;
	}
#aa1 span a{
	text-decoration:none;
}
#aa1 span a:hover{
	text-decoration:underline;
	color:red;
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
#a a:hover{text-decoration:underline;
	color:red;}
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
.header a img{
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

p{
    		font-size:20px;
    		color:pink;
    	}
        h2{
            margin-top:3px;
            margin-bottom: 3px;
        }
        #u1,#u2,#u3,#u4,#u5{
            height:80px;
            display:block;
            background: #fef2e5;
            text-decoration:none;
            color:black;
            font-size:13px;
        }
     
        #new1,#new2,#new3,#new4,#new5{
            position: absolute;
            background: gray;
            display: block;
        }
        #rightB{
        	width:500px;
        	height:500px;
        	float:left;
        	}
</style>
</head>
<body>
 	<div id="a">
		<span>尊敬的客户您好，欢迎光临京东手机商城</span>
		<a id="quit" href="customer/register.jsp">没有账号？现在就去注册</a>
		<a id="quit" href="customer/login.jsp">想购物，现在就登录</a>
	</div>
	<div class="header">
		<a href="login.jsp"><img src="screenShoot/jingdong.png"/></a>
		<a href="">热门搜索：索尼T2 三星粉色手机 移动版iPhone 酷派5951 诺基亚X 浙江版缤特力蓝牙</a>
	</div>
	
 <div id="content">
  <div class="form">
	<div id="aa">
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
//obj.fenyemethod(1,production,18,10);
System.out.println("rs===" + rs);
ResultSetMetaData rsmd=rs.getMetaData();
int colcount = rsmd.getColumnCount();
while(rs.next())
{%>
	<div id="aa1">
			<%for(int j=1;j<=colcount;j++)
			{%>
			<span><a href="">
				<%out.println(rs.getString(j));%>
				</a>
			</span>
			<%}%>
		</div>
<%}%>
	</div>
	<p>库存商品</p>
	<img class="animate" id=obj src="screenShoot/iphone 4s.jpg"/>
		
	<div id="rightB">
		<p>新品发布</p>
    <a href="cssAndScript/oneplus.jpg" id="u1">
        <h2>onePlus</h2>
          年度旗舰
		超越旗舰性能的设计，
		不仅得心应手，而且赏心悦目。
    </a>
    <a href="cssAndScript/honour3x.jpg" id="u2">
        <h2>荣耀3x</h2>
        荣耀 honor 荣耀3X 双卡双待 真八核 移动/联通双3G版 TD-SCDMA/WCDMA/GSM（白色）
    </a>
    <a href="cssAndScript/mi3s.jpg" id="u3">
        <h2>小米3s</h2>
       小米3S将采用5英寸的1080p屏，搭载高通骁龙MSM8974AC处
       理器，3GB运存，前置800万像素、后置1300万像素摄像头。
    </a>
    <a href="cssAndScript/s5.jpg" id="u4">
        <h2>三星galaxy s5</h2>
       三星s5,Samsung GALAXY S5,1600万像素摄像头,实时HDR拍摄.0.3秒快速自动对焦,从此不再错过与她共度的精彩画面.
    </a>
    <a href="cssAndScript/iphone6.jpg" id="u5">
        <h2>iphone 6</h2>
       iPhone 6将会配备蓝宝石屏幕已经是老生常谈的事情了，而目
       前最新的消息显示其蓝宝石屏幕已经进入量产状态，而且很有可能已
       经运抵国内开始组装iPhone 6。
    </a>
	</div>
 </div>
</body>
</html>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<jsp:useBean id="obj" class="dao.Result"></jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script src="../cssAndScript/jQuery.js"></script>
<script src="script.js"></script>
<style>
	body{
    padding:0px;
    margin:0px;
}
.header img{
    margin-left: 40px;
}
#navigator{
    float:right;
    margin-right:26px;
}
#navigator a{
    text-decoration:none;
    margin-left:15px;
    margin-right:15px;
}
#navigator a:hover{text-decoration:underline;}
.divML #title a:hover{text-decoration:underline;}
.divML a{
    font-size:14px;
    text-decoration:none;
}

.divAll{
    width:1200px;
    /*height:900px;*/
    margin-left:auto;
    margin-right:auto;
    /*border:red solid 1px;*/
}

.divML1{
    width:750px;
    height:700px;
    float: left;
    /*border:red solid 3px;*/
}
.divML{
    width:750px;
    height:370px;
    /*border:red dashed 3px;*/
}
.divMB{
    margin-left:20px;
    width:500px;
    height:140px;
    /*border:red solid 3px;*/
}
.divMB li{
    padding:0px;
    list-style:none;
    float:left;
    display:inline;
    margin-right:10px;
    border:1px solid #AAAAAA;
}
#tooltip{
    position:absolute;
    border:1px solid #ccc;
    background:#333;
    padding:2px;
    display:none;
    color:#fff;
}
.divMRB{
    margin-top:30px;
    border-top-right-radius: 170px;
    border-bottom-right-radius: 170px;
    width:445px;
    height: 358px;
    float:right;
    overflow:hidden;
}
/*表单部分*/
.divMR{
    margin-top:30px;
    width:430px;
    height: 200px;
    float:right;
    overflow: hidden;
}
.a{
    width:430px;
    margin:auto;
}
div p{
    width:430px;
    margin-top:20px;
    margin-bottom:20px;
    font-size: 16px;
    color:darkgray;
    font-weight:bold;
    font-family:"黑体";
}
div input{
    border-radius:7px;
    width:400px;
    height:30px;
}
.b{
    width:430px;
    height:30px;
    margin:auto;
    display:block;
}
span input{
    border-radius:10px;
    width:100px;
    height:25px;
    float:left;
    margin-left:50px;
    margin-right:50px;
    font-size: 16px;
    color:darkgray;
    font-weight:bold;
    font-family:"黑体";
}
.form1,.form2.form3{
    width:430px;
    height:200px;
    float:left;
    display: block;  
}
.dis{
    display: none;
}
ul{
    padding:0px;
    margin:0px;
}
.color{
	font-size:25px;
	color:darkgray;
    font-weight:bold;
    font-family:"黑体";
}
/*幻灯片部分*/
#show{
    width:750px;
    height:330px;
    border:darkred double 1px;
}
#show #title{
    width:750px;
    height:30px;
    line-height: 30px;
    vertical-align: middle;
}
#show #title button{
    background-color:indianred;
    width:70px;
    height:20px;
    border-radius: 7px;
}
#show #title a{
    margin-left: 10px;
    margin-right:10px;
    float:right;
    color:darkseagreen;
}
#show #title span{
    margin-left: 10px;
    margin-right:10px;
    display: block;
    float:left;
    width:20px;
    height:20px;
    border: darkred double 1px;
    border-radius: 15px;
    line-height: 20px;
    vertical-align: middle;
    text-align: center;
    font-size: 14px;
    font-family: "榛戜綋";
}
.current {background-color: greenyellow;}
#show #ani{
    width:750px;
    height:300px;
    overflow: hidden;
    position: relative;
}
#show #ani ul,#show #ani ul li{
    padding:0px;
    margin:0px;
    list-style: none;
}
#show #ani ul{
    width:4500px;
    height:300px;
    position: absolute;
}
#show #ani ul li img{
    width:750px;
    height:300px;
    float:left;
}
.text{
    width:750px;
    height:150px;
    /*border:2px solid red;*/
}
.text span{
    width:750px;
    height:35px;
    display: block;
    /*border:2px solid red;*/
    font-size:13px;
    color:dimgray;
}
/*footer*/
.footer{
    width:660px;
    height:140px;
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
    window.onload=function(){
    var curIndex=0;
    //时间间隔 单位毫秒
    var timeInterval=2000;
    var arr=new Array();
    arr[0]="img/1.jpg";
    arr[1]="img/2.jpg";
    arr[2]="img/3.jpg";
    arr[3]="img/4.jpg";
    arr[4]="img/5.jpg";
    arr[5]="img/6.jpg";
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

</script>
</head>
<body bgcolor="#f2f2f2">

<div class="header"><img src="img/jingdongtou.png"></div>
<div class="divAll">
        <!--中间左的表单-->

        <div class="divML1">

            <div class="divML">
                <h3>热销产品</h3>
                <div id="show">
                    <div id="title">
                        <button class="prev"><<</button>
                        <button class="next">>></button>
                        <span class="current">1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span>
                        <a href="register.jsp">免费注册</a>
                        <a href="../mall.jsp">进入商城</a>
                    </div>
                    <div id="ani">
                  
                        <ul>
                            <li><img src="img/1.jpg" id=obj></li>
                            <li><img src="img/2.jpg"></li>
                            <li><img src="img/3.jpg"></li>
                            <li><img src="img/4.jpg"></li>
                            <li><img src="img/5.jpg"></li>
                            <li><img src="img/6.jpg"></li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 中间下 -->
            <div class="divMB">
                <h3>热门苹果产品</h3>
                <ul>
                    <li><a href="images/apple_1_bigger.jpg" class="tooltip" title="苹果 iPod"><img src="images/apple_1.jpg" alt="苹果 iPod" /></a></li>
                    <li><a href="images/apple_2_bigger.jpg" class="tooltip" title="苹果 iPod nano"><img src="images/apple_2.jpg" alt="苹果 iPod nano"/></a></li>
                    <li><a href="images/apple_3_bigger.jpg" class="tooltip" title="苹果 iPhone"><img src="images/apple_3.jpg" alt="苹果 iPhone"/></a></li>
                    <li><a href="images/apple_4_bigger.jpg" class="tooltip" title="苹果 Mac"><img src="images/apple_4.jpg" alt="苹果 Mac"/></a></li>
                </ul>

            </div>
            <div class="text">
                <span>
                        &nbsp;&nbsp;&nbsp;&nbsp;1.苹果（APPLE）MD778CH/A IPOD SHUFFLE 2GB/SILVER 银白
                    光滑铝制外形，全线异彩纷呈。
                    由于主体由一块铝合金精密打造，因此 iPod shuffle ,多彩的颜色让它成为绝好的时尚配饰。
                </span>
                <span>
                            &nbsp;&nbsp;&nbsp;&nbsp;2.iPod touch 让乐趣更上一层楼。现提供黑、白两色机型。
                        它配备 iOS 6，带来 200 多项令人激动的新功能。
                        有了 iCloud，你的 iPod touch 上的一切都将在你的其他设备上自动现身。
                </span>
                <span>
                        &nbsp;&nbsp;&nbsp;&nbsp;3.苹果（APPLE）iPhone 4S 8G版 3G手机（黑色）WCDMA/GSM。iPhone中的经典，值得拥有！全新升级的iOS7操作系统！
                    双核 A5 芯片，全新 800 万像素摄像头和光学技术，iOS 5 和 iCloud。出色的 iPhone，如今更出色。
                </span>
                <span>
                        &nbsp;&nbsp;&nbsp;&nbsp;4.苹果（Apple）MacBook Air MD761CH/A 13.3英寸宽屏笔记本电脑
                    长达12小时电池使用时间,全新第4代Intel处理器,轻巧纤薄再创动力新高
                </span>
            </div>
        </div>


        <!--中间右-->
        <span id="navigator">
                <a href="#"  class="color">买家登录</a>
                <a href="#">超级管理员登录</a>
                <a href="#">卖家登录</a>
        </span>
        <%
        	String jspflag=request.getParameter("flag");
        	if("form1".equals(jspflag)){
        		ResultSet rs=obj.form1(request);
        		if(rs==null){
        		}
        		else{
        			if(rs.next())
        			{
        				String name=rs.getString(1);
						session.setAttribute("mark",name);
		%>
			<jsp:forward page="frameSetCus.jsp"/>
		<% 
        			}
        		}
        	}
        	if("form2".equals(jspflag)){
        		ResultSet rs1=obj.form2(request);
        		if(rs1==null){
        			
        		}
        		else{
        			if(rs1.next()){
        				String name=rs1.getString(1);
						session.setAttribute("mark",name);
        				%>
							<jsp:forward page="admin.jsp"/>
						<% 
						}
				}
        	}
        	if("form3".equals(jspflag)){
        		ResultSet rs3=obj.form3(request);
        		if(rs3==null){
        			
        		}
        		else{
        			if(rs3.next()){
        				String name=rs3.getString(1);
						session.setAttribute("mark",name);
        				%>
							<jsp:forward page="frameSetSellerMall.jsp"/>
						<% 
						}
				}
        	}
         %>
        <form class="divMR" action="" name="allForm">
        	<input type="hidden" name="flag" value="">
            <div class="form1">
                <!--<span>买家登录</span>-->
                <div class="a">
                    <p>买家账号：<input type="text" name="userid" value=""></p>
                    <p>密 码：<input type="password" name="username" value=""></p>
                </div>
			<span class="b">
				<input type="button" value="登录" onclick="form1()">
				<input type="reset">
			</span>
			<script type="text/javascript">
				function form1(){
					document.allForm.flag.value="form1";
					document.allForm.submit();
				}
			</script>
            </div>


            <div class="form2">
                <!--<span>超级管理员登录</span>-->
                <div class="a">
                    <p>超级管理员账号：<input type="text" name="adName" value=""></p>		
					<p>口 令：<input type="password" name="adPwd" value=""></p>
                </div>
			<span class="b">
				<input type="button" value="登录" onclick="form2()">
				<input type="reset">
			</span>
			<script>
				function form2(){
					document.allForm.flag.value="form2";
					document.allForm.submit();
				}
			</script>
            </div>


            <div class="form3">
                <!--<span>卖家登录</span>-->
                <div class="a" style="">
                    <p>卖家账号：<input type="text" name="pname" value=""></p>		
					<p>密 码：<input type="password" name="passwd" value=""></p>
                </div>
			<span class="b">
				<input type="button" value="登录" onclick="form3()">
				<input type="reset">
			</span>
			<script>
				function form3(){
					document.allForm.flag.value="form3";
					document.allForm.submit();
				}
			</script>
            </div>
    	 </form>
        
        <div class="divMRB">
            <img src="img/zhuangshi.png">
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

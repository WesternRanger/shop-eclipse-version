<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    <meta charset="UTF-8">
    <script src="../cssAndScript/jQuery.js"></script>
    <style>
    	p{
    		font-size:20px;
    		color:pink;
    	}
        h2{
            margin-top:3px;
            margin-bottom: 3px;
        }
        #u1,#u2,#u3,#u4,#u5{
            height:90px;
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
    </style>
    <script>
        $(document).ready(function(){
         	var x=10;
            var y=10;
//技能专区
            $("#u1").mouseover(function(e){
                var $new1=$("<div id='new1'><img src='"+this.href+"'/></div>");
                $("body").append($new1);
                $("#new1").css({"top":(e.pageY+y),"left":(e.pageX+x)}).show("fast");
            }).mouseout(function(){
                        $("#new1").remove();
                    }).mousemove(function(e){
                        $("#new1").css({"top": (e.pageY+y),"left": (e.pageX+x)});
                    })
//考试考级
            $("#u2").mouseover(function(e){
                var $new2=$("<div id='new2'><img src='"+this.href+"'/></div>");
                $("body").append($new2);
                $("#new2").css({"top":(e.pageY+y),"left":(e.pageX+x)}).show("fast");
            }).mouseout(function(){
                        $("#new2").remove();
                    }).mousemove(function(e){
                        $("#new2").css({"top": (e.pageY+y),"left": (e.pageX+x)});
                    })
//中小学
            $("#u3").mouseover(function(e){
                var $new3=$("<div id='new3'><img src='"+this.href+"'/></div>");
                $("body").append($new3);
                $("#new3").css({"top":(e.pageY+y),"left":(e.pageX+x)}).show("fast");
            }).mouseout(function(){
                        $("#new3").remove();
                    }).mousemove(function(e){
                        $("#new3").css({"top": (e.pageY+y),"left": (e.pageX+x)});
                    })
//生活/文艺
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
</head>
<body>
	<p>新品发布</p>
    <a href="../cssAndScript/oneplus.jpg" id="u1">
        <h2>onePlus</h2>
          年度旗舰
		超越旗舰性能的设计，
		不仅得心应手，而且赏心悦目。
    </a>
    <a href="../cssAndScript/honour3x.jpg" id="u2">
        <h2>荣耀3x</h2>
        荣耀 honor 荣耀3X 双卡双待 真八核 移动/联通双3G版 TD-SCDMA/WCDMA/GSM（白色）
    </a>
    <a href="../cssAndScript/mi3s.jpg" id="u3">
        <h2>小米3s</h2>
       小米3S将采用5英寸的1080p屏，搭载高通骁龙MSM8974AC处
       理器，3GB运存，前置800万像素、后置1300万像素摄像头。
    </a>
    <a href="../cssAndScript/s5.jpg" id="u4">
        <h2>三星galaxy s5</h2>
       三星s5,Samsung GALAXY S5,1600万像素摄像头,实时HDR拍摄.0.3秒快速自动对焦,从此不再错过与她共度的精彩画面.
    </a>
    <a href="../cssAndScript/iphone6.jpg" id="u5">
        <h2>iphone 6</h2>
       iPhone 6将会配备蓝宝石屏幕已经是老生常谈的事情了，而目
       前最新的消息显示其蓝宝石屏幕已经进入量产状态，而且很有可能已
       经运抵国内开始组装iPhone 6。
    </a>

</body>
</html>

<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" /> 
<script>
    window.onload=function(){
    var curIndex=0;
    //时间间隔 单位毫秒
    var timeInterval=1000;
    var arr=new Array();
    arr[0]="../screenShoot/iphone 4s.jpg";
    arr[1]="../screenShoot/lumia 1520.jpg";
    arr[2]="../screenShoot/meizu mx3.jpg";
    arr[3]="../screenShoot/oppo find7.jpg";
    arr[4]="../screenShoot/sumsung s4.jpg";
    arr[5]="../screenShoot/vivo xplay 3s.jpg";
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
<style>
	  .animate{
        	width:100%;
            height:100%;
            display:block;
        	}
</style>
  </head>
  
  <body>
    <img class="animate" id=obj src="../screenShoot/iphone 4s.jpg"/>
  </body>
</html>

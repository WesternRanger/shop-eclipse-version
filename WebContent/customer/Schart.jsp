<%@ page contentType="text/html; charset=GBK" import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /> 
<%response.setIntHeader("Refresh",100); %> 
</head>

<body> 

<%  
response.setContentType("text/html;charset=UTF-8");
   request.setCharacterEncoding("UTF-8");
try{
//获取从用户登陆界面传递过来的用户
String loginname = request.getParameter("userName"); 
//获取用户的sessionId
String userSessionId=(String)session.getAttribute("userSessionId"); 
//根据sessionId取出用户帐号 
String name = (String)session.getAttribute(userSessionId+"user"); 
//如果loginnmae!=null,表明用户初次登陆
if(loginname!=null) 
{ //初次登陆，创造一个sessionid,把系统当前时间作为sessionId
userSessionId=System.currentTimeMillis()+""; 
session.setAttribute("userSessionId",userSessionId); 
//存储帐号在session中
session.setAttribute(userSessionId+"user",loginname);

}
//获取用户发言
String word = request.getParameter("yourWords");
//从application中所有用户历史发言 
String chart = (String)application.getAttribute("chart"); 
//当发言到一定长度就清空，以免耗尽内存
if(chart!=null&&chart.length()>10000) application.setAttribute("chart","");
if(name!=null&&word!=null){
//组装用户在屏幕上发言语句:
String userword=new Date()+" 用户名:["+name+"]说:"+word;
//将用户发言存入历史记录中 
chart+=userword;
application.setAttribute("chart",chart);
}

%> 
<textarea rows="5" cols="10" name="output" style="width:100%"> 
<% if(name!=null) out.print(chart);
%> 
</textarea>
<% if(name!=null) out.print(name+"说");%>
<form action="" method="post"> 
<input type="text" size="45" name="yourWords">
<input type="hidden" name="chart"><br> 
<input type="submit" value="发送"/> 
</form> 
</body> 
</html>

<%}catch(Exception e){
e.printStackTrace();
}%>
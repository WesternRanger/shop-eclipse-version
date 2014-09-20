<%@ page language="java" pageEncoding="gb2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>用户登陆</title>
</head>

<body>
<%response.setContentType("text/html;charset=UTF-8");
   request.setCharacterEncoding("UTF-8"); %>
<h3>欢迎来到阿里旺旺聊天系统</h3>
<form action="chart.jsp" method="post">
帐号<input type="text" name="userName"/>
口令<input type="password" name="passwd"/>
<input type="submit" value="确认"/>
</form>
</body>
</html>

 



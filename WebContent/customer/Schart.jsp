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
//��ȡ���û���½���洫�ݹ������û�
String loginname = request.getParameter("userName"); 
//��ȡ�û���sessionId
String userSessionId=(String)session.getAttribute("userSessionId"); 
//����sessionIdȡ���û��ʺ� 
String name = (String)session.getAttribute(userSessionId+"user"); 
//���loginnmae!=null,�����û����ε�½
if(loginname!=null) 
{ //���ε�½������һ��sessionid,��ϵͳ��ǰʱ����ΪsessionId
userSessionId=System.currentTimeMillis()+""; 
session.setAttribute("userSessionId",userSessionId); 
//�洢�ʺ���session��
session.setAttribute(userSessionId+"user",loginname);

}
//��ȡ�û�����
String word = request.getParameter("yourWords");
//��application�������û���ʷ���� 
String chart = (String)application.getAttribute("chart"); 
//�����Ե�һ�����Ⱦ���գ�����ľ��ڴ�
if(chart!=null&&chart.length()>10000) application.setAttribute("chart","");
if(name!=null&&word!=null){
//��װ�û�����Ļ�Ϸ������:
String userword=new Date()+" �û���:["+name+"]˵:"+word;
//���û����Դ�����ʷ��¼�� 
chart+=userword;
application.setAttribute("chart",chart);
}

%> 
<textarea rows="5" cols="10" name="output" style="width:100%"> 
<% if(name!=null) out.print(chart);
%> 
</textarea>
<% if(name!=null) out.print(name+"˵");%>
<form action="" method="post"> 
<input type="text" size="45" name="yourWords">
<input type="hidden" name="chart"><br> 
<input type="submit" value="����"/> 
</form> 
</body> 
</html>

<%}catch(Exception e){
e.printStackTrace();
}%>
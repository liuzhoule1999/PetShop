<%@ page contentType="text/html;charset=gb2312"%>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session" />
<html><head><%@ include file="head.txt"%></head>
<title>欢迎登陆</title>
<body background="image/welcome.jpg"><font size="2">
<div align="center">
<table border="2">
<tr><th>登录</th></tr>
<form action="loginServlet" method="post">
<tr><td>登录名称：<input type="text" name="logname"></td></tr>
<tr><td>输入密码：<input type="password" name="password"></td></tr>
</table>
<input type="submit" name="g" value="提交">
</form>
</div>
<div align="center">
登录反馈信息：<jsp:getProperty name="loginBean" property="backNews" />
<br>
登录名称：<jsp:getProperty name="loginBean" property="logname" />
</div>
</font>
</body>
</html>
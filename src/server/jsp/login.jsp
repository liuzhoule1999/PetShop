<%@ page contentType="text/html;charset=gb2312"%>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session" />
<html><head><%@ include file="index.html"%></head>
<title>��ӭ��½</title>
<body background="image/welcome.jpg"><font size="2">
<div align="center">
<table border="2">
<tr><th>��¼</th></tr>
<form action="loginServlet" method="post">
<tr><td>��¼���ƣ�<input type="text" name="logname"></td></tr>
<tr><td>�������룺<input type="password" name="password"></td></tr>
</table>
<input type="submit" name="g" value="�ύ">
</form>
</div>
<div align="center">
��¼������Ϣ��<jsp:getProperty name="loginBean" property="backNews" />
<br>
��¼���ƣ�<jsp:getProperty name="loginBean" property="logname" />
</div>
</font>
</body>
</html>
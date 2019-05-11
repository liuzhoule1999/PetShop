<%@ page contentType="text/html;charset=gb2312"%>
<html>
<script type="text/javascript">
        var count=0;
        window.onload = function(){
            var Msg = document.getElementById("msg");
            var Btn = document.getElementById("btn");
            var Msg_c = document.getElementById("msg_c");
            var Ul = document.createElement("ul"); //定义一个有序的列表
            Msg_c.appendChild(Ul);                 //向Msg_c中添加UL节点
            Btn.onclick = function(){              /* 点击留言以后，在Msg_c中添加列表，在列表中添加内容
                                                      在每一条留言后面添加一个<span>标签 使用此标签的onclick属性
                                                    */ 
                var MsgValue = Msg.value;         
                var Li = document.createElement("li");
                Li.innerHTML = MsgValue + " <span>删除</span>";
                var arrayLi = Ul.getElementsByTagName("li")   //判断是否是第一个留言
                if(arrayLi.length>0){
                    Ul.insertBefore(Li,arrayLi[0]);
                    count++;
                }else{
                    Ul.appendChild(Li);
                    count++;
                }
                Msg.value='';
                var Span = document.getElementsByTagName("span");
                for(var i=0; i<Span.length; i++){
                    Span[i].onclick = function(){
                      Ul.removeChild(this.parentNode);
                      count--;
                    }
                }
            }
        }
        function totalMessage(){       //统计留言的数量
            alert("一共有"+count+"条留言");
        }
    </script>
 <%@ page contentType="text/html;charset=gb2312"%>

<style type="text/css">
li{
	list-style:none;
	}
span:hover{
	color:#F06;
	cursor:pointer;
	}
a:link{
	text-decoration:none;
}
a:hover{
	color:#F00;
	font-family:"微软雅黑";
	font-size:18px;
}
</style>
<body bgcolor="#CCCCCC">
<div align="center">
 <font color="red"><h1>"Welcome to PetShop"</h1></font>
 <table cellSpacing="1" cellPadding="1" width="660" align="center" border="0">
 <tr valign="bottom">
 <td><a href="inputRegisterMess.jsp">注册</a></td>
 <td><a href="login.jsp">登录</a></td>
 <td><a href="listcart.jsp">查看购物车</a></td>
 <td><a href="leaveMessage.jsp">留言板</a></td>
 <td><a href="exitServlet.jsp">退出</a></td>
 <td><a href="html\index.html">主页</a></td>
 </tr>
</table>
</div>
<center>
        <h1>简易留言板</h1>
        <textarea id="msg" cols="60" rows="10"></textarea>
        <input id="btn" type="button" value="留言">
        <div id="msg_c"></div>
        <input type="button" value="点击此处以统计留言总数" onClick="totalMessage()"/>
</center>
  </body>
</html>
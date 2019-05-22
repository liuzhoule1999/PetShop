<%@ page contentType="text/html;charset=gb2312"%>
<html>
 <link href="css/css.css" rel="stylesheet" type="text/css">
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
<body>
 <%@ page contentType="text/html;charset=gb2312"%>

 <table width="980" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F6F6F6">
  <tr>
    <td><img src="images/logo.jpg"></td>
  </tr>
</table>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0" background="images/tb.png" class="cd">
  <tr id="banner">
    <td width="10%" height="40" align="center"><a href="index.html">网站首页</a></td>
    <td width="10%" align="center"><a href="js.html">狗狗介绍</a></td>
    <td width="10%" align="center"><a href="zp.html">狗狗照片</a></td>
    <td width="10%" align="center"><a href="zl.html">狗狗种类</a></td>
    <td width="10%" align="center"><a href="sl.html">狗狗食量</a></td>
    <td width="10%" align="center"><a href="sy.html">狗狗饲养</a></td>
    <td width="10%" align="center"><a href="ly.html">加入我们</a></td>
    <td width="10%" align="center"><a href="javascript:login()">登录/注册</a></td>
  </tr>
</table>
<table width="979" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="979" height="64"><img src="images/banner.jpg" width="980" id="haha"></td>
  </tr>
</table>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="10"></td>
  </tr>
</table>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="10"></td>
  </tr>
</table>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="40" class="bt">网站栏目</td>
    <td height="40" bgcolor="#FFFFFF">&nbsp;</td>
    <td height="40" class="bt" ></td>
  </tr>
  <tr>
    <td width="250" height="262" valign="top"><table width="250" border="0" cellspacing="0" cellpadding="0" class="lm"></td>
      <tr>
        <td height="40"><a href="js.html">狗狗介绍</a></td>
      </tr>
    <tr>
        <td height="40"><a href="zp.html">狗狗照片</a></td>
      </tr>
      <tr>
        <td height="40"><a href="zl.html">狗狗种类</a></td>
      </tr>
      <tr>
        <td height="40"><a href="sy.html">狗狗饲养</a></td>
      </tr>
     
      <tr>
        <td height="40"><a href="map.html">查看宠物店地图</a></td>
      </tr>
      
      </tr>
   </table>
  <div style="width:650px;height:300px;border:#ccc dashed 3px; margin:35px;" id="dituContent">
  <center>
        <h1>简易留言板</h1>
        <textarea id="msg" cols="60" rows="10"></textarea>
        <input id="btn" type="button" value="留言">
        <div id="msg_c"></div>
        <input type="button" value="点击此处以统计留言总数" onClick="totalMessage()"/>
</center>
</div>
</body>
</html>
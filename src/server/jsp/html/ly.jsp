<%@ page contentType="text/html;charset=gb2312"%>
<html>
 <link href="css/css.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
        var count=0;
        window.onload = function(){
            var Msg = document.getElementById("msg");
            var Btn = document.getElementById("btn");
            var Msg_c = document.getElementById("msg_c");
            var Ul = document.createElement("ul"); //����һ��������б�
            Msg_c.appendChild(Ul);                 //��Msg_c�����UL�ڵ�
            Btn.onclick = function(){              /* ��������Ժ���Msg_c������б����б����������
                                                      ��ÿһ�����Ժ������һ��<span>��ǩ ʹ�ô˱�ǩ��onclick����
                                                    */ 
                var MsgValue = Msg.value;         
                var Li = document.createElement("li");
                Li.innerHTML = MsgValue + " <span>ɾ��</span>";
                var arrayLi = Ul.getElementsByTagName("li")   //�ж��Ƿ��ǵ�һ������
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
        function totalMessage(){       //ͳ�����Ե�����
            alert("һ����"+count+"������");
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
	font-family:"΢���ź�";
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
    <td width="10%" height="40" align="center"><a href="index.html">��վ��ҳ</a></td>
    <td width="10%" align="center"><a href="js.html">��������</a></td>
    <td width="10%" align="center"><a href="zp.html">������Ƭ</a></td>
    <td width="10%" align="center"><a href="zl.html">��������</a></td>
    <td width="10%" align="center"><a href="sl.html">����ʳ��</a></td>
    <td width="10%" align="center"><a href="sy.html">��������</a></td>
    <td width="10%" align="center"><a href="ly.html">��������</a></td>
    <td width="10%" align="center"><a href="javascript:login()">��¼/ע��</a></td>
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
    <td height="40" class="bt">��վ��Ŀ</td>
    <td height="40" bgcolor="#FFFFFF">&nbsp;</td>
    <td height="40" class="bt" ></td>
  </tr>
  <tr>
    <td width="250" height="262" valign="top"><table width="250" border="0" cellspacing="0" cellpadding="0" class="lm"></td>
      <tr>
        <td height="40"><a href="js.html">��������</a></td>
      </tr>
    <tr>
        <td height="40"><a href="zp.html">������Ƭ</a></td>
      </tr>
      <tr>
        <td height="40"><a href="zl.html">��������</a></td>
      </tr>
      <tr>
        <td height="40"><a href="sy.html">��������</a></td>
      </tr>
     <tr>
        <td height="40"><a href="leaveMessage.html">���԰�</a></td>
      </tr>
      <tr>
        <td height="40"><a href="listcart.html">�������</a></td>
      </tr>
      <tr>
        <td height="40"><a href="map.html">�鿴������ͼ</a></td>
      </tr>
      
      </tr>
   </table>
  <div style="width:650px;height:300px;border:#ccc dashed 3px; margin:35px;" id="dituContent">
  <center>
        <h1>�������԰�</h1>
        <textarea id="msg" cols="60" rows="10"></textarea>
        <input id="btn" type="button" value="����">
        <div id="msg_c"></div>
        <input type="button" value="����˴���ͳ����������" onClick="totalMessage()"/>
</center>
</div>
</body>
</html>
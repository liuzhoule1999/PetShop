<%@ page contentType="text/html;charset=gb2312"%>
<html>
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
	font-family:"΢���ź�";
	font-size:18px;
}
</style>
<body bgcolor="#CCCCCC">
<div align="center">
 <font color="red"><h1>"Welcome to PetShop"</h1></font>
 <table cellSpacing="1" cellPadding="1" width="660" align="center" border="0">
 <tr valign="bottom">
 <td><a href="inputRegisterMess.jsp">ע��</a></td>
 <td><a href="login.jsp">��¼</a></td>
 <td><a href="listcart.jsp">�鿴���ﳵ</a></td>
 <td><a href="leaveMessage.jsp">���԰�</a></td>
 <td><a href="exitServlet.jsp">�˳�</a></td>
 <td><a href="html\index.html">��ҳ</a></td>
 </tr>
</table>
</div>
<center>
        <h1>�������԰�</h1>
        <textarea id="msg" cols="60" rows="10"></textarea>
        <input id="btn" type="button" value="����">
        <div id="msg_c"></div>
        <input type="button" value="����˴���ͳ����������" onClick="totalMessage()"/>
</center>
  </body>
</html>
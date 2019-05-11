<%@ page contentType="text/html;charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>petshop���ﳵҳ��</title>
</head>
 <style type="text/css">
 @charset "gb2312";
/* CSS Document */
 
body{
	margin:0px;
	padding:0px;
	font-size:12px;
	line-height:20px;
	color:#333;
   }
ul,li,ol,h1,dl,dd{
	list-style:none;
	margin:0px;
	padding:0px;
	}
a{
	color:#1965b3;
    text-decoration: none;
	}    
a:hover{
	color:#CD590C;
	text-decoration:underline;
	}
img{
	border:0px;
	vertical-align:middle;
	}
#header{
	height:40px;
	margin:10px auto 10px auto;
	width:800px;
	clear:both;
	}
#nav{
	margin:10px auto 10px auto;
	width:800px;
	clear:both;
	}
#navlist{
	width:800px;
	margin:0px auto 0px auto;
	height:23px;
	}
	#navlist li{
		float:left;
		height:23px;
		line-height:26px;
	}
	.navlist_red_left{
		background-image:url(../images/taobao_bg.png);
		background-repeat:no-repeat;
		background-position:-12px -92px;
		width:3px;
		}
	.navlist_red{
		background-color:#ff6600;
		text-align:center;
		font-size:14px;
		font-weight:bold;
		color:#FFF;
		width:130px;
		}
	.navlist_red_arrow{
		background-color:#ff6600;
		background-image:url(../images/taobao_bg.png);
		background-repeat:no-repeat;
		background-position:0px 0px;
		width:13px;
		}
	.navlist_gray{
		background-color:#e4e4e4;
		text-align:center;
		font-size:14px;
		font-weight:bold;
		width:150px;
		}
	.navlist_gray_arrow{
		background-color:#e4e4e4;
		background-image:url(../images/taobao_bg.png);
		background-repeat:no-repeat;
		background-position:0px 0px;
		width:13px;
		}
	.navlist_gray_right{
		background-image:url(../images/taobao_bg.png);
		background-repeat:no-repeat;
		background-position:-12px -138px;
		width:3px;
		}
#content{
	width:800px;
	margin:10px auto 5px auto;
	clear:both;
	}
	.title_1{
		text-align:center;
		width:50px;
		}
	.title_2{
		text-align:center;
		}
	.title_3{
		text-align:center;
		width:80px;
		}
	.title_4{
		text-align:center;
		width:80px;
		}
	.title_5{
		text-align:center;
		width:100px;
		}
	.title_6{
		text-align:center;
		width:80px;
		}
	.title_7{
		text-align:center;
		width:60px;
		}
	.line{
		background-color:#a7cbff;
		height:3px;
		}
	.shopInfo{
		padding-left:10px;
		height:35px;
		vertical-align:bottom;
		}
	.num_input{
		border:solid 1px #666;
		width:25px;
		height:15px;
		text-align:center;
		}
	.cart_td_1,.cart_td_2,.cart_td_3,.cart_td_4,.cart_td_5,.cart_td_6,.cart_td_7,.cart_td_8{
		background-color:#e2f2ff;
		border-bottom:solid 1px #d1ecff;
		border-top:solid 1px #d1ecff;
		text-align:center;
		padding:5px;
		}
	.cart_td_1,.cart_td_3,.cart_td_4,.cart_td_5,.cart_td_6,.cart_td_7{
		border-right:solid 1px #FFF;
		}
	.cart_td_3{
		text-align:left;
		}
	.cart_td_4{
		font-weight:bold;
		}
	.cart_td_7{
		font-weight:bold;
		color:#fe6400;
		font-size:14px;
		}
	.hand{
		cursor:pointer;
		}
.shopend{
	text-align:right;
	padding-right:10px;
	padding-bottom:10px;
	}
.yellow{
	font-weight:bold;
	color:#fe6400;
	font-size:18px;
	line-height:40px;
	}
 </style>
 <script type="text/javascript">
 // JavaScript Document
 
/*�ı�������Ʒ������*/
function changeNum(numId,flag){/*numId��ʾ��Ӧ��Ʒ�������ı���ID��flag��ʾ�����ӻ��Ǽ�����Ʒ����*/
    var tom=document.getElementById(numId);
     if(flag=='add'){
         tom.value++;
    }
    if(flag=='minus'){
    if (tom.value > 1) {
        tom.value=tom.value-1;
    }
}
    getSubTotal(tom.parentNode.parentNode.id);
    productCount();
}
    function getSubTotal(tr) {
        var tds=document.getElementById(tr);
        var price = parseFloat(tds.cells[4].innerHTML);//��ȡ�۸�
        var count = parseInt(tds.cells[5].getElementsByTagName('input')[0].value);//��ȡ����
        var SubTotal = parseFloat(price * count);
        tds.cells[6].innerHTML = SubTotal.toFixed(2);//��������
    }
/*�Զ�������Ʒ���ܽ��ܹ���ʡ�Ľ��ͻ���*/
function productCount(){
    var checkAllInputs = document.getElementById('allCheckBox');
    var tableTr=document.getElementById("shopping").getElementsByTagName("tr");
    var total=0;      //������Ʒ���ܼ�
    var integral=0;   //������Ʒ�Ļ���
    console.log(tableTr);
    if(tableTr.length==3){
        checkAllInputs.checked=false;
    }
    var checkInputs = document.getElementsByName("cartCheckBox");
    for(var i=0;i< checkInputs.length;i++){
        var point=0;      //ÿһ����Ʒ�ĵ�Ʒ����
        var price=0;     //ÿһ����Ʒ�ĵ���
        var nums=0;    //ÿһ����Ʒ������
 
        if(checkInputs[i].checked) { //�жϸ�ѡ���Ƿ�ѡ��
                  var c=checkInputs[i].parentNode.parentNode;
                        point=c.childNodes[7].innerHTML;  //ѡ������Ʒ�ĵ�Ʒ����
                        price=c.childNodes[9].innerHTML;  //ѡ������Ʒ�ĵ���
                        nums=c.childNodes[11].childNodes[2].value; //ѡ������Ʒ������
                        console.log(nums);
                        integral+=point*nums;  //������Ʒ�Ļ��ֵĺ� = ÿһ����Ʒ�ĵ��ۻ��� x ����   ���
                        total+=price*nums;//������Ʒ���ܼƵĺ� = ÿһ����Ʒ�ĵ��� x ����   ���
                        c.childNodes[13].innerHTML=price*nums;  //��ƷС�� =��Ʒ�ĵ��� x ����
            } else {
            total+=0;//˼������Ϊʲô��"+="
            integral+=0;
        }
    }
    document.getElementById("total").innerHTML=total;
    document.getElementById("integral").innerHTML=integral;
}
 
  window.onload=productCount; //onload��������ҳ����غ��Զ�������Ʒ�ܶ�
 
/*��ѡ��ȫѡ��ȫ��ѡЧ��*/
function selectAll(){
    var checkInputs = document.getElementsByName("cartCheckBox");
    var checkAllInputs = document.getElementById('allCheckBox');
            for(var i=0;i< checkInputs.length;i++){
                checkInputs[i].checked=checkAllInputs.checked;
            }
     }
 
/*���ݵ�����ѡ���ѡ�����ȷ��ȫѡ��ѡ���Ƿ�ѡ��*/
function selectSingle(){
    var checkInputs = document.getElementsByName("cartCheckBox");
    var checkAllInputs = document.getElementById('allCheckBox');
    var count=0;
    for(var i=0;i< checkInputs.length;i++){
        if(checkInputs[i].checked) {
            count++;
        }
            if (count === checkInputs.length ) {//�ж��Ƿ�ȫѡ
                checkAllInputs.checked = true;
                selectAll();
            } else {
            checkAllInputs.checked=false;
        }
        }
    productCount();
}
 
/*ɾ��������Ʒ*/
function deleteRow(rowId){
    var t = document.getElementById(rowId);
    t.previousSibling.previousSibling.remove();
    t.remove();
    productCount();
 }
 
/*ɾ��ѡ���е���Ʒ*/
function deleteSelectRow() {
    var inp=document.getElementsByName("cartCheckBox");  //��ȡÿ����ѡ��
    for (var i=inp.length-1;i>=0;i--){//��˳�����޷�ɾ������
        if(inp[i].checked){
            inp[i].parentNode.parentNode.previousSibling.previousSibling.remove();
            inp[i].parentNode.parentNode.remove();
            inp.checked = false;//˼������Ϊʲô���������±�
            productCount();
        }
    }
}

 </script>
<body>
<div id="nav">����λ�ã�<a href="index.jsp">��ҳ</a> < �ҵĹ��ﳵ</div>
<div id="navlist">
  
</div>
 
<div id="content">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="shopping">
        <form action="" method="post" name="myform">
            <tr>
                <td class="title_1"><input id="allCheckBox" type="checkbox" value="" onclick="selectAll()" />ȫѡ</td>
                <td class="title_2" colspan="2">���̱���</td>
                <td class="title_3">�����</td>
                <td class="title_4">���ۣ�Ԫ��</td>
                <td class="title_5">����</td>
                <td class="title_6">С�ƣ�Ԫ��</td>
                <td class="title_7">����</td>
            </tr>
            <tr>
                <td colspan="8" class="line"></td>
            </tr>
 
            <tr>
                <td colspan="8" class="shopInfo">���̣�Fashion Petshop  ���ң�<a href="#">���ɰ���</a></td>
            </tr>
            <tr id="product1">
                <td class="cart_td_1"><input name="cartCheckBox" type="checkbox" value="product1" onclick="selectSingle()" /></td>
                <td class="cart_td_2"><img src="html/images/a2.jpg" alt="shopping"/></td>
                <td class="cart_td_3">�¹�����Ȯ<br />
                   </td>
              </td>
                <td class="cart_td_4">5</td>
                <td class="cart_td_5">1438.00</td>

                <td class="cart_td_6"><input type="button" value="-" alt="minus" onclick="changeNum('num_1','minus')" class="hand"/> <input id="num_1" type="text"  value="1" class="num_input" readonly="readonly"/> <input type="button" value="+" alt="add" onclick="changeNum('num_1','add')"  class="hand"/></td>
                <td class="cart_td_7"></td>
                <td class="cart_td_8"><a href="javascript:deleteRow('product1');">ɾ��</a></td>
            </tr>
            

            <tr>
                <td colspan="8" class="shopInfo">���̣�Beauty Petshop   ���ң�<a href="#">lokemick2009</a></td>
            </tr>
            <tr id="product2">
                <td class="cart_td_1"><input name="cartCheckBox" type="checkbox" value="product2" onclick="selectSingle()" /></td>
                <td class="cart_td_2"><img src="html/images/z7.jpg" alt="shopping"/></td>
                <td class="cart_td_3">��ë<br />
                    </td>
                <td class="cart_td_4">12</td>
                <td class="cart_td_5">1800.00</td>
                
                <td class="cart_td_6"><input type="button" value="-" alt="minus" onclick="changeNum('num_2','minus')" class="hand"/> <input id="num_2" type="text"  value="1" class="num_input" readonly="readonly"/> <input type="button" value="+" alt="add" onclick="changeNum('num_2','add')"  class="hand"/></td>
                <td class="cart_td_7"></td>
                <td class="cart_td_8"><a href="javascript:deleteRow('product2');">ɾ��</a></td>
            </tr>
 
            <tr>
                <td colspan="8" class="shopInfo">���̣�Today Petshop ���ң�<a href="#">���յ���</a> </td>
            </tr>
            <tr id="product3">
                <td class="cart_td_1"><input name="cartCheckBox" type="checkbox" value="product3"  onclick="selectSingle()"/></td>
                <td class="cart_td_2"><img src="html/images/z6.jpg"/></td>
                <td class="cart_td_3">������<br />
                   </td>
                <td class="cart_td_4">3</td>
                <td class="cart_td_5">1085.00</td>
                <td class="cart_td_6"><input type="button" value="-" alt="minus" onclick="changeNum('num_3','minus')" class="hand"/> <input id="num_3" type="text"  value="1" class="num_input" readonly="readonly"/> <input type="button" value="+" alt="add" onclick="changeNum('num_3','add')"  class="hand"/></td>
                <td class="cart_td_7"></td>
                <td class="cart_td_8"><a href="javascript:deleteRow('product3');">ɾ��</a></td>
            </tr>
 
            <tr>
                <td colspan="8" class="shopInfo">���̣�Diamonds Petshop ���ң�<a href="#">taobao����</a> </td>
            </tr>
            <tr id="product4">
                <td class="cart_td_1"><input name="cartCheckBox" type="checkbox" value="product4" onclick="selectSingle()" /></td>
                <td class="cart_td_2"><img src="html/images/z5.jpg"/></td>
                <td class="cart_td_3">�߾�����Ȯ<br />
                   </td>
                <td class="cart_td_4">12</td>
                <td class="cart_td_5">1800.00</td>
                <td class="cart_td_6"><input type="button" value="-" alt="minus" onclick="changeNum('num_4','minus')" class="hand"/> <input id="num_4" type="text"  value="1" class="num_input" readonly="readonly"/> <input type="button" value="+" alt="add" onclick="changeNum('num_4','add')"  class="hand"/></td>
                <td class="cart_td_7"></td>
                <td class="cart_td_8"><a href="javascript:deleteRow('product4');">ɾ��</a></td>
            </tr>
 
            <tr>
                <td  colspan="3"><a href="javascript:deleteSelectRow()"><input type="button" value="����˴���ɾ������Ʒ" alt="delete"/></a></td>
                <td colspan="5" class="shopend">��Ʒ�ܼۣ������˷ѣ���<label id="total" class="yellow"></label> Ԫ<br />
                    �ɻ���� <label class="yellow" id="integral"></label> ��<br />
                    <a href="success.html">�ύ</a></td>
            </tr>
        </form>
    </table>
 
</div>
</body>
</html>

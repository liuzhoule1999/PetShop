<%@ page contentType="text/html;charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>petshop购物车页面</title>
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
 
/*改变所购商品的数量*/
function changeNum(numId,flag){/*numId表示对应商品数量的文本框ID，flag表示是增加还是减少商品数量*/
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
        var price = parseFloat(tds.cells[4].innerHTML);//获取价格
        var count = parseInt(tds.cells[5].getElementsByTagName('input')[0].value);//获取数量
        var SubTotal = parseFloat(price * count);
        tds.cells[6].innerHTML = SubTotal.toFixed(2);//四舍五入
    }
/*自动计算商品的总金额、总共节省的金额和积分*/
function productCount(){
    var checkAllInputs = document.getElementById('allCheckBox');
    var tableTr=document.getElementById("shopping").getElementsByTagName("tr");
    var total=0;      //所有商品的总计
    var integral=0;   //所有商品的积分
    console.log(tableTr);
    if(tableTr.length==3){
        checkAllInputs.checked=false;
    }
    var checkInputs = document.getElementsByName("cartCheckBox");
    for(var i=0;i< checkInputs.length;i++){
        var point=0;      //每一行商品的单品积分
        var price=0;     //每一行商品的单价
        var nums=0;    //每一行商品的数量
 
        if(checkInputs[i].checked) { //判断复选框是否被选中
                  var c=checkInputs[i].parentNode.parentNode;
                        point=c.childNodes[7].innerHTML;  //选中行商品的单品积分
                        price=c.childNodes[9].innerHTML;  //选中行商品的单价
                        nums=c.childNodes[11].childNodes[2].value; //选中行商品的数量
                        console.log(nums);
                        integral+=point*nums;  //所有商品的积分的和 = 每一行商品的单价积分 x 数量   相加
                        total+=price*nums;//所有商品的总计的和 = 每一个商品的单价 x 数量   相加
                        c.childNodes[13].innerHTML=price*nums;  //商品小计 =商品的单价 x 数量
            } else {
            total+=0;//思考这里为什么是"+="
            integral+=0;
        }
    }
    document.getElementById("total").innerHTML=total;
    document.getElementById("integral").innerHTML=integral;
}
 
  window.onload=productCount; //onload函数，让页面加载后自动计算商品总额
 
/*复选框全选或全不选效果*/
function selectAll(){
    var checkInputs = document.getElementsByName("cartCheckBox");
    var checkAllInputs = document.getElementById('allCheckBox');
            for(var i=0;i< checkInputs.length;i++){
                checkInputs[i].checked=checkAllInputs.checked;
            }
     }
 
/*根据单个复选框的选择情况确定全选复选框是否被选中*/
function selectSingle(){
    var checkInputs = document.getElementsByName("cartCheckBox");
    var checkAllInputs = document.getElementById('allCheckBox');
    var count=0;
    for(var i=0;i< checkInputs.length;i++){
        if(checkInputs[i].checked) {
            count++;
        }
            if (count === checkInputs.length ) {//判断是否全选
                checkAllInputs.checked = true;
                selectAll();
            } else {
            checkAllInputs.checked=false;
        }
        }
    productCount();
}
 
/*删除单行商品*/
function deleteRow(rowId){
    var t = document.getElementById(rowId);
    t.previousSibling.previousSibling.remove();
    t.remove();
    productCount();
 }
 
/*删除选中行的商品*/
function deleteSelectRow() {
    var inp=document.getElementsByName("cartCheckBox");  //获取每个多选框
    for (var i=inp.length-1;i>=0;i--){//若顺序则无法删除所有
        if(inp[i].checked){
            inp[i].parentNode.parentNode.previousSibling.previousSibling.remove();
            inp[i].parentNode.parentNode.remove();
            inp.checked = false;//思考这里为什么不用数组下标
            productCount();
        }
    }
}

 </script>
<body>
<div id="nav">您的位置：<a href="index.jsp">首页</a> < 我的购物车</div>
<div id="navlist">
  
</div>
 
<div id="content">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="shopping">
        <form action="" method="post" name="myform">
            <tr>
                <td class="title_1"><input id="allCheckBox" type="checkbox" value="" onclick="selectAll()" />全选</td>
                <td class="title_2" colspan="2">店铺宝贝</td>
                <td class="title_3">获积分</td>
                <td class="title_4">单价（元）</td>
                <td class="title_5">数量</td>
                <td class="title_6">小计（元）</td>
                <td class="title_7">操作</td>
            </tr>
            <tr>
                <td colspan="8" class="line"></td>
            </tr>
 
            <tr>
                <td colspan="8" class="shopInfo">店铺：Fashion Petshop  卖家：<a href="#">纤巧百媚</a></td>
            </tr>
            <tr id="product1">
                <td class="cart_td_1"><input name="cartCheckBox" type="checkbox" value="product1" onclick="selectSingle()" /></td>
                <td class="cart_td_2"><img src="html/images/a2.jpg" alt="shopping"/></td>
                <td class="cart_td_3">德国牧羊犬<br />
                   </td>
              </td>
                <td class="cart_td_4">5</td>
                <td class="cart_td_5">1438.00</td>

                <td class="cart_td_6"><input type="button" value="-" alt="minus" onclick="changeNum('num_1','minus')" class="hand"/> <input id="num_1" type="text"  value="1" class="num_input" readonly="readonly"/> <input type="button" value="+" alt="add" onclick="changeNum('num_1','add')"  class="hand"/></td>
                <td class="cart_td_7"></td>
                <td class="cart_td_8"><a href="javascript:deleteRow('product1');">删除</a></td>
            </tr>
            

            <tr>
                <td colspan="8" class="shopInfo">店铺：Beauty Petshop   卖家：<a href="#">lokemick2009</a></td>
            </tr>
            <tr id="product2">
                <td class="cart_td_1"><input name="cartCheckBox" type="checkbox" value="product2" onclick="selectSingle()" /></td>
                <td class="cart_td_2"><img src="html/images/z7.jpg" alt="shopping"/></td>
                <td class="cart_td_3">金毛<br />
                    </td>
                <td class="cart_td_4">12</td>
                <td class="cart_td_5">1800.00</td>
                
                <td class="cart_td_6"><input type="button" value="-" alt="minus" onclick="changeNum('num_2','minus')" class="hand"/> <input id="num_2" type="text"  value="1" class="num_input" readonly="readonly"/> <input type="button" value="+" alt="add" onclick="changeNum('num_2','add')"  class="hand"/></td>
                <td class="cart_td_7"></td>
                <td class="cart_td_8"><a href="javascript:deleteRow('product2');">删除</a></td>
            </tr>
 
            <tr>
                <td colspan="8" class="shopInfo">店铺：Today Petshop 卖家：<a href="#">林颜店铺</a> </td>
            </tr>
            <tr id="product3">
                <td class="cart_td_1"><input name="cartCheckBox" type="checkbox" value="product3"  onclick="selectSingle()"/></td>
                <td class="cart_td_2"><img src="html/images/z6.jpg"/></td>
                <td class="cart_td_3">查理王<br />
                   </td>
                <td class="cart_td_4">3</td>
                <td class="cart_td_5">1085.00</td>
                <td class="cart_td_6"><input type="button" value="-" alt="minus" onclick="changeNum('num_3','minus')" class="hand"/> <input id="num_3" type="text"  value="1" class="num_input" readonly="readonly"/> <input type="button" value="+" alt="add" onclick="changeNum('num_3','add')"  class="hand"/></td>
                <td class="cart_td_7"></td>
                <td class="cart_td_8"><a href="javascript:deleteRow('product3');">删除</a></td>
            </tr>
 
            <tr>
                <td colspan="8" class="shopInfo">店铺：Diamonds Petshop 卖家：<a href="#">taobao豆豆</a> </td>
            </tr>
            <tr id="product4">
                <td class="cart_td_1"><input name="cartCheckBox" type="checkbox" value="product4" onclick="selectSingle()" /></td>
                <td class="cart_td_2"><img src="html/images/z5.jpg"/></td>
                <td class="cart_td_3">边境牧羊犬<br />
                   </td>
                <td class="cart_td_4">12</td>
                <td class="cart_td_5">1800.00</td>
                <td class="cart_td_6"><input type="button" value="-" alt="minus" onclick="changeNum('num_4','minus')" class="hand"/> <input id="num_4" type="text"  value="1" class="num_input" readonly="readonly"/> <input type="button" value="+" alt="add" onclick="changeNum('num_4','add')"  class="hand"/></td>
                <td class="cart_td_7"></td>
                <td class="cart_td_8"><a href="javascript:deleteRow('product4');">删除</a></td>
            </tr>
 
            <tr>
                <td  colspan="3"><a href="javascript:deleteSelectRow()"><input type="button" value="点击此处以删除此商品" alt="delete"/></a></td>
                <td colspan="5" class="shopend">商品总价（不含运费）：<label id="total" class="yellow"></label> 元<br />
                    可获积分 <label class="yellow" id="integral"></label> 点<br />
                    <a href="success.html">提交</a></td>
            </tr>
        </form>
    </table>
 
</div>
</body>
</html>

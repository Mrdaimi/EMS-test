<%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2020/5/29
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <title>报名</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        body {
            background:url("./images/A11.jpg") no-repeat 1px 1px fixed;
            background-size: cover;
        }
        td {
            height: 55px;
        }
        .apply {
            width: 150px;
            height: 30px;
            margin: 10px 110px;
            border: none;
            border-radius: 13px;
            background-image: linear-gradient(to right,red,#3498db,#2ecc71);
            background-size: 200%;
            font-size: 14px;
        }
        .apply:hover {
            background-position: right;
        }
        .input-white {
            width: 80%;
            border: none;
            outline: none;
            border-bottom: 2px solid white;
            background: transparent;
            color: white;
            font-size:14px;
        }
        .input-white:focus {
            border-bottom:2px solid green;
            transition: .5s;
        }
        .dd {
            position:relative;
        }
    </style>
</head>
<body>
<h2 style="text-align: center;margin-top: 70px">2020届人工智能实验室报名</h2>
<div id="ff" style="width: 30%;height:100%;margin: 100px auto;margin-top:40px;background-color: rgba(0,0,0,.2);border-radius: 13px;text-align: center">
    <form action="/EMS/apply" method="get" target="nm_iframe">
    <table style="margin: auto">
        <tr>
            <td>姓名</td>
            <td> <input type="text" class="input-white" name="pname"></td>
        </tr>
        <tr>
            <td>专业</td>
            <td><input type="text" class="input-white" name="profession"></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><div class="dd"><label for="boy">男</label> <input type="radio" name="gender" checked="checked" id="boy" value="1"> <label for="gril">女</label> <input type="radio" name="gender" id="gril" value="0"></div></td>
        </tr>
        <tr>
            <td>班级</td>
            <td><input type="text" class="input-white" name="bj"></td>
        </tr>
        <tr>
            <td>手机号</td>
            <td><input type="text" id="phone" class="input-white" name="tln"></td>
        </tr>
        <tr>
            <td>QQ号</td>
            <td><input type="text" class="input-white" name="qqn"></td>
        </tr>
        <!-- <tr>
             <td>有无计算机方面的经验</td>
             <td><textarea></textarea></td>
         </tr>-->
    </table>
        <button value="报名"  class="apply" id="apply" style="color: white">按钮</button>
    <%--<input type="button" value="报名"  class="apply" id="apply" style="color: white">--%>
    </form>
    <iframe name="nm_iframe" style="display:none;"></iframe>
</div>
<script>
    //之所以这么干，是因为当deviceWidth大于640时，则物理分辨率大于1280（这就看设备的devicePixelRatio这个值了），应该去访问pc网站了
    var div=document.getElementById('ff');
    var deviceWidth = document.documentElement.clientWidth;//1280
    if(deviceWidth <640) div.style.width="90%";


    var apply =document.getElementById('apply');
    apply.onclick=function checkPhone(){
        var phone = document.getElementById('phone').value;
        if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))){
            //表示以1开头，第二位可能是3/4/5/7/8等的任意一个，在加上后面的\d表示数字[0-9]的9位，总共加起来11位结束。
            alert("手机号码有误，请重填");
            return false;
        }
    }
</script>
</body>
</html>

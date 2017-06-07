<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/2/24
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<div id="my-btn"></div>
<input type="button" value="aaa" id="v2">
<input type="button" id="myBtn" value="Click Me"/>

<script>

    //        var btn1 = document.getElementById("v2");
    //        btn1.onclick = function(){
    //            alert(this.id);
    //        };

    //        var btn2 = document.getElementById("my-btn");
    //        btn2.addEventListener("click", function(){//DOM2事件处理程序
    //            alert(this.id);
    //        }, false);//false表示冒泡阶段调用事件处理程序
        var btn3 = document.getElementById("myBtn");
        btn3.onclick = function () {
            alert(this.id);
        };
        var Eventutil = {
        addHandler: function(element, type, handler){
            if(element.addEventListener){
                element.addEventListener(type, handler, false);
            }else if(element.attachEvent){
                element.attachEvent("on"+type, handler);
            }else{
                element["on"+type] = handler;
            }
        },
        removeHandler: function(element, type, handler){
            if(element.removeEventListener){
        element.removeEventListener(type, handler, false);
            }else if(element.detachEvent){
                element.detachEvent("on"+type, handler)
            }else{
                element["on"+type] = null;
            }
        }
    }
</script>
</body>
</html>

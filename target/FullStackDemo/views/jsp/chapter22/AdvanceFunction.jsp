<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/2/14
  Time: 17:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

<div id="my-btn"></div>
<input type="button" value="点击我" onclick="alert(event.type)"><!-- 输出click -->
<input id="my-btn2" type="button" value="点击我2"><!-- 输出click -->
<script>

    var EventUtil = {
        addHandler: function (element, type, handler) {//DOM2级事件
            if (element.addEventListener) {
                element.addEventListener(type, handler, false);
            } else if (element.attachEvent) {
                element.attachEvent("on" + type, handler);
            } else {
                element["on" + type] = handler;
            }
        }
//        removeHandler: function (element, type, handler) {
//            if (element.removeEventListener) {
//                element.removeEventListener(type, handler, false);
//            } else if (element.detachEvent) {
//                element.detachEvent("on" + type, handler)
//            } else {
//                element["on" + type] = null;
//            }
//        },
//        getEvent: function(event){
//            return event ? event : window.event;
//        },
//        getTarget: function(event){
//
//            return event.target || event.srcElement;
//        },
//        preventDefault: function(event){
//            if(event.preventDefault){
//                event.preventDefault();
//            }else{
//                event.returnValue = false;
//            }
//        },
//        stopPropagation: function(event){
//            if(event.stopPropagation){
//                event.stopPropagation();
//            }else{
//                event.cancelBubble = true;
//            }
//        }

    };
    function Person(name, age, job) {
        this.name = name;
        this.age = age;
        this.job = job;
    }
    var p1 = new Person("zhangsan", 18, "js");

    //函数绑定
    var handler = {
        message: "Event Handled",
        handlerClick: function (event) {
            alert(this.message+":"+event.type);
        }
    };
    var btn = document.getElementById("my-btn2");
    //EventUtil.addHandler(btn, "click", handler.handlerClick);//没有保存handler.handlerClick()的环境
    EventUtil.addHandler(btn, "click",handler.handlerClick.bind(handler));//bind()绑定方法


    function add(num1, num2){
        return num1 + num2;
    }
    function currieAdd(num2){
        return add(5, num2);
    }
    console.log((add(2, 3)));//5
    console.log((currieAdd(3)));//8

</script>
</body>
</html>

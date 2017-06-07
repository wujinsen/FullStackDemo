<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/2/26
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>


        var EventUtil = {
            addHandler: function (element, type, handler) {
                if (element.addEventListener) {
                    element.addEventListener(type, handler, false);//DOM2级事件
                } else if (element.attachEvent) {
                    element.attachEvent("on" + type, handler);
                } else {
                    element["on" + type] = handler;
                }
            },
            removeHandler: function (element, type, handler) {
                if (element.removeEventListener) {
                    element.removeEventListener(type, handler, false);
                } else if (element.detachEvent) {
                    element.detachEvent("on" + type, handler)
                } else {
                    element["on" + type] = null;
                }
            },
            getEvent: function(event){
                return event ? event : window.event;
            },
            getTarget: function(event){

                return event.target || event.srcElement;
            },
            preventDefault: function(event){
                if(event.preventDefault){
                    event.preventDefault();
                }else{
                    event.returnValue = false;
                }
            },
            stopPropagation: function(event){
                if(event.stopPropagation){
                    event.stopPropagation();
                }else{
                    event.cancelBubble = true;
                }
            }

        };

        //通信错误

        function addQueryStringArg(url, name , value){
            if(url.indexOf("?") == -1){//不匹配返回-1
                url += "?";
            }else{
                url += "&";
            }
            url += encodeURIComponent(name) + "=" + encodeURIComponent(value);
            return url;
        }
        alert(addQueryStringArg("www.baidu.com","aaa","www.baidu.com?a=b&c=d"));
    </script>
</head>
<body>

</body>
</html>

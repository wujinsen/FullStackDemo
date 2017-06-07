<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/2/20
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>Title</title>
    <script src="<%=path%>/views/js/jquery-1.10.2.min.js" ></script>

    <script>

        var d = new Date();
        console.log("d:"+ d);
//        $.ajax({
//            url : "http://192.168.70.3:5653/metrics",
//           type : "get",
//         //   async : false,
//         //   cache : false,
//           dataType : "jsonp",
//            jsonp : "callbackparam",
//         //   jsonpCallback : "jsonpCallback",
//            success : function(json) {
//                console.log(json)
//            },
//            error : function(e) {
//                //var data=Json.parse(e);
//              //  alert("error");
//            }
//        });
//        $.ajax({
//            url: "http://192.168.70.3:5653/metrics?callback=?",
//            dataType: "jsonp",
//            success: function (json) { alert("Success：" + json); },
//            error: function (x, e) { alert("Error：" + x.responseText); },
//            complete: function (x) { alert("Complete：" + x.responseText); }
//        });
//        var invocation = new XMLHttpRequest();
//        var url = 'http://192.168.70.3:5653/metrics';
//
//        function callOtherDomain() {
//            if(invocation) {
//                invocation.open('GET', url, true);
//                invocation.onreadystatechange = handler;
//                invocation.send();
//            }
//        }
        function createXHR(){
            if (typeof XMLHttpRequest != "undefined"){
                return new XMLHttpRequest();
            } else if (typeof ActiveXObject != "undefined"){
                if (typeof arguments.callee.activeXString != "string"){
                    var versions = ["MSXML2.XMLHttp.6.0", "MSXML2.XMLHttp.3.0",
                            "MSXML2.XMLHttp"],
                        i, len;

                    for (i=0,len=versions.length; i < len; i++){
                        try {
                            new ActiveXObject(versions[i]);
                            arguments.callee.activeXString = versions[i];
                            break;
                        } catch (ex){
                            //skip
                        }
                    }
                }

                return new ActiveXObject(arguments.callee.activeXString);
            } else {
                throw new Error("No XHR object available.");
            }
        }
        var xhr = createXHR();
        xhr.onreadystatechange = function(){
            if(xhr.readyState == 4){
                if((xhr.status >= 200 && xhr.status < 300) || xhr.status == 304){
                    alert(xhr.responseText);
                }else{
                    alert("Request was unsuccessful: "+xhr.status);
                }
            }
        }
        xhr.open("get", "http://192.168.70.3:5653/metrics", true);
        xhr.send(null);
//        function jsonpCallback(result) {
//            //alert(result);
//            for(var i in result) {
//                alert(i+":"+result[i]);//循环输出a:1,b:2,etc.
//            }
//        }
//        var JSONP=document.createElement("script");
//        JSONP.type="text/javascript";
//        JSONP.src="http://crossdomain.com/services.php?callback=jsonpCallback";
//        document.getElementsByTagName("head")[0].appendChild(JSONP);
//
//        $.ajax({
//            url:"http://192.168.70.3:5653/metrics",
//            dataType:'jsonp',
//            data:'',
//            jsonp:'callback',
//            success:function(result) {
//                for(var i in result) {
//                    alert(i+":"+result[i]);//循环输出a:1,b:2,etc.
//                }
//            },
//            timeout:3000
//        });

        //使用jsonp 跨域访问
//        $.ajax({
//            type: "get",
//            //url: "http://www.cnblogs.com/rss",
//            //  url: "http://suggest.taobao.com/sug?code=utf-8&q=mp3&callback=callback",
//            url: "http://192.168.70.3:5653/metrics?callback=?",
//            // url: "http://133.64.80.9:9082/bz/ajax.jsp?callback=?",
//            beforeSend: function(XMLHttpRequest){
//                //ShowLoading();
//            },
//            dataType : "jsonp",
//            jsonp: 'callback',
//            success: function(data,textStatus){
//
////                $("#loadrss").html("1234");
////                //alert(textStatus);
////                alert(data.length);
////                alert(data[0].name);
////                alert(data[1].name);
////
////                $(data).each(function(i, item){
////                    //jquery 处理html 数据 ，找title 元素
////                    //$("#loadrss").append("<li>"+$(domEle).children("title").text()+"</li>");
////                    //jquery 处理Json 数据
////                    $("#loadrss").append("<li>"+item.name+"</li>");
////                });
//            },
//            complete: function(XMLHttpRequest, textStatus){
//                //HideLoading();
//            },
//            error: function(){
//                //请求出错处理
//                console.log("err");
//            }
//        });
        //        $.ajax({
//            url:"http://192.168.70.3:5653/metrics",
//            dataType:'jsonp',
//            data:'',
//            jsonp:'callback',
//            success:function(result) {
//                console.log(result);
//            }
//           // timeout:3000
//        });
        // 设置crossDomain和dataType参数以使用JSONP
//        $.ajax({
//            dataType: "jsonp",
//            url: "http://192.168.70.3:5653/metrics",
//            crossDomain: true,
//            data: {
//
//            }
//        }).done(function(data) {
//            console.log(data);
//            // 请求完成时的处理函数
//        });

    </script>
</head>
<body>

</body>
</html>

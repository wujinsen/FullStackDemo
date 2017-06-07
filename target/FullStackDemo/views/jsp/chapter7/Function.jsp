<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/2/15
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>

        //闭包
        function createComparisionFunction(propertyName) {
            return function (object1, object2) {
                var value1 = object1[propertyName];
                var value2 = object2[propertyName];
                if (value1 < value2) {
                    return -1;
                } else if (value1 > value2) {
                    return 1;
                } else {
                    return 0;
                }
            }
        }

        //闭包与变量
        function createFunctions() {
            var result = new Array();
            for (var i = 0; i < 10; i++) {
                result[i] = function () {
                    return i;
                }

            }

            return result;
        }

        console.log("createFunctions(): " + createFunctions());

        function createFunctions2() {
            var result = new Array();
            for (var i = 0; i < 10; i++) {
                result[i] = function (num) {
                    return function () {
                        return num;
                    }
                }(i);
            }
            return result;
        }
        console.log("createFunctions2(): " + createFunctions2());

        //this对象
        var name = "Hello World";
        var object = {
            name: "HaHa",
            getNameFunc: function () {
                return function () {//返回匿名函数
                    return this.name;
                }
            }
        }
        console.log(object.getNameFunc()());//"Hello World" 非严格模式下

        var name2 = "Hello World";
        var object2 = {
            name2: "HaHa",
            getNameFunc: function () {
                var that = this;
                return function () {//返回匿名函数
                    return that.name2;
                }
            }
        }
        console.log(object2.getNameFunc()());//"HaHa"
        var name3 = "Hello World";
        var object3 = {
            name3: "Haha",
            getName: function () {
                return this.name3;
            }
        }
        console.log("object3.getName(): " + object3.getName());//HaHa
        console.log((object3.getName)());//HaHa
        console.log((object3.getName = object3.getName)());//Hello World


        //模仿块级作用域
        function outputNumbers(count) {
            for (var i = 0; i < count; i++) {
                alert(i);
            }
            console.log("i: "+ i);
        }
    </script>
</head>
<body>

</body>
</html>

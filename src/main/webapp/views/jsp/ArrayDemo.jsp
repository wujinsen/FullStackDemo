<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/1/11
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>
        var colors = ["Red", "Blue", "Green"];
        console.log(colors[0]);
        colors[2] = "Black";//修改第三项
        colors[3] = "Brown";//新增第四项
        console.log("colors: " + colors, "colors.length: " + colors.length);

        var colors2 = ["Red", "Blue", "Green"];
        var result = colors2.concat("Black");
        console.log("concat:" + result);
        var colors3 = ["Red", "Blue", "Green"];
        console.log(colors3.slice(1, 2));
        console.log("转换方法：");
        var colors = ["Red", "Blue", "Green"];
        console.log("colors.toString(): " + colors.toString());//Red,Blue,Green 字符串格式
        console.log("colors.valueOf(): " + colors.valueOf());//Red,Blue,Green 数组
        console.log("colors: " + colors);

        alert(sum(10, 20));
//        var sum = function (num1, num2) {//
//            return num1 + num2;
//        }
        function sum(num1, num2){
            return num1,num2;
        }
        //转换方法
        var person1 = {
            tolocalString: function () {
                return "aaa";
            },
            toString: function () {
                return "bbb";
            }
        }
        var person2 = {
            tolocalString: function () {
                return "ccc";
            },
            toString: function () {
                return "ddd";
            }
        }
        var people = [person1,person2];
        console.log("people: "+people);
        console.log("people.toString(): "+people.toString());
        console.log("people.toLocaleString(): "+people.toLocaleString());

    </script>
    <title>Title</title>
</head>
<body>

</body>
</html>

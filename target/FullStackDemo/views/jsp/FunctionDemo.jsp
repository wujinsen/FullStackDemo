<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/1/11
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function callSomeFunction(someFunction, someArgument) {//函数作为值传递
            return someFunction(someArgument);
        }
        function add10(num) {
            return num + 10;
        }
        var result = callSomeFunction(add10, 10);//要访问函数的指针而不执行函数的话，去掉圆括号就行了
        console.log(result);//20
        function getGreeting(name) {
            return "Hello," + name;
        }
        var result2 = callSomeFunction(getGreeting, "aoisora");
        console.log(result2);//Hello,aoisora
        //函数内部属性 arguments.callee属性
        //callee属性是一个指针，指向拥有这个arguments对象的函数
        function factorial(num) {//函数声明
            if (num <= 1) {
                return 1;
            } else {
                return num * factorial(num - 1);//为了消除紧耦合，使用arguments.callee
            }
        }
        var f = factorial;
        factorial = function(){
            return 0;
        }
        console.log("f: "+f(5));//返回0
        console.log("factorial(5): "+factorial(5));

        function factorial2(num){
            if (num <= 1) {
                return 1;
            } else {
                return num * arguments.callee(num - 1);//为了消除紧耦合，使用arguments.callee
            }
        }
        var f2 = factorial2;
        factorial2 = null;
       // console.log("factorial2(5): "+factorial2(5));
        console.log("f2: "+f2(5));//使用arguments.callee就不会报错

        window.color = "red";//color是全局对象
        var o = {color: "blue"};
        function getColor(){
            return this.color;
        }
        console.log("getColor(): "+getColor());//执行函数
        console.log("getColor: "+getColor);//访问函数指针
        o.bbb = getColor;
        console.log(o.bbb());//" blue"

    </script>
</head>
<body>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/1/9
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        //    var a=0.1,b=0.2;
        //    alert(a+b);
        //    if(a+b==0.3){
        //        alert('haha');
        //    }
        //    var obj1 = new Object();
        //    var obj2 = obj1;
        //    obj1.name = "zhangsna";
        //    obj2.nane="lisi";
        //    alert(obj2.name);
        //    function setName(obj){
        //        obj.name="张三";
        //        obj = new Object();
        //        obj.name="李四";//此处的引用为局部对象，在函数执行完后后会被销毁
        //        return obj.name;
        //    }
        //    var person = new Object();
        //    setName(person);
        //    alert(person.name);
        //    alert(setName(person));
        var p = {
            name: "张三",
            5: "aaa"
        }
        alert(p.name);
        alert(p[5]);
        function dispayInfo(args) {
            var output = "";
            if (typeof args.name == "string") {
                output += args.name;
            }
            if (typeof args.age == "number") {
                output += args.age;
            }
            alert(output);
        }
        dispayInfo({
            name: "zhangs",
            age: 18
        })
        /*从一个函数返回另一个函数*/
        function createComparisonFunction(properName) {
            return function (object1, object2) {
                var value1 = object1[properName];
                var value2 = object2[properName];
                if (value1 < value2) {
                    return -1;
                } else if (value1 > value2) {
                    return 1;
                } else {
                    return 0;
                }
            }
        }
    </script>
</head>
<body>
hello lalala
</body>
</html>

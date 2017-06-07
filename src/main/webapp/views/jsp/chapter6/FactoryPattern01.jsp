<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/2/13
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
                function createPerson(name, age, job) {
                    var o = new Object();
                    o.name = name;
                    o.age = age;
                    o.job = job;
                    o.sayName = function () {
                        return this.name;
                    }
                    return o;
                }
                var person1 = createPerson("zhangsan", 18, "JavaScript Programmer");
                var person2 = createPerson("lisi", 18, "Java Programmer");
                console.log("person1: " + person1.sayName());
                console.log("person2: " + person2.sayName());
                function Person(name, age) {
                    this.name = name;
                    this.age = age;
                    this.sayName = function () {
                        alert(this.name);
                    }
                }
                var p1 = Person("zhangsan", 18);
                var p2 = Person("lisi", 19);
                Person("wangwu", 20);//添加到window
                var o = {};//new Object();
                Person.call(o, "aa");
                o.sayName();
                window.sayName();

        //原型模式
        function Person2() {
            Person2.prototype.name = "zhangsan";
            Person2.prototype.age = 18;
            Person2.prototype.sayName = function () {
                console.log(("Person2 sayName: " + this.name));
            }
        }
        var p1 = new Person2();//调用了一个词sayName
       p1.sayName();
        var p2 = new Person2();
      //  p2.sayName();
        console.log((p1.sayName() == p2.sayName()));
        console.log("isPrototypeOf: "+Person2.prototype.isPrototypeOf(p1));

        console.log("({}+{}).length: "+({}+{}).length);
    </script>
</head>
<body>

</body>
</html>

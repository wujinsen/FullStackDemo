<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/2/10
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        var book = {
            title: "java高级程序设计",
            price:100,
            authors: ["aaaaa"]
        }
        var jsonText = JSON.stringify(book);//{"title":"java高级程序设计","price":100,"authors":["aaaaa"]}
        console.log(jsonText);
        var bookCopy =JSON.parse(jsonText);
        console.log(bookCopy);
    </script>
</head>
<body>

</body>
</html>

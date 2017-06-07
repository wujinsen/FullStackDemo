<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/1/15
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/react.min.js"></script>
    <script src="../js/react-dom.min.js"></script>
    <script src="../js/brower.min.js"></script>
    <%--   <script type="text/babel">

           ReactDOM.render(
                   <h1>HelloWorld</h1>,
                   document.getElementById('example')
           );
       </script>--%>
</head>
<body>
<div id="example"></div>
<div id="arr"></div>
<div id="component"></div>
<script type="text/babel">
    /*  ReactDOM.render(
     <h1>Hello, world!</h1>,
     document.getElementById('example')
     );*/
    var names = ['zhangsan', 'lisi', 'wangwu'];
    ReactDOM.render(
            <div>
                {
                    names.map(function (name) {
                        return <div>Hello, {name}!</div>
                    })
                }
            </div>,
        document.getElementById('example')
    );
    var arr = [
        <h1>Hello World!</h1>,
        <h2>React is awesome</h2>,
    ];
    ReactDOM.render(
            <div>{arr}</div>,
        document.getElementById('arr')
    )
    /*封装组件component*/
    var HelloMessage = React.createClass({
        render: function(){
            return <h1>Hello  {this.props.name}</h1>;
        }
    });
    ReactDOM.render(
        <HelloMessage name="John"/>,
        document.getElementById('component')
    )
</script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: wjs
  Date: 2017/1/15
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/react.min.js"></script>
    <script src="../js/react-dom.min.js"></script>
    <script src="../js/brower.min.js"></script>
</head>
<body>
<script type="text/babel">
    var NodesList = React.createClass({
        render: function () {
            return (
                <ol>
                    {
                        React.Children.map(this.props.children,function(child){
                            return <li>{child} aaa</li>;
                        })
                    }
                </ol>
            );
        }
    });
    ReactDOM.render(
            <NodesList>
                <span>hello</span>
                <span>world</span>

            </NodesList>,
    document.body
    );
</script>
</body>
</html>

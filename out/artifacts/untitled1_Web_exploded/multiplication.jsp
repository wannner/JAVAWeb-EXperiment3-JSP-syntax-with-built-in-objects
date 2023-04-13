<%--
  Created by IntelliJ IDEA.
  User: wannner
  Date: 2023/3/29
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上三角乘法表</title>
</head>
<body>
<h2>上三角乘法表</h2>
<table border="3">
    <%
        for (int i = 1; i <= 9; i++) {%>
    <tr>
            <%for (int j = 1; j <= 9; j++) {
                if (j < i) {%>
        <td></td>

    <%} else {%>
        <td><%=i%>*<%=j%>=<%=i*j%></td>

    <%}
            }%>
    </tr>
        <%}
    %>
</table>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: wannner
  Date: 2023/3/30
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功！</title>
</head>
<body>
<%!
    int count = 1;
%>
<%
    String id = session.getId();
%>


<%=request.getParameter("yonghuming")%>登陆成功！
<br>
您是第<%=count++%>个登录本网站的人。
<form action="login.jsp">
    <button type="submit" formaction="login.jsp">退出登录</button>
</form>
</body>
</html>

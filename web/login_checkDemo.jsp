<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: wannner
  Date: 2023/3/30
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<%
  String a=request.getHeader("referer");
  if (a!=null&&a.length()>=54&&Objects.equals(a.substring(0,54),"http://localhost:8080/untitled1_Web_exploded/login.jsp")){%>
<jsp:forward page="login_check.jsp"></jsp:forward>
<%  } else {
  response.sendRedirect("fail.jsp");
  //防盗链代码

}

%>
</body>
</html>

<%@ page import="com.sun.jdi.connect.spi.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.mysql.cj.jdbc.Driver" %>
<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: wannner
  Date: 2023/3/30
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>check</title>
</head>
<body>

<%
    request.setCharacterEncoding("UTF-8");
    String studentid = request.getParameter("studentid");
    String password = request.getParameter("password");
    String a="http://localhost:8080/untitled1_Web_exploded/login.jsp";
    System.out.println(a.length()+a.substring(0,54));
%>
<%! public static final String DBDRIVER = "com.mysql.cj.jdbc.Driver";
    public static final String DBURL = "jdbc:mysql://127.0.0.1:3306/test? useSSL=false & serverTimezone=UTC";//"jdbc:mysql://127.0.0.1:3306/test?characterEncoding=utf-8 & useSSL=false & serverTimezone= UTC &rewriteBatchedStatement=true";
    public static final String DBUSER = "root";
    public static final String DBPASS = "gg20030713";
%>
<%
    java.sql.Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    boolean flag = false;
    String username = null;

    Class.forName(DBDRIVER);
    con = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
    String sql = "select studentName from students where studentId=? and studentPwd=?";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1, studentid);
    pstmt.setString(2, password);
    rs = pstmt.executeQuery();//数据库连接
    if (rs.next()) {
        username = rs.getString(1);
        flag = true;
    }
%>
<%
    if (flag) {//成功情况
%>
<jsp:forward page="login_success.jsp">
    <jsp:param name="yonghuming" value="<%=username%>"/>
</jsp:forward>
<%
} else {%>//失败情况
    <jsp:forward page="login_fail.jsp"></jsp:forward>
<%
    }
%>
</body>
</html>

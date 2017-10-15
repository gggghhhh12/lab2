<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<%@ page contentType="text/html;charset=utf-8"%> 
<%@ taglib prefix="s" uri="/struts-tags" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>图书管理系统</title>
		<style type="text/css">
body{
background: url(test.jpg)
}
</style>
	</head>
	<body>
	<h2 align="center">图书管理系统</h2>	
	    <p align="center"><a href="add.html">添加图书信息</a><p>
		<table align="center" width="50%" border="1">
		<tr><th>书名</th><th>管理</th></tr>
		<%
		Class.forName("com.mysql.jdbc.Driver");
		 Connection con = DriverManager.getConnection("jdbc:mysql://hezxywbiizey.mysql.sae.sina.com.cn:10645/bookdb","root","zk199707021"); 
		 String sql="select * from book";
		 Statement stmt = con.createStatement();  
         ResultSet rs = stmt.executeQuery(sql);
         %>
        <% 
         while (rs.next()) {
        	 %>
        	 <tr>  
            <td>  
                <a href="show?title=<%out.print(rs.getString(2));%>"><%out.print(rs.getString(2));%></a>
            </td>  
            <td>  
                 <a href="del?isbn=<%out.print(rs.getString(1));%>" onclick="return confirm('确定要删除吗')">删除</a>
                 
            </td>
        </tr>  
        <%  
            } 
        rs.close();
        stmt.close();
        con.close();
        %>
       <tr>
        <td>
        <a href="<%="serch.jsp"%>">搜索</a> &nbsp;
    </td>
    </tr>
	    </table>
	</body>
</html>




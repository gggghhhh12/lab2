<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>书的详细信息</title>
</head>
<body>
<table align="center" width="50%" border="1">
<tr><th>isbn</th><th>书名</th><th>出版社</th><th>出版日期</th><th>价格</th><th>作者id</th><th>作者姓名</th>
<th>作者年龄</th><th>作者国家</th>
</tr>
<tr>
<td>
<s:property value="isbn"/>
</td>
<td>
<s:property value="title"/>
</td>
<td>
<s:property value="publisher"/>
</td>
<td>
<s:property value="publishdate"/>
</td>
<td>
<s:property value="price"/>
</td>
<td>
<s:property value="authorid"/>
</td>
<td>
<s:property value="name2"/>
</td>
<td>
<s:property value="age"/>
</td>
<td>
<s:property value="country"/>
</td>
</tr>
</table>
<h1>
<center>
<a href="index.jsp">返回首页</a>
</center>
</h1>
</body>
</html>
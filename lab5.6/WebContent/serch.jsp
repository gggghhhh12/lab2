<%@ page language="java" contentType="text/html; 
charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>搜索书</title>
</head>
	<body>
	
		<form action="loginaction" method="post">
		<input type="text" name="name">
		<label>请输入作者姓名</label>
<table>
	<tr>
	<td colspan="2">
		<input type="submit" value="搜索">
		<input type="reset" value="重置">
	</td>
	</tr>
</table>
		</form>
	</body>
</html>
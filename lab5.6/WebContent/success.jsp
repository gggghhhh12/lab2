<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<table border="0" cellspacing="0" cellpadding="1">
<tr>
  <th>编号</th>
  <th>书名</th>
</tr>
<s:iterator value="title2" status="rowstatus">
  <tr>
  <s:if test="title2[#rowstatus.index]!=null">
<td><s:property value="%{#rowstatus.count}"/></td>
<td><a href="show?title=<s:property value="%{title2[#rowstatus.index]}"/>"><s:property value="%{title2[#rowstatus.index]}"/></a></td>
    </s:if>
    <s:else>
      <td><s:property/></td>
    </s:else>
  </tr>
</s:iterator>
</table>
</body>
</html>
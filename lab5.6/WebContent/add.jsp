<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<%@ page contentType="text/html;charset=utf-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>
	<body>
	<%
	request.setCharacterEncoding("utf-8");
	String isbn=request.getParameter("ISBN");
	String  title=request.getParameter("title");
	String authorid=request.getParameter("authorid");
	String publisher=request.getParameter("publisher");
	String  publishdate=request.getParameter("publishdate");
	String price=request.getParameter("price");
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	String country=request.getParameter("country");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://hezxywbiizey.mysql.sae.sina.com.cn:10645/bookdb","root","zk199707021"); 
	String sql="insert into book values(?,?,?,?,?,?,null)";
	String sql2="insert into author values(?,?,?,?)";
	PreparedStatement pstmt=con.prepareStatement(sql);
	PreparedStatement pstmt2=con.prepareStatement(sql2);
	pstmt.setString(1, isbn);
	pstmt.setString(2, title);
	pstmt.setString(3, authorid);
	pstmt.setString(4, publisher);
	pstmt.setString(5, publishdate);
	pstmt.setString(6,price);
	pstmt2.setString(1,authorid);
	pstmt2.setString(2,name);
	pstmt2.setString(3,age);
	pstmt2.setString(4,country);
	int result=pstmt.executeUpdate();
	int result2=pstmt2.executeUpdate();
	String msg="添加失败，单击确定跳转到图书列表页";
	if(result== 1&&result2==1)
	{
		msg="添加成功，单击确定跳转到图书列表页";
	}
	
	pstmt.close();
	pstmt2.close();
	con.close();
	%> 
	<script> window.alert("<%=msg%>");</script>
	<%
	response.setHeader("Refresh", "1; url=index.jsp");
	%>
	
	</body>
</html>

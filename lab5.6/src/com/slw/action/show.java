package com.slw.action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;
public class show  extends ActionSupport{
public String name,name1;
public String isbn,authorid,publisher,title,publishdate,price;
public String name2,age,country;
public  String showexecute()
{

	String ret="showerror";
     try{  
    	 Class.forName("com.mysql.jdbc.Driver");  //加载MYSQL JDBC驱动程序  
          Connection connect = DriverManager.getConnection(  
            "jdbc:mysql://hezxywbiizey.mysql.sae.sina.com.cn:10645/bookdb","root","zk199707021");  
            //连接URL为 jdbc:mysql//服务器地址/数据库名 ，后面的2个参数分别是登陆用户名和密码   
          Statement stmt = connect.createStatement();  
          Statement stmt1 = connect.createStatement();
           ResultSet rs = stmt.executeQuery("select * from book where title ='"+ title+"'");
           while(rs.next())
           {
        	   isbn=rs.getString(1);
        	   name=rs.getString(2);
        	   authorid=rs.getString(3);
        	   publisher=rs.getString(4);
        	   publishdate=rs.getString(5);
        	   price=rs.getString(6);
           }
           ResultSet gs= stmt1.executeQuery("select * from author where authorid='"+authorid+"'");
           while(gs.next())
           {
        	   name2=gs.getString(2);
        	   age=gs.getString(3);
        	   country=gs.getString(4);
        	   ret="showsuccess";
           }
           //gs.close();
           //stmt1.close();
             
         }catch(Exception e) 
     {
        	ret="showerror";
           e.printStackTrace();  
         }  
      
    return ret;
     }  
public String getName() 
{
   return name;
}
public void setName(String name) {
   this.name = name;
} 
public String gettitle() 
{
   return title;
}
public void settitle(String title) {
   this.title = title;
} 
public String getauthorid() 
{
   return authorid;
}
public void setauthorid(String authorid) {
   this.authorid= authorid;
} 

 }
 
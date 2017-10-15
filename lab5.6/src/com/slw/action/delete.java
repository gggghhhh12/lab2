package com.slw.action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;
public class delete  extends ActionSupport{
public String isbn;
public  String deleteexecute()
{

	String ret="showerror";
     try{  
    	 Class.forName("com.mysql.jdbc.Driver");  //加载MYSQL JDBC驱动程序  
          Connection connect = DriverManager.getConnection(  
            "jdbc:mysql://hezxywbiizey.mysql.sae.sina.com.cn:10645/bookdb","root","zk199707021");  
            //连接URL为 jdbc:mysql//服务器地址/数据库名 ，后面的2个参数分别是登陆用户名和密码   
          Statement stmt = connect.createStatement();  
          String sql="delete from book where ISBN='"+isbn+"'";
          int rs = stmt.executeUpdate(sql);
        
           stmt.close();
           if(rs==1)
           {
        	   ret="deletesuccess";
           }
             
         }catch(Exception e) 
     {
        	ret="dekleteerror";
           e.printStackTrace();  
         }  
   
    return ret;
     }  
public String getName() 
{
   return isbn;
}
public void setName(String isbn) {
   this.isbn = isbn;
} 
 }
 
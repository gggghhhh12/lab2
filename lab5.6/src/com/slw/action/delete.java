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
    	 Class.forName("com.mysql.jdbc.Driver");  //����MYSQL JDBC��������  
          Connection connect = DriverManager.getConnection(  
            "jdbc:mysql://hezxywbiizey.mysql.sae.sina.com.cn:10645/bookdb","root","zk199707021");  
            //����URLΪ jdbc:mysql//��������ַ/���ݿ��� �������2�������ֱ��ǵ�½�û���������   
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
 
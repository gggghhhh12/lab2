package com.slw.action;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import com.opensymphony.xwork2.ActionSupport;
 import java.sql.*;
public class serch  extends ActionSupport{
public String name;
public String title[] = new String[20];
public String title2[] = new String[20];
public String title3="";
public int len=0;
public  String execute()
{
	String newname[] = new String[100];
	int i=0,i2=0,i3=0;
	String ret=ERROR;
     try{  
    	 Class.forName("com.mysql.jdbc.Driver");  //加载MYSQL JDBC驱动程序  
          Connection connect = DriverManager.getConnection(  
            "jdbc:mysql://hezxywbiizey.mysql.sae.sina.com.cn:10645/bookdb","root","zk199707021");  
            //连接URL为 jdbc:mysql//服务器地址/数据库名 ，后面的2个参数分别是登陆用户名和密码   
          Statement stmt = connect.createStatement();  
          Statement stmt1 = connect.createStatement();
         
           ResultSet rs = stmt.executeQuery("select authorid from author where name ='"+ name+"'");
           while(rs.next())
           {
        	  newname[i]=rs.getString(1);
        	   i++;
           }
           
           for(int j=0; j<newname.length&&newname[j]!=null;j++)
           {
           ResultSet gs= stmt1.executeQuery("select title from book where authorid='"+newname[j]+"'");
           while(gs.next())
           {
        	   title2[i3]=gs.getString(1);
        	   i3++;
           }
           //gs.close();
           //stmt1.close()
          }
        	   while(title2[i2]!=null||title2[i2+1]!=null)
               {
        		   
            	   title3=title3+title[i2]+',';
            	   i2++;
            	   ret=SUCCESS;
               }
        	  
         }catch(Exception e) 
     {
        	 ret=ERROR;
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
 public String gettitle3() 
 {
    return title3;
 }
 public void settitle3(String title3) {
    this.title3 = title3;
 } 
 public String[] gettitle2() 
 {
    return title2;
 }
 public void settitle(String[] title2) {
    this.title2 = title;
 } 

 }
 
 
 
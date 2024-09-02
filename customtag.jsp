JSP Custom Tag attribute example with database

Let's create a custom tag that prints a particular record of table for the given table name and id.

So, you have to have two properties in the tag handler class.
PrintRecord.java 




1.package com.javatpoint;  
2.import javax.servlet.jsp.JspException;  
3.import javax.servlet.jsp.JspWriter;  
4.import javax.servlet.jsp.tagext.TagSupport;  
5.import java.sql.*;  
6.  
7.public class PrintRecord extends TagSupport{  
8.private String id;  
9.private String table;  
10.  
11.public void setId(String id) {  
12.    this.id = id;  
13.}  
14.public void setTable(String table) {  
15.    this.table = table;  
16.}  
17.  
18.public int doStartTag()throws JspException{  
19.    JspWriter out=pageContext.getOut();  
20.    try{   
21.        Class.forName("oracle.jdbc.driver.OracleDriver");  
22.        Connection con=DriverManager.getConnection(  
23.                 "jdbc:oracle:thin:@localhost:1521:xe","system","oracle");  
24.        PreparedStatement ps=con.prepareStatement("select * from "+table+" where id=?");  
25.        ps.setInt(1,Integer.parseInt(id));  
26.        ResultSet rs=ps.executeQuery();  
27.        if(rs!=null){  
28.        ResultSetMetaData rsmd=rs.getMetaData();  
29.        int totalcols=rsmd.getColumnCount();  
30.        //column name  
31.        out.write("<table border='1'>");  
32.        out.write("<tr>");  
33.        for(int i=1;i<=totalcols;i++){  
34.            out.write("<th>"+rsmd.getColumnName(i)+"</th>");  
35.        }  
36.        out.write("</tr>");  
37.        //column value  
38.          
39.        if(rs.next()){  
40.            out.write("<tr>");  
41.                for(int i=1;i<=totalcols;i++){  
42.                out.write("<td>"+rs.getString(i)+"</td>");  
43.            }  
44.            out.write("</tr>");  
45.                  
46.        }else{  
47.            out.write("Table or Id doesn't exist");  
48.        }  
49.        out.write("</table>");  
50.          
51.        }  
52.        con.close();  
53.    }catch(Exception e){System.out.println(e);}  
54.    return SKIP_BODY;  
55.}  
56.}  
m.tld 




1.<?xml version="1.0" encoding="ISO-8859-1" ?>    
2.<!DOCTYPE taglib    
3.        PUBLIC "-//Sun Microsystems, Inc.//DTD JSP Tag Library 1.2//EN"    
4.    "http://java.sun.com/j2ee/dtd/web-jsptaglibrary_1_2.dtd">    
5.    
6.<taglib>  
7.  
8.  <tlib-version>1.2</tlib-version>  
9.  <jsp-version>2.0</jsp-version>  
10.  <short-name>c</short-name>  
11.  <uri>javatpoint</uri>  
12.  
13.<tag>  
14.<name>printRecord</name>  
15.<tag-class>com.javatpoint.PrintRecord</tag-class>  
16.<attribute>  
17.<name>id</name>  
18.<required>true</required>  
19.</attribute>  
20.<attribute>  
21.<name>table</name>  
22.<required>true</required>  
23.</attribute>  
24.  
25.</tag>  
26.</taglib>  
index.jsp 




1.<%@ taglib uri="javatpoint" prefix="j" %>  
2.<j:printRecord table="user874" id="1"></j:printRecord>  

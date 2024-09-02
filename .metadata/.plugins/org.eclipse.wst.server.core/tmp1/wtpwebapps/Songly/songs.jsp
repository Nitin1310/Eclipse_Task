<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection connection=null;
Statement statement=null;
ResultSet rs= null;
try
{
	 ServletContext sc=getServletContext();
     connection=(Connection)sc.getAttribute("mycon"); 
      statement=connection.createStatement();
}catch(Exception e)
{
System.out.println("Ex: "+e);
}
   String QueryString = "SELECT title from songs";
    rs = statement.executeQuery(QueryString);
%>


<%
while (rs.next()) {
String arr[]= new String [rs.getString("title").split("\\,").length];
int i;
for(i=0;i<arr.length;i++)
{
arr = rs.getString("title").split("\\,");

%>
<a href="PlaySong.jsp?sid=<%=rs.getString("title")%>" ><input TYPE=checkbox NAME="chkSample" VALUE="<%=rs.getString("title")%>" ><%=rs.getString("title")%></a><BR>


<% } } 

// close all the connections.

rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</body>
</html>
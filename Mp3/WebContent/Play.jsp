<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
ResultSet rs=null;
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
    connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
	// Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	// connection = DriverManager.getConnection("jdbc:sqlserver://FUTURE;databaseName=Oakridge","sa","123");
	
}catch(Exception e)
{

}
try
{
	
	statement = connection.createStatement();
String QueryString = "select * from songs where title='"+request.getParameter("sid")+"'";
 rs = statement.executeQuery(QueryString);


while (rs.next()) {
byte[] bytearray = new byte[10240];
int size=0;

InputStream songs;

response.addHeader("Content-Disposition","filename=getsongs.mp3");
response.reset();
response.setContentType("audio/mpeg");
songs=rs.getBinaryStream(2);


while((size=songs.read(bytearray))!= -1)
{
response.getOutputStream().write(bytearray,0,size) ;

}
response.flushBuffer();
//songs.close(); 
}

// close all the connections.

rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
	System.out.println("Problem: "+ex);
}
%>
</body>
</html>
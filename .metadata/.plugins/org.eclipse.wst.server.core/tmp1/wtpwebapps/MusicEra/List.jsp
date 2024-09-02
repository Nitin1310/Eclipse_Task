<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Music Era</title>
<link href="CSS/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@include file="Header.html" %>
<center><div id="list">
    <%
try
{
	String album=request.getParameter("album");
%>
<img src="Images/Me.png" style="width:200px; height:200px; box-shadow: 0px 0px 9px 1px #888;" />
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con =  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("Select * from SongsList where Album='"+album+"'");
    if(rs.next()) 
    {
%>
       <center> 
       <br>
       <h2>Movie Name:<%=rs.getString("Album") %></h2>
       <h3>Music Company: <%=rs.getString("Company") %></h3>
       <h4>Release On: <%=rs.getString("ReleaseOn") %></h4>
       <i><h6 style="color: blue;">To download songs right click on song name and save link as</h6></i>
       </center>
  <%
    }
    rs.close();
    stmt.close();
    %>
    
    <table class="bordered">
    <thead>

    <tr>
        <th>#</th>        
        <th style="width:60%;">Song</th>
        <th>Singers</th>
    </tr>
    </thead>
    <%
    int i=0;
    Statement stmt2 = con.createStatement();
    ResultSet rs2=stmt2.executeQuery("select * from SongsList where Album='"+album+"'");
    while(rs2.next())
    {
    	i++;
    	%>
    	<tr>
        <td><%=i %></td>        
        <td><a href="Play.jsp?title=<%=rs2.getString("Title")%>"><%=rs2.getString("Title")%></a></td>
        <td><%=rs2.getString("Singers") %></td>
    </tr>        
    	<%
    }
    %>
    </table>
    <%
    rs2.close();
    stmt2.close();
    con.close();
} 
catch (Exception e) 
{
    out.println("Error: "+e);
    return;
} 
%>
</div></center>
<%@include file="Footer.html" %>
</body>
</html>
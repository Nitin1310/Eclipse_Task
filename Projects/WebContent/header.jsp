<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="styleSelect.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin: 0px;">
    <div id="headers">
        <div id="logo">
            <img style="width:100%;" src="images/coder.png"/>
          </div>
          <div id="profile">
          <%
try
{
	String email=request.getParameter("email");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con =  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("Select * from customers where email='"+email+"'");
    while(rs.next()) 
    {
%>
            <img  id="img"  src="http://localhost:8080/Upload_Image/show.jsp"/>
             <%
    }
    rs.close();
    stmt.close();
    con.close();
} 
catch (Exception e) 
{
    out.println(e);
    return;
} 
%>
          </div>
          <h2 id="name">Shailendra Singh</h2>
          <hr style="margin-top: 100px;">
          <div id="menu">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Profile</a></li>
                    <li><a href="#">Improve Profile</a></li>
                    <li><a href="#">My Projects</a></li>
                    <li><a href="#">Find Projects</a></li>
                    <li><a href="#">Help</a></li>
                    <li><input type="search" name ="srch" id="sbox" placeholder="search projects"/></li>
                </ul>
          </div>
    </div>
</body>
</html>
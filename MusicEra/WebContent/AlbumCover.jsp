<%@page import="java.io.*"%>
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
</head>
<body>
<%
        try
        {
        	String album=request.getParameter("album");
             response.setContentType("image/jpeg");
             byte[] rawBytes = null;
            OutputStream o = response.getOutputStream();
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("Select distinct Album from SongsList where Album='"+album+"'");
        if(rs.next())
        {
            rawBytes = rs.getBytes("Cover");
             o.write(rawBytes); 
             o.flush();
             o.close();
             return;
       }
        //OutputStream o = response.getOutputStream();
        o.close();
        rs.close();
        st.close();
        con.close();return;
        }catch(Exception e)
        {
     } %>
</body>
</html>
<%@page import="java.awt.Color"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       <%--  <%!
        private static final String url="jdbc:oracle:thin@localhost:1521:xe";
        private static final  String user="System";
        private static final String pass="123";
        %>--%>
        <%
      
        	Connection con=null;
        	FileInputStream fis=null;
        	DateFormat date=new SimpleDateFormat("dd/MM/yyy");
        	Date d= new Date();
         try
         {
        	 Class.forName("oracle.jdbc.driver.OracleDriver");
             con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
        	 //Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        	// con = DriverManager.getConnection("jdbc:sqlserver://FUTURE;databaseName=Oakridge","sa","123");
        	 con.setAutoCommit(false);
        	 
        	 String sql = "insert into Songs(title,song,ReleaseOn) values(?,?,?)";
        	 PreparedStatement stmt = con.prepareStatement(sql);
        	 stmt.setString(1, request.getParameter("title"));
        	 File f = new File(request.getParameter("song"));
        	try
        	{
        	 fis = new FileInputStream(f);
        	}catch(IOException i)
        	{
        		System.out.println("Error : "+i);
        	}
        	 
        	 stmt.setBinaryStream(2, fis,(int) f.length());
        	stmt.setString(3, date.format(d));
        	int b= stmt.executeUpdate();
     
        	 con.commit();
        	 if(b>0)
        	 System.out.println("yes "+b);
        	 else
        		 System.out.println("Some Error");
        	 %>
        	  <%String songs=request.getParameter("song"); %>
                <audio controls="controls">
                    <source src="track.ogg" type="audio/ogg" />
                    <source src="tera.mp3" type="audio/mpeg" />
                    Your browser does not support the audio element.
                </audio>
                <%
        	 response.sendRedirect("Upload.jsp");
        }catch(Exception e)
        {
        	e.printStackTrace();
        }
         finally
         {
        	 if(fis!=null)
        	 {
        		 fis.close();
        	 }
        	 if(con != null && !con.isClosed())
        	 {
        		 con.close();
        	 }
         }
        %>
</body>
</html>
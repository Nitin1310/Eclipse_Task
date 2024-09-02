<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.*"%>
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
    String contentType = request.getContentType();
    if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
    DataInputStream in = new DataInputStream(request.getInputStream());
    int formDataLength = request.getContentLength();
    byte dataBytes[] = new byte[formDataLength];
    int byteRead = 0;
    int totalBytesRead = 0;
    while (totalBytesRead < formDataLength) {
    byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
    totalBytesRead += byteRead;
    }
    String file = new String(dataBytes);
    String saveFile = file.substring(file.indexOf("filename=\"") + 10);
    saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
    saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
    System.out.println(saveFile);
    int lastIndex = contentType.lastIndexOf("=");
    String boundary = contentType.substring(lastIndex + 1,contentType.length());
    int pos;
    pos = file.indexOf("filename=\"");
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    int boundaryLocation = file.indexOf(boundary, pos) - 4;
    int startPos = ((file.substring(0, pos)).getBytes()).length;
    int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

    FileOutputStream fileOut = new FileOutputStream(saveFile);
    fileOut.write(dataBytes, startPos, (endPos - startPos));
    fileOut.flush();
    fileOut.close();

    Connection connection = null;
    String connectionURL = "jdbc:sqlserver://FUTURE;databaseName=Oakridge";;;
    ResultSet rs = null;
    PreparedStatement psmnt = null;
    FileInputStream fis;
    try {
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    connection = DriverManager.getConnection(connectionURL, "sa", "123");
    File f = new File(saveFile);
    psmnt = connection.prepareStatement("insert into songs(title,song) values(?,?)");
    fis = new FileInputStream(f);
    psmnt.setString(1, request.getParameter("title"));
    psmnt.setBinaryStream(2, (InputStream)fis, (int)(f.length()));
    int s = psmnt.executeUpdate();
    if(s>0) {
        
    System.out.println("Uploaded successfully !");
    }
    else {
    System.out.println("unsucessfull to upload file.");
    }
    }
    catch(Exception e){e.printStackTrace();}
    }

    %>
</body>
</html>
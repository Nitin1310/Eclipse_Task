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
    boolean displayXHTML = false;
    String userAgent = request.getHeader("User-Agent");
    if(userAgent.startsWith("Mozilla/5.0")) {
    // browser can handle XHTML content
    displayXHTML = true;
    }if(displayXHTML) {
   %>
   <h1>Mozilla Browser</h1>
   <%
    } else {
   %>
   <h1>Not a Mozilla Browser</h1>
   <%
    }

    %>
</body>
</html>
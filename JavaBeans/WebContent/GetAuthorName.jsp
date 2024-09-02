<%@ page import ="java.util.*" %>
<html>
<head>
<title> JSP and JavaBean </title>
<font size=4 face="Verdana" color=#112244>
<jsp:useBean id="FA" scope="application" class="javabean.FindAuthor" />
<jsp:setProperty name="FA" property="*" />
<body>
<%
	Vector v = (Vector)FA.getResult();
	Enumeration enu = v.elements();
	while(enu.hasMoreElements())
	{
		 out.println("Author Name:"+enu.nextElement());
%>
<br>
<%
	 out.println("Address:"+enu.nextElement());
%>
<br>
<%
	 out.println("City:"+enu.nextElement());
%>
<br>
<%
	 out.println("State:"+enu.nextElement());
%>
<br>
<%
	 out.println("ZIP:"+enu.nextElement());
	}
%>
</body>
</head>

<%-- 
    Document   : SessionInfo
    Created on : Oct 14, 2015, 7:12:02 PM
    Author     : Shailendra Thakur
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try
            {
        // Get session creation time. 
                                            session = request.getSession();
		Date createTime =new Date(session.getCreationTime()); 
		// Get last access time of this web page. 
		Date lastAccessTime = new Date(session.getLastAccessedTime()); 
		String title ="Welcome Back to my website"; 
		Integer visitCount =new Integer(0); 
		String visitCountKey =new String("visitCount"); 
		String userIDKey =new String("userID"); 
		String userID =new String("ABCD"); 
		// Check if this is new comer on your web page. 
		if(session.isNew())
		{ 
			title ="Welcome to my website";
		session.setAttribute(userIDKey, userID); 
		}else
		{
			visitCount =(Integer)session.getAttribute(visitCountKey); 
			visitCount = visitCount +1; 
			userID =(String)session.getAttribute(userIDKey);
		} 
		session.setAttribute(visitCountKey, visitCount); 
		// Set response content type 
        %>
        <h2>Creation Time : <%=createTime%></h2>
         <h2>Last Access Time : <%=lastAccessTime%></h2>
         <h2>Number of visit : <%=visitCount%></h2>
         <%}catch(Exception e)
         {
             %>
             <h1>Error: <%=e%></h1>
             <%
         }
         %>
    </body>
</html>

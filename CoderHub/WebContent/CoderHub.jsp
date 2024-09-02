<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewreport" content="width=device-width">
<title>CODER HUB</title>
<style>
    #main
    {
        width:100%;
        height:600px;
    }
    #img
    {
        width: 550px;;
        height: 550px;
        float:left;
        padding-left: 0px;
    }
    #para
    {
        float:right;
            padding-left: 15px;
    padding-top: 75px;
    }
   
</style>
</head>
<body>
    <%@include file="homeHeader.html" %>
    <% 
String msg=request.getParameter("msg");
if(msg==null)
{}
else{
out.write("<script>alert('"+msg+"')</script>");
}
%>
        <div id="main">
            <div id="img">
                <img src="images/desk.jpg" style="width:550px; height:550px;margin-top:30px;"/>
            </div>
            <div id="para">
                <h1 class="LandingHeading" style=" font-size: 3em;">Going out?<br>Take CoderHub<br> with you!</h1>
                <p class="Byline">
                Stay in touch with your contacts and manage<br> projects on the go with the official CoderHub website.
            </p>
            </div>
       <%@include file="pdetails.jsp" %>
    <%@include file="footer.html" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ABOUT US</title>
<link href="CSS/header.css" type="text/css" rel="stylesheet"/>
<style>
    #main
    {
        width:100%;
        height: 800px;
        margin: 0px;
        position: inherit;
            margin-top: -27px;
    }
</style>
</head>
<body>
    <%@include file="homeHeader.html" %>
    <div id="main">
    <div style="width: 100%; height:350px; background-image: url('images/about.jpg');">
   <center> <h1 style="color: white; padding-top:50px; font-size: 30pt;">
                    World's largest freelancing<br> and crowdsourcing<br> marketplace.
                </h1>
                <p style="color: white;">
                    We connect talented employers and freelancers globally from 2015.
                </p>
                </center>
    </div>
        <div style="padding-top:50px;">
        <div style="float: left; width:400px; height: auto;padding-left: 20px;">
            <img src="images/overview.jpg">
        </div>
        <div style="float: right; width:500px; height: auto;">
            <h2>Company Overview</h2>
            <p>
                    CoderHub.com is the india's largest freelancing, outsourcing and crowdsourcing marketplace by number of users and projects. Through our marketplace, employers can hire freelancers to do work in areas such as software development, writing, data entry and design right through to engineering, the sciences, sales and marketing, accounting and legal services.
                </p>
        </div>
    </div>
    </div>
     <%@include file="pdetails.jsp" %>
     <%@include file="footer.html" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact us</title>
<link href="CSS/header.css" type="text/css" rel="stylesheet"/>
<style>
    #main
    {
        width: 100%;
        height: 600px;
    }
    #map
    {
        width: 350px;
        height: 200px;
    }
    #img2
    {
        width:350px;
        height:200px;
    }
    textarea
    {
        resize: none;
    }
</style>
</head>
<body>
<%@include file="homeHeader.html" %>
<div id="main">
   <div id="contact">
         <div ><h1>Contact Coder Hub</h1>
         <div>
         <form action="contact" method="post">
            Your Email<br>
            <input type="email" name="email"  class="textbox" required/><br><br>
            Subject<br>
            <input type="text" name="subject"  class="textbox" required/><br><br>
            Message<br>
             <textarea id="message" class="message"  name="message" rows="5" ></textarea><br><br>
             <input type="submit" value="Submit" id="button"/>
             </form>
         </div>
   </div>
            </div><!-- Contact Us Form -->
            <div id="contactInfo">
                <h3>Coder Hub Limited</h3>
                <h5>Registered office</h5>
                <address>
                    Level 20, World Square<br>
                    680 South Delhi<br>
                    New Delhi<br>
                    India<br>
                </address>
                <a  href="#">support@coderhub.com</a>
                <div id="map">
                    <img src="images/cmap.png" id="img2"/>
                </div>
    </div></section>
    </div>
     <%@include file="pdetails.jsp" %>
    <%@include file="footer.html" %>
</body>
</html>
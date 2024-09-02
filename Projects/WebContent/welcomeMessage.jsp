<%-- 
    Document   : welcomeMessage
    Created on : Oct 20, 2014, 10:25:12 PM
    Author     : Shailendra Thakur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Title Here</title>
              <link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="styleSelect.css" rel="stylesheet" type="text/css" />
<style>
.approve
{
   border: solid 1px #454545;
    padding: 28px;
    width: 90%;
    box-shadow: 3px 7px 25px -1px;
    background-color: aliceblue;
}

</style>
    </head>
    <body>

    <div id="tooplate_header_wrapper">

    <div id="tooplate_header">
        
        <div id="site_title">
        
            <img style="width:80%;" src="images/coder.png"/>
        
        </div> <!-- end of site_title -->
        
        <div class="cleaner_h10"></div>
        
        <div id="tooplate_menu2" style="background: url(images/tooplate_menu.png) no-repeat;">
            
            <div id="home_menu2" ><a href="#" style="margin-top: 0px; margin-left: 0px;"></a></div>
                
            <ul>
                <li><a href="Home.jsp" target="frame1" class="current">Home</a></li>
                <li><a href="about.jsp" target="frame1">About Us</a></li>
                <li><a href="Home_Projects.jsp" target="frame1">Projects</a></li>
                <li><a href="userFeedback.jsp" target="frame1">Feedback</a></li>
                <li><a href="contactUs.jsp" target="frame1">Contact</a></li>
            </ul>       
        
        </div> <!-- end of tooplate_menu -->
        
    </div>    
</div> <!-- end of header_wrapper -->
<center><div class="approve">
        <center>
            <%
            String msg=(String)session.getAttribute("Message");
            %>
            <div> <h3 class="h2"><%=msg%></h3></div>
                                         </center></div></center>
    </body>
</html>

<%
String islogin=(String)session.getAttribute("name");
if(islogin==null||islogin==""){
	String msg="Please do login first!";

response.sendRedirect("Home.jsp?error="+msg);

}
else
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CoderHub</title> 
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="styleSelect.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image: url('images/index.jpg'); margin:0px;"> 
<%@ include file="header.jsp" %>
<%
String name=(String)session.getAttribute("name");

String id=request.getParameter("userid");
%>
<div id="tooplate_header_wrapper">

    <div id="tooplate_header">
    <h2 style="text-align:center; color: orangered;font-size: 20px;font-weight: bold; text-shadow: 0px 2px 4px #888; height: 0px;">Welcome: <%=name%>
    <a style=" float:right; font-size: 14px; text-shadow: 0px 0px 0px; " href="userLogout.jsp"  >Sign Out</a>
    </h2>
        <div id="site_title">
        
        	<h1>OnlineProjects</h1>
        
        </div> <!-- end of site_title -->
        
        <div id="header_phone_no">

			Toll Free: <span>08 324 552 409</span>
        
        </div>
        
        <div class="cleaner_h10"></div>
        
        <div id="tooplate_menu" style="background: url(images/tooplate_menu.png) no-repeat;">
            <div class="nav"style="margin-top: -6px; margin-left: 14px;" >
        	
            <div id="home_menu"><a href="#"></a></div>
                
            <ul>
                <li><a href="Admin_Approval.jsp" target="frame1">Home</a></li>
            <li><a href="#" target="frame1">Projects</a>
            <ul>
                <li> <a href="currentOpportunity.jsp" target="frame1">Current Opportunity</a></li>
                <li><a href="projectExperience.jsp" target="frame1">project Experience</a></li></ul></li>
            
                <li><a href="internship.jsp" target="frame1">Internship</a></li>
                <li><a href="resources.jsp" target="frame1">Resources</a></li>
                <li><a href="blog.jsp" target="frame1">Blog</a></li>
                <li><a href="institution.jsp" target="frame1">Institution</a></li>
                <li><a href="global_academic_relation.jsp" target="frame1">Global Academic Relation</a></li>
                <li><a href="event_news.jsp" target="frame1">Event/News</a></li>
                <li><a href="#" target="frame1">Help</a>
                <ul>
                    <li><a href="feedback.jsp" target="frame1" style="min-width: 90px;">Feedback</a></li>
                <li><a href="contactUs.jsp" target="frame1" style="min-width: 90px;">Contact us</a></li></ul></li>
            </ul>    	
            </div>
        </div> <!-- end of tooplate_menu -->
        
    </div>	  
</div> <!-- end of header_wrapper -->


<div id="tooplate_main">
    <div class="divStyle5">
    <iframe name="frame1" frameborder="0px" style= " align:middle; scrolling:yes; height:500px; width: 930px;
 "allowtransparency="true" FRAMEBORDER=0 SCROLLING=AUTO></iframe>
		<div class="cleaner"></div>
    </div></div>

    <div class="cleaner"></div>  

<div id="tooplate_footer_wrapper">

     <div id="tooplate_footer">
    
        Copyright © 2048 <a href="#">Company Name</a> - Design: <a href="http://www.tooplate.com">tooplate</a>
    
    </div> <!-- end of tooplate_footer -->

</div> 
    
</body>
</html>
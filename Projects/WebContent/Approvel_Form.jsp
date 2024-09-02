<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styleSelect.css" rel="stylesheet" type="text/css" />
        <title>User</title>
        <script>
            function check()
            {
            if(document.getElementById("terms").checked=false)
            {
                alert("Please select terms and conditions!");
            }
        }
                
            </script>
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
#record
{
    width:50%;
    padding:15px;
}
.title
{
        margin-top: -40px;
    margin-right: 23px;
    color: navy;
    float: right;
        font-size: 25px;
    font-weight:bold;
    line-height: 26px;
}
</style>
    </head>
    <body>
    <% 
          String pid=request.getParameter("PID");
          String cid=request.getParameter("CID");
          ServletContext sc=getServletContext();
            Connection con=(Connection)sc.getAttribute("mycon");
               try
               {
            
            Statement smt=con.createStatement(); 
              
            ResultSet rs=smt.executeQuery("Select * from customerProjects where Project_ID="+pid+" and Customer_ID="+cid+"");
           if(rs.next())
          {
          
             %>
    <div id="tooplate_header_wrapper">

    <div id="tooplate_header">
        
        <div id="site_title">
        
            <img style="width:80%;" src="images/coder.png"/>
        
        </div> <!-- end of site_title -->
        <div id="header_phone_no">

           <h2 class="title">Hi! <%=rs.getString("Name") %></h2>
        
        </div>
        
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
        <form action="A_ApprovelForm" method="POST">
      
             <center><div><h1>Your project Details</h1></div></center>
               <center>
                <div id="record"><h3 class="h3" style="float:left;" >Project ID:</h3>
                <label class="h4" style="float:right;"> <%= rs.getString("Project_ID") %></div><br/>
                <div id="record"><h3 class="h3" style="float:left;"  >Project Name:</h3>
                <label  class="h4"style="float:right;"> <%= rs.getString("Project_Name") %></label></div><br/>
                <div id="record"><h3 class="h3" style="float:left;"  >Project Duration:</h3>
                <label class="h4"style="float:right;"> <%= rs.getString("Project_Duration") %></div><br/>
                <div id="record"><h3 class="h3" style="float:left;"  >Project Area:</h3>
                <label class="h4"style="float:right;"> <%= rs.getString("Project_Area") %></div><br/>
                <div id="record"><h3 class="h3" style="float:left;"  >Customer Name:</h3>
                <label  class="h4"style="float:right;"> <%= rs.getString("Name") %></div><br/>
                <div id="record"><h3 class="h3" style="float:left;"  >Mail ID:</h3>
                <label class="h4"style="float:right;"> <%= rs.getString("Mail_ID") %></div><br/>
                <div id="record"><h3 class="h3" style="float:left;"  >Contact No:</h3>
                <label class="h4"style="float:right;"> <%= rs.getString("Contact_No") %></div><br/>
                <div id="record"><h3 class="h3"  style="float:left;" >Location:</h3>
                <label  class="h4"style="float:right;"> <%= rs.getString("Location") %></div><br/>
                <div id="record"><h3 class="h3"  style="float:left;" >User Expected Pay:</h3>
                <label class="h4"style="float:right;"> <%= rs.getString("Expacted_Pay") %></div><br>
                <div id="record"><h3 class="h3"  style="float:left;" >Admin Expected Pay:</h3>
                <label class="h4"style="float:right;"> <%= rs.getString("Paid_Amount") %></div><br/><br/>
                <input type="checkbox" name="terms" >I have read and accepted all terms and conditions.<br/><br/>
                <input type="submit" value="Accept" name="acceptbtn" style="margin-left: -17px;" onclick="check()"/>
                <input type="submit" value="Decline" name="declinebtn" style="margin-left: 56px;"/>
                </div></center>
            
             <%
             }
             }
             catch(Exception e){
             e.printStackTrace();
             }
             %>
             <input type="hidden" name="id" value="<%=pid%>">
        </form>
        </div></center>
    </body>
</html>


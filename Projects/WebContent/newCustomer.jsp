<%-- 
    Document   : newCustomer
    Created on : Oct 20, 2014, 1:03:30 AM
    Author     : Shailendra Thakur
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styleSelect.css" rel="stylesheet" type="text/css" />
        <title>Insert Title Here</title>
    </head>
    <body>
        <form action="U_NewCustomer" method="POST" >
        <%
        String id=request.getParameter("applybtn");
               ServletContext sc= getServletContext();
        	Connection con= (Connection)sc.getAttribute("mycon");
                Statement stmt=con.createStatement();
                String query="select * from CurrentProjectList where id="+id+"";
                ResultSet rs=stmt.executeQuery(query);
                if(rs.next())
                {
                    String projectName=rs.getString("Project_Name");
                    String duration=rs.getString("Duration");
                    String area=rs.getString("Area");
                   
        %>
        <input type="hidden" name="projectName" value="<%= projectName %>">
        <input type="hidden" name="projectDuration" value="<%= duration %>">
        <input type="hidden" name="projectArea" value="<%= area %>">
        <input type="hidden" name="projectId" value="<%= id%>">
        <center><div class="divStyle3">
                <div style="background: lightsteelblue;"><div><h3 class="h3" style="float:left; padding-left: 20px;padding-top: 15px;">Project Name:<label class="h4"> <%= projectName %></h3></div><br>
                <div><h3 class="h3" style="float:left; padding-left: 20px; position: absolute;padding-top: 18px;">Project Duration:<label  class="h4"> <%= duration %></h3></div>
                <div><h3 class="h3" style="float:right; padding-right: 15px;">Project Area:<label class="h4"> <%= area %></h3></div>
                <% } %>
                <hr style="width: 520px; height: 0px; color: #D8D9DE; margin-left: 0px;margin-top: 38px;"></div>
                <div style="background: url(images/profile.png) no-repeat; background-position: 128px 13px;"><input type="text" name="userName" class="text1"  placeholder="Your Name" style="padding-left:35px;"/></div><br/>
        <div style="background: url(images/email.png) no-repeat; background-position: 131px 13px; margin-top: -16px"><input type="text" name="mailID" class="text1" placeholder="Your MailID"style="padding-left:35px;"/></div><br/>
       <div style="background: url(images/contact.png) no-repeat; background-position: 133px 15px; margin-top: -16px"> <input type="text" name="MobNo" class="text1"  placeholder="Your Contact No."style="padding-left:35px;"/></div><br/>
        <div style="background: url(images/location.png) no-repeat; background-position: 131px 13px; margin-top: -16px"><input type="text" name="location" class="text1" placeholder="Your Location"style="padding-left:35px;"/></div><br/>
       <div style="background: url(images/skills.png) no-repeat; background-position: 134px 13px; margin-top: -16px"> <input type="text" name="skills" class="text1" placeholder="Your Skills"style="padding-left:35px;"/></div><br/>
       <div style="background: url(images/rupee.png) no-repeat; background-position: 132px 13px; margin-top: -16px"> <input type="text" name="pay" class="text1"  placeholder="Expacted to Pay"style="padding-left:35px;"/></div><br/>
        <input type="submit" name="apply" value="" class="btnApply" style="box-shadow: -8px 8px 10px 3px rgba(0,0,0,0.2); margin-top: 0px; margin-left: 0px;"/>
        </div></center>
        </form>
    </body>
</html>

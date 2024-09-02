
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styleSelect.css" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>    
        <form action="A_Approvel" method="POST">
    <% 
                ServletContext sc= getServletContext();
        	Connection con= (Connection)sc.getAttribute("mycon");
                Statement stmt=con.createStatement(); 
               
                                                             
            String query = "select * from customerProjects where Status is null";
            ResultSet rs = stmt.executeQuery(query);
            %>

            <div align="left" style="font-size: 20px;"><h3 class="h2" style="margin-top: 15px;">Applier Project List</h3></div>
<center><table cellspacing="0px" width="100%" border="0px" class="hovertable" >

	<tr>
            <th ><font color='silver'>Project ID</font></th>
            <th ><font color='silver'>Project Name</font></th>
            <th ><font color='silver'>Area</font></th>
            <th ><font color='silver'>Duration</font></th>
            <th ><font color='silver'>Customer Name</font></th>
            <th ><font color='silver'>EMail</font></th>
             <th ><font color='silver'>Contact No</font></th>
            <th ><font color='silver'>Location</font></th>
            <th ><font color='silver'>Skills</font></th>
            <th ><font color='silver'>Expected Pay</font></th>
            <th ><font color='silver'>Update Amount</font></th>
            <th ><font color='silver'>Approve</font></th>
        </tr>
            
    <%
            while(rs.next())
            {
            String ID=rs.getString("Project_ID");
            String Project_Name=rs.getString("Project_Name");
            String Area=rs.getString("Project_Area");
            String Duration=rs.getString("Project_Duration");
            String Expacted_Pay=rs.getString("Expacted_Pay");
            String Name=rs.getString("Name");
            String Mail_ID=rs.getString("Mail_ID");
            String Contact_No=rs.getString("Contact_No");
            String Location=rs.getString("Location");
            String Skills=rs.getString("Skills");
            String cID=rs.getString("Customer_ID");
%>

        <tr onmouseover="this.style.backgroundColor='#FDE24F';" onmouseout="this.style.backgroundColor='#E1E1E1';">
            <td align="center"><%=ID%></td>
            <td align="center"><%=Project_Name%></td>
            <td align="center"><%=Area%></td>
            <td align="center"><%=Duration%></td>
            <td align="center"><%=Name%></td>
            <td align="center"><%=Mail_ID%></td>
            <td align="center"><%=Contact_No%></td>
            <td align="center"><%=Location%></td>
            <td align="center"><%=Skills%></td>
            <td align="center"><%=Expacted_Pay%></td>
            <td><input type="hidden" name="h<%= cID%>" value="<%= ID%>">
            <input type="text" name="<%= cID%>" style="width: 80px;"  /></td>
                <td align="center" onmouseover="this.style.backgroundColor='#E1E1E1';"> 
                <input type="submit" name="applybtn"  value="<%=cID%>" class="btnClass2" /></td>
           
        </tr>
        <%
            } 
        %>
        </table></center>
        </form>
    </body>
</html>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Feedback</title>
        <script type="text/javascript">
    
    	function validateForm() {
    		
    		var name = document.forms["adv"]["name"].value;
    		var email = document.forms["adv"]["email"].value;
    		var contact = document.forms["adv"]["contact"].value;
    		var age = document.forms["adv"]["age"].value;
    		var msg = document.forms["adv"]["msg"].value;
          	 
    		if (name== null || name == "") 
     	  	{
           		 alert("Enter your Name");
            return false;
            }
    		else if (email== null || email == "") 
     	  	{
           		 alert("Enter your email");
            return false;
            }
    		else if (contact== null || contact == "") 
     	  	{
           		 alert("Enter your contact");
            return false;
            }
    		else if (age== null || age == "") 
     	  	{
           		 alert("Enter your age");
            return false;
            }
    		else if (msg== null || msg == "") 
     	  	{
           		 alert("Enter your message");
            return false;
            }
    }
    </script>
        <style>
            .textbox2
            {
               outline: 0px; outline-color: transparent;outline-style: none;
                width: 257px;
                height: 30px;
                padding-left: 10px;
                border-bottom-left-radius: 10px;
                border-bottom-right-radius: 10px;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
                
                border: solid 1px;
              
            }
            textarea
            {
                
                outline: 0px; outline-color: transparent;outline-style: none;
                border-bottom-left-radius: 10px;
                border-bottom-right-radius: 10px;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
                outline: 0px;
                outline-color: transparent;
                outline-style: none;
                border-bottom-left-radius: 10px;
                border-bottom-right-radius: 10px;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
                border: 1px solid ;
                
                display: block;
                font-family: 'Marck Script',cursive;
                font-size: 17px;
                line-height: 50px;
                margin: 2% auto;
                padding: 11px 9px 0 46px;
                resize: none;
                height: 188px;
                width: 500px; 

background-image: -webkit-linear-gradient(top , transparent, transparent 49px,#000 0), -webkit-radial-gradient(3% 50%, circle closest-corner, #666, whitesmoke 35%, transparent 0%), -webkit-radial-gradient(2.9% 51%, circle closest-corner, #000, #442A00 37.5%, transparent 0%);

        -webkit-background-size:  100% 50px;
        background-size: 100% 50px;
            }
            .btnsubmit
            {
                outline: 0px; outline-color: transparent;outline-style: none;
                border-bottom-left-radius: 10px;
                border-bottom-right-radius: 10px;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
                width:100px;height:30px;
                background-color: #FF8C00;
            }
           
            .feedbackdiv
            {
                   width: 60%;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    text-align: left;
    border: 1px solid #444;
    padding-left: 10px;
    margin-top: 1px;
    background: #555;
            }
            .paragraph
            {
                font-size: 13px;
font-weight: bold;
color: white;
text-shadow: black 1px 1px;
font-family: lucida grande, tahoma, verdana, arial, sans-serif;
            }
            .span1
            {
                margin-top: -16px;
                font-size: 15px;
                color: bisque;
                text-shadow: black 1px 1px;
            }
        </style>
    </head>
    <body>
        <%try
        {
            int no_of_page,row_per_page=10,pages=0,start_row_count,end_row_count;
            String page_name="userFeedback.jsp"; 
            
        ServletContext sc=getServletContext();
            Connection con=(Connection)sc.getAttribute("mycon");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("Select count(*) from userFeedback");
            int total=0;
               if(rs.next())
                total=rs.getInt(1); 

                if(total%5==0)
                no_of_page=total/5;
                else
                no_of_page=total/5+1;
            %>
            <% 
String pages1=request.getParameter("pages");
if(pages1!=null)
{ 
pages=Integer.parseInt(pages1);
}
if(pages==0) pages=1;
if(pages==1)
{
start_row_count=1;
}
else
{
start_row_count=(pages-1)*5;
}

end_row_count=pages*5; 
       
try
 {
String query="Select * from (SELECT a.*,row_number() over (order by id desc) rn FROM userFeedback a ) where rn between "+start_row_count+"  and "+end_row_count; 
ResultSet rs2=stmt.executeQuery(query);

%> 
            <%
               
            
           while(rs2.next())
          {
              out.print("<center><div id='feedback' class='feedbackdiv'  ><p class='paragraph'>");
					out.print(rs2.getString("Comment_"));
					out.print("</p><br/>");
                                        out.print("<p><span class='span1' style='float:left'>Time: "+rs2.getString("Time_")+"</span>");
                                        out.print("<span class='span1' style='float:right; padding-right: 10px;'>"+rs2.getString("Name_")+"</span></p></div></center>");
                                        
          }
          }catch(Exception e)
          {
        	  System.out.println("Running Exc :"+e);
          }
          
             %>
        
<center><table width="50%">
<tr>
<th>
<h2>
<%
for(int i=1;i<=no_of_page;i++)
{
out.println("<a style='color: darkred;     text-decoration: initial;' href='"+page_name+"?pages="+i+"'>"+i+"</a>"); 

}
        }catch(Exception e)
        {System.out.println("Error: "+e);}
%>
</h2></th>
</tr>
    </table> </center>
        <form action="U_Feedback" method="get">
       
        <center><div align="center" style="width: 100%;">
                <center><hr style="width: 85%;
                                    height: 1px;
                                    color: darksalmon;
                                    margin-top: 10px;
                                    border: solid 1px;
                                    border-color: tan;
                                    border-bottom-width: 0px;"></center>
			<table align="center" cellpadding="3" cellspacing="3">
                         <tr>
                            
				<td>
                                    <input class="textbox2" type="text" name="name" placeholder="Your Name" > &nbsp;&nbsp;
                                    <input class="textbox2" type="email" name="email" placeholder="Your EMail ID" >
  			</td>
			
			</tr>
			
				
  						
	                <tr>
			
				<td>
				<textarea  id="TITLE" name="msg" placeholder="Your comment here"></textarea>
				</td>
			
			</tr>
			<tr>
			
				<td colspan="2" align="center">
			        <input class="btnsubmit" type="submit" name="submit"  value="Submit" onclick="return validateForm()">
				</td>
			
				
			</tr>
			</table>
                       
            </div></center>
      
        </form>
       </body>
</html>

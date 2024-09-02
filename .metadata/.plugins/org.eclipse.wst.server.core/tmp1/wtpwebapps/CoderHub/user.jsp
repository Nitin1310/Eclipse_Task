<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="CSS/header.css" type="text/css" rel="stylesheet"/>
<style>

  #select
    {
            width: 425px;
    height: 37px;
    font-family: calibri;
    font-size: 13pt;
    font-weight:bold;
    color: #555;
    border-radius: 5px 5px;
    }

    #project-description
    {
            margin: 0px;
    height: 70px;
    width: 380px;
    border-radius: 5px 5px;
    font-family: calibri;
    font-size: 13pt;
    padding-left: 15px;
    padding-right: 15px;
    border: solid 1px #777;
    }
    #post2
    {
        width: 200px;
        height: 42px;
        background-color: slateblue;
        color: white;
        text-shadow: 1px 1px 1px #000;
        border: transparent;
        border-radius: 3px 3px;
        font-size: 17pt;
        font-weight: bold;
        margin-bottom:20px;
    }
</style>
</head>
<body >
<%@include file="homeHeader.html" %>
<form action="register" method="post">
<div style="height:100%; margin-left: 20%;width:55%; margin-right:20%;">
<%
String user=request.getParameter("user");
%>
<h2 style="color:#333;">Hi! <%= user%></h2>
<input type="hidden" name="u" value="<%=user%>"/>
    <div style="width:100%; height:100%; background-color:#eee;padding-left:70px;padding-bottom:20px;border-radius:10px 10px;">
      <h2 >Complete your profile</h2>
      <hr style="color:#666; width:85%;margin-left: -85px;">

    <input type="text" class="textbox" name="Name" placeholder="Complete Name"/><br><br>
    <input type="text" class="textbox" name="Profile"placeholder="Your technical profile"/><br><br>
     <textarea id="project-description" class="project-description" resize="vertical" name="description" rows="3" placeholder="More about you..."></textarea><br><br>
     <textarea id="project-description" class="project-description" resize="vertical" name="skills" rows="3" placeholder="More about your top skills..."></textarea><br>
     <br><input type="file"  name="profilepic" style="width: 413px; height: 25px;" />
   </div>
   <div style="width:100%; height:100%; background-color:#eee;padding-left:70px;padding-bottom:20px;border-radius:10px 10px;">
        <h2 style="margin-left: 0px;">Contact Details</h2>
  
    <hr style="color:#666; width:85%;margin-left: -85px;">

     <input type="text" class="textbox" name="Mob" placeholder="Contact Number"/><br><br>
      <textarea id="project-description" class="project-description" resize="vertical" name="address" rows="3" placeholder="Address..."></textarea><br><br>
   </div>
   <div style="width:100%; height:100%; background-color:#eee;padding-left:70px;padding-bottom:20px;border-radius:10px 10px;">
        <h2 style="margin-left: 0px;">Education Details</h2>
  
    <hr style="color:#666; width:85%;margin-left: -85px;">

     <input type="text" class="textbox" name="University" placeholder="University Name"/><br><br>
     <input type="text" class="textbox" name="College" placeholder="College Name"/><br><br>
     <input type="text" class="textbox" name="Degree" placeholder="Degree"/><br><br>
      <select id="select" name="start">
        <option value="">Start</option>
        <% 
        for(int i=2015; i>1959; i--)
        {
        %>
        <option value="<%=i%>"><%=i %></option>
        <%} %>
        </select><br><br>
        <select id="select" name="end">
        <option value="">End</option>
        <% 
        for(int i=2015; i>1959; i--)
        {
        %>
        <option value="<%=i%>"><%=i %></option>
        <%} %>
        </select>
        </div><br>
        <input type="submit" value="Register" id="post2" name="reg"/>
   </div>
   </form>
    <%@include file="pdetails.jsp" %>
    <%@include file="footer.html" %>
</body>
</html>
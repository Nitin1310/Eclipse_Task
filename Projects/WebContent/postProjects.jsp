<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
    #select
    {
            width: 430px;
    height: 37px;
    font-family: calibri;
    font-size: 13pt;
    font-weight:bold;
    color: #555;
    border-radius: 5px 5px;
    }
    #text
    {
        width: 400px;
    height: 37px;
    font-family: calibri;
    font-size: 13pt;
    color: #222;
    border-radius: 5px 5px;
    border: solid 1px #777;
    padding-left: 15px;
    padding-right: 15px;
    }
    #project-description
    {
            margin: 0px;
    height: 70px;
    width: 400px;
    border-radius: 5px 5px;
    font-family: calibri;
    font-size: 13pt;
    padding-left: 15px;
    padding-right: 15px;
    border: solid 1px #777;
    }
    #post
    {
        width: 200px;
        height: 42px;
        background-color: navy;
        color: white;
        text-shadow: 1px 1px 1px #000;
        border: solid 1px #777;
        border-radius: 5px 5px;
        font-size: 17pt;
        font-weight: bold;
    }
</style>
</head>
<body>
<form action="postProject" method="post">
<div style="margin-left: 100px; padding-top: 30px;">
  <h2 style="color:#777; font-family: calibri;">1) What work do you require?</h2><br>
    <select id="select" name="projects">
        <option value="Websites IT & Softwares">Websites IT & Softwares</option>
        <option value="Mobile">Mobile</option>
        <option value="Writing">Writing</option>
        <option value="Design">Design</option>
        <option value="Data Entry">Data Entry</option>
        <option value="Product sourcing & manufacturing">Product sourcing & manufacturing</option>
         <option value="Sales and marketing">Sales and marketing</option>
          <option value="Business, Accounting & Legal">Business, Accounting & Legal</option>
           <option value="Local jobs & services">Local jobs & services</option>
    </select><br>
    <h2 style="color:#777; font-family: calibri;">2) Tell us more about the project</h2>
    <h4 style="color:#444; font-family:calibri;">Project Name:</h4>
    <input type="text" name="project" placeholder="What is the project title?" id="text"/>
    <h4 style="color:#444; font-family:calibri;">Enter some skills that relate to the project:</h4>
    <input type="text" name="skills" placeholder="What is the project title?" id="text"/>
     <h4 style="color:#444; font-family:calibri;">Describe your project in details:</h4>
   <textarea id="project-description" class="project-description" resize="vertical" name="description" rows="3" placeholder="Describe your project here..."></textarea>
   <h2 style="color:#777; font-family: calibri;">3) What budget do have in mind?</h2>
   <select id="select" name="budget">
        <option value="Micro Project(&#8377; 600 - 1500 INR)">Micro Project(&#8377; 600 - 1500 INR)</option>
        <option value="Simple Project(&#8377; 1500 - 12500 INR)">Simple Project(&#8377; 1500 - 12500 INR)</option>
        <option value="Very small Project(&#8377; 12500 - 37500 INR)">Very small Project(&#8377; 12500 - 37500 INR)</option>
        <option value="Small Project(&#8377; 37500 - 75000 INR)">Small Project(&#8377; 37500 - 75000 INR)</option>
        <option value="Medium Project(&#8377; 75000 - 150000 INR)">Medium Project(&#8377; 75000 - 150000 INR)</option>
        <option value="Large Project(&#8377; 150000 - 250000 INR)">Large Project(&#8377; 150000 - 250000 INR)</option>
        <option value="Larger Project(&#8377; 250000 - 500000 INR)">Larger Project(&#8377; 250000 - 500000 INR)</option>
        <option value="Very large Project(&#8377; 500000 - 1000000 INR)">Very large Project(&#8377; 500000 - 1000000 INR)</option>
        <option value="Huge Project(&#8377; 1000000 - 2500000 INR">Huge Project(&#8377; 1000000 - 2500000 INR)</option>
        <option value="Major Project(>&#8377; 250000 INR)">Major Project(>&#8377; 250000 INR)</option>
        
    </select><br><br>
    <input type="submit" value="Post Project" id= "post"/>
    </div>
    </form>
</body>
</html>
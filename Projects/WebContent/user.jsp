<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
#logo
{
     width: 158px;
    height: 88px;
    float: left;
    padding-top: 5px;
}
.h2
{
    color:#888; margin-top: 2px; font-family: calibri;text-shadow: 0px 1px 1px  #000;
}
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
<body style="margin:0px; background-color: whitesmoke;">
<div style="width:100%; height: 100%;position:inherit;">
    <div style="border:solid 1px #777; width:100%; height:100px; box-shadow: 0px 0px 8px 0px #777;background-color: white;">
        <div id="logo">
            <img style="width:100%;" src="images/coder.png"/>
          </div>
    </div>
    <div style="width: 500px; height:360px; background-color: white; float: left;
    border: solid 1px #777; margin-left: 18px;margin-top:25px; border-radius: 10px 10px;position:absolute; ">
    <div>
        <center><h2 class="h2">Complete your profile</h2></center>
    </div>
    <hr style="color:#666;margin-top: -4px;">
    <div style="padding-left: 30px;">
    <input type="text" id="text" name="Name" placeholder="Complete Name"/><br><br>
    <input type="text" id="text" name="Profile"placeholder="Your technical profile"/><br><br>
     <textarea id="project-description" class="project-description" resize="vertical" name="description" rows="3" placeholder="More about you..."></textarea><br><br>
     <textarea id="project-description" class="project-description" resize="vertical" name="skills" rows="3" placeholder="More about your top skills..."></textarea>
    </div>
    </div>
     <div style="width: 460px; height:360px; background-color: white; float: right;
    border: solid 1px #777; margin-right: 18px;margin-top:25px; border-radius: 10px 10px; ">
    <div>
        <center><h2 class="h2">Contact Details</h2></center>
    </div>
    <hr style="color:#666;margin-top: -4px;">
    <div style="padding-left: 10px;">
     <input type="text" id="text" name="Mob" placeholder="Contact Number"/><br><br>
      <textarea id="project-description" class="project-description" resize="vertical" name="description" rows="3" placeholder="Address..."></textarea><br><br>
    </div></div>
    </div>
</body>
</html>
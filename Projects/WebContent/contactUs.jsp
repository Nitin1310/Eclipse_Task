<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>freelancer</title> 
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2033 Business
http://www.tooplate.com/view/2033-business
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="styleSelect.css" rel="stylesheet" type="text/css" />

<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>

<script>
function initialize()
{
var mapProp = {
  center:new google.maps.LatLng(26.2033283,78.16284809999999),
  zoom:10,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

</head>
<body> 
 
            <h2>Contact Information</h2>

        <div class="cleaner_h40"></div>
        
        <center><div id="googleMap" style="width:700px;height:380px;"></div></center>    
        
            <div class="cleaner_h50"></div>
            
            <div id="contact_form" style="margin-left: 263px;">
            
				<h4>Quick Contact Form</h4>
					<form method="post" name="contact" action="contactUs">
					
						<label for="author">Name:</label> <input type="text" id="author" name="author" class="required input_field" />
						<div class="cleaner_h10"></div>
													
						<label for="email">Email:</label> <input type="text" class="validate-email required input_field" name="email" id="email" />
						<div class="cleaner_h10"></div>
											
						<label for="subject">Subject:</label> <input type="text" class="validate-subject required input_field" name="subject" id="subject"/>				               
						<div class="cleaner_h10"></div>
							
						<label for="text">Message:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
						<div class="cleaner_h10"></div>				
												
						<input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
						<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" style="margin-left: 156px;" />
						
                                        </form>
			</div>           
            
  
</body>
</html>
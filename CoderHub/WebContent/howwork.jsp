<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>How it work</title>
<link href="CSS/header.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <div>
        <%@include file="homeHeader.html" %>
    </div>
    
    <div id="howworkdiv">
    <form action="postProjects.jsp" method="post">
        <center><h1 style="color:white;">Need work done?</h1></center>
        <p style="color:white; padding-top: 15px; font-size:18px;text-align:center;">
                Find the right person for the job here on CoderHub.com! With millions of <br>talented experts from all around the world,
                 you can get help with your<br> business within minutes of posting your project!
            </p>
            <center><input type="submit" value="Post a project" id="button"/></center>
         </form>
    </div>
    <section >
        <ul>
            <li>
                <div >
                    <div >
                        <span ></span>
                    </div>
                    <span >
                        <h3 style="color:#222;">What kind of work can I get done?</h3>
                        <p>
                            How does "anything you want" sound? We have experts representing every technical,
                             professional and creative field, providing a full range of solutions
                        </p>
                        <ul>
                            <li>Small jobs, large jobs, anything in-between</li>
                            <li>Fixed price or hourly terms</li>
                            <li>Specify your skills, cost and schedule requirements</li>
                        </ul>
                        <p>
                            Just give us the details of your project and our freelancers will get it done faster, better,
                             and cheaper than you can imagine. Your jobs can be as big or small as you like, they can be fixed price or hourly,
                              and you can specify the schedule, cost range, and milestones.
                        </p>
                    </span>
                </div>
            </li>
            <li>
                <div style="    background-color: whitesmoke;">
                    <div>
                        <span></span>
                    </div>
                    <span>
                        <h3 style="color:#222;">How?</h3>
                        <ol >
                            <li>
                                <strong>1. Post your project</strong><br>
                                It's always free to post your project. Invite our coders to submit bids,
                                 or browse relevant coders and make an offer. You'll have replies to your job within minutes!
                            </li>
                            <li>
                                <strong>2. Choose the perfect coder</strong>
                                <ul >
                                    <li>Browse coders profiles</li>
                                    <li>Chat in real-time</li>
                                    <li>Compare proposals and select the best one</li>
                                    <li>Award your project and your coder goes to work</li>
                                </ul>
                            </li>
                            <li>
                                <strong>3. Pay when you are satisfied!</strong><br>
                                Pay safely using our Milestone Payment system - release payments according to a schedule of goals you set,
                                 or pay only on completion. You decide, you are in control.
                            </li>
                        </ol>
                    </span>
                </div>
            </li>
            <li>
                <div >
                    <figure >
                        <span></span>
                    </figure>
                    <span >
                        <h3 style="color:#222;">Be in Control. Keep in Contact.</h3>
                        <p>
                            Freelancers use our Desktop App to track progress, monitor hours, communicate and share, and much more.
                             Always know what's going on with your project, what is getting done and what still needs doing.
                         </p>
                        <p>
                            Use our mobile app for easy messaging on-the-go.
                             You can always stay in touch with your freelancer when you have questions,
                             updates or need to share.
                        </p>
                        <p>
                            Control project completion and pay. Release payment only when benchmarks are achieved,
                             or the project is completed to your satisfaction.
                        </p>
                    </span>
                </div>
            </li>
            <li>
                <div style=" background-color: whitesmoke;">
                    <figure >
                        <span ></span>
                    </figure>
                    <span >
                        <h3 style="color:#222;">Safety</h3>
                        <p>Freelancer.com is a community that values your trust and safety as our number one priority:</p>
                        <ul >
                            <li>
                                State-of-the-art security for your funds,
                                 all transactions are secured with GeoTrust 128-bit SSL encryption.
                            </li>
                            <li>
                                Our Milestone Payment system ensures your payments are released only when you are satisfied.
                            </li>
                            <li>
                                Our representatives are available 24/7 to assist if you have any problems.
                            </li>
                        </ul>
                    </span>
                </div>
            </li>
        </ul>
    </section>
     <div id="howworkdiv">
     <form action="postProjects.jsp" method="post">
           <center> <h2 style="font-size: 28pt; color:white;">So what are you waiting for?</h2>
            <p style="font-size: 17pt; color:white;">Post a project today and get bids from talented freelancers</p>
            <input type="submit" value="Post a project" id="button"/></center>
            </form>
        </div>
      <%@include file="pdetails.jsp" %>
    <%@include file="footer.html" %>
</body>
</html>
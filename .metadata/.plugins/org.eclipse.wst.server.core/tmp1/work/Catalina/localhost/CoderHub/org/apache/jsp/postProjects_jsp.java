/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.22
 * Generated at: 2015-11-01 15:16:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class postProjects_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/homeHeader.html", Long.valueOf(1442028192733L));
    _jspx_dependants.put("/pdetails.jsp", Long.valueOf(1440480071819L));
    _jspx_dependants.put("/footer.html", Long.valueOf(1440309035747L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<meta name=\"viewreport\" content=\"width=device-width\">\r\n");
      out.write("<style>\r\n");
      out.write("    #select\r\n");
      out.write("    {\r\n");
      out.write("            width: 430px;\r\n");
      out.write("    height: 37px;\r\n");
      out.write("    font-family: calibri;\r\n");
      out.write("    font-size: 13pt;\r\n");
      out.write("    font-weight:bold;\r\n");
      out.write("    color: #555;\r\n");
      out.write("    border-radius: 5px 5px;\r\n");
      out.write("    }\r\n");
      out.write("    #text\r\n");
      out.write("    {\r\n");
      out.write("        width: 400px;\r\n");
      out.write("    height: 37px;\r\n");
      out.write("    font-family: calibri;\r\n");
      out.write("    font-size: 13pt;\r\n");
      out.write("    color: #222;\r\n");
      out.write("    border-radius: 5px 5px;\r\n");
      out.write("    border: solid 1px #777;\r\n");
      out.write("    padding-left: 15px;\r\n");
      out.write("    padding-right: 15px;\r\n");
      out.write("    }\r\n");
      out.write("    #project-description\r\n");
      out.write("    {\r\n");
      out.write("            margin: 0px;\r\n");
      out.write("    height: 70px;\r\n");
      out.write("    width: 400px;\r\n");
      out.write("    border-radius: 5px 5px;\r\n");
      out.write("    font-family: calibri;\r\n");
      out.write("    font-size: 13pt;\r\n");
      out.write("    padding-left: 15px;\r\n");
      out.write("    padding-right: 15px;\r\n");
      out.write("    border: solid 1px #777;\r\n");
      out.write("    }\r\n");
      out.write("    #post2\r\n");
      out.write("    {\r\n");
      out.write("        width: 200px;\r\n");
      out.write("        height: 42px;\r\n");
      out.write("        background-color: slateblue;\r\n");
      out.write("        color: white;\r\n");
      out.write("        text-shadow: 1px 1px 1px #000;\r\n");
      out.write("        border: transparent;\r\n");
      out.write("        border-radius: 3px 3px;\r\n");
      out.write("        font-size: 17pt;\r\n");
      out.write("        font-weight: bold;\r\n");
      out.write("        margin-bottom:20px;\r\n");
      out.write("    }\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<meta name=\"viewreport\" content=\"width=device-width\">\r\n");
      out.write("<script language=\"JavaScript\" type=\"text/javascript\">\r\n");
      out.write("function login(showhide){\r\n");
      out.write("if(showhide == \"show\"){\r\n");
      out.write("    document.getElementById('popDiv').style.display='block';\r\n");
      out.write("}else if(showhide == \"hide\"){\r\n");
      out.write("    document.getElementById('popDiv').style.display='none';\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("function register(showhide){\r\n");
      out.write("    if(showhide == \"show\"){\r\n");
      out.write("        document.getElementById('regDiv').style.display='block';\r\n");
      out.write("    }else if(showhide == \"hide\"){\r\n");
      out.write("        document.getElementById('regDiv').style.display='none';\r\n");
      out.write("    }\r\n");
      out.write("    }\r\n");
      out.write("</script>\r\n");
      out.write("<link href=\"CSS/header.css\" type=\"text/css\" rel=\"stylesheet\"/>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div id=\"header\">\r\n");
      out.write("        <div id=\"img\">\r\n");
      out.write("            <img src=\"images/coder.png\" style=\"width:100%; height:100%;\"/>\r\n");
      out.write("        </div>\r\n");
      out.write("       <div id=\"menu\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li><a href=\"CoderHub.jsp\">Home</a></li>\r\n");
      out.write("                    <li><a href=\"work.jsp\">Work</a></li>\r\n");
      out.write("                    <li><a href=\"howwork.jsp\">How it work</a></li>\r\n");
      out.write("                    <li><a href=\"AboutUs.jsp\">About us</a></li>\r\n");
      out.write("                    <li><a href=\"ContacUs.jsp\">Contact us</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("         \r\n");
      out.write("          <div id=\"post\">\r\n");
      out.write("             <a href=\"postProjects.jsp\" >Post a project</a>\r\n");
      out.write("          </div>\r\n");
      out.write("           <div id=\"login\">\r\n");
      out.write("                <a href=\"javascript:login('show');\"  style=\"padding-right:20px;\">LOGIN</a>\r\n");
      out.write("                <a href=\"javascript:register('show');\" >SIGNUP</a>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"login\">\r\n");
      out.write("               <div id=\"popDiv\" class=\"ontop\"><a href=\"javascript:login('hide'); \" class=\"cancel\"  >&times;</a>\r\n");
      out.write("               <div id=\"popupbox\" ><div class=\"header\" > \r\n");
      out.write("            <form name=\"login\" action=\"authentication\" method=\"post\">\r\n");
      out.write("             <p>\r\n");
      out.write("            <input type=\"text\" name=\"userid\" id=\"userid\" class=\"textbox\" placeholder=\"name@example.com\">\r\n");
      out.write("    </p>\r\n");
      out.write("\r\n");
      out.write("    <p>\r\n");
      out.write("          <input type=\"password\" name=\"password\" id=\"password\" class=\"textbox\" placeholder=\"password\">\r\n");
      out.write("    </p>\r\n");
      out.write("\r\n");
      out.write("    <p class=\"login-submit\">\r\n");
      out.write("      <button type=\"submit\" id=\"button\">Login</button>    \r\n");
      out.write("     <a href=\"forgot.jsp\" style=\"padding-left: 35px;\">Forgot your password?</a></p>\r\n");
      out.write("</form>\r\n");
      out.write("<br />\r\n");
      out.write("        </div></div></div> \r\n");
      out.write("        <div id=\"regDiv\" class=\"back\"><div id=\"main\" class=\"register\">\r\n");
      out.write("        <a href=\"javascript:register('hide'); \" class=\"cancel\" >&times;</a>\r\n");
      out.write("        <center><div style=\"margin-top: 60px;\">\r\n");
      out.write("        <form action=\"register\" method=\"post\">\r\n");
      out.write("            <input type=\"text\" class=\"textbox\" name=\"email\" placeholder=\"email id\" /><br><br>\r\n");
      out.write("            <input type=\"text\"class=\"textbox\"name = \"user\"placeholder=\"user id\" maxlength=\"12\"><//><br><br>\r\n");
      out.write("            <input type=\"password\"class=\"textbox\"name = \"pass\"placeholder=\"password\"/><br><br>\r\n");
      out.write("            <input type=\"password\"class=\"textbox\"placeholder=\"confirm password\"/><br><br>\r\n");
      out.write("            <div style=\"width: 400px;\"><div style=\"float:left;width:200px;height:35px; border: solid 1px #666;border-top-left-radius: 5px;\r\n");
      out.write("    border-bottom-left-radius: 5px;box-shadow: 0px 0px 4px 0px #666;padding-top:10px;\">\r\n");
      out.write("            <input type=\"radio\" name=\"account\" value=\"Hire\">Hire</div>\r\n");
      out.write("            <div style=\"float:right;width:200px;height:35px;border: solid 1px #666;border-top-right-radius: 5px;\r\n");
      out.write("    border-bottom-right-radius: 5px; margin-top:-47px;box-shadow: 0px 0px 4px 0px #666;margin-right: -3px;padding-top:10px;\">\r\n");
      out.write("            <input type=\"radio\" name=\"account\" value=\"Work\">Work<br></div></div><br><br><br>\r\n");
      out.write("            <input type=\"submit\" value=\"Create Account\" id=\"button\"  name=\"reg\"/></form></div></center>\r\n");
      out.write("        </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        </div>\r\n");
      out.write("          </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("<form action=\"postProject\" method=\"post\">\r\n");
      out.write("<div style=\"margin-left: 12%; padding-top: 80px;\">\r\n");
      out.write("  <h2 style=\"color:#777; font-family: calibri;\">1) What work do you require?</h2><br>\r\n");
      out.write("    <select id=\"select\" name=\"projects\">\r\n");
      out.write("        <option value=\"Websites IT & Softwares\">Websites IT & Softwares</option>\r\n");
      out.write("        <option value=\"Mobile\">Mobile</option>\r\n");
      out.write("        <option value=\"Writing\">Writing</option>\r\n");
      out.write("        <option value=\"Design\">Design</option>\r\n");
      out.write("        <option value=\"Data Entry\">Data Entry</option>\r\n");
      out.write("        <option value=\"Product sourcing & manufacturing\">Product sourcing & manufacturing</option>\r\n");
      out.write("         <option value=\"Sales and marketing\">Sales and marketing</option>\r\n");
      out.write("          <option value=\"Business, Accounting & Legal\">Business, Accounting & Legal</option>\r\n");
      out.write("           <option value=\"Local jobs & services\">Local jobs & services</option>\r\n");
      out.write("    </select><br>\r\n");
      out.write("    <h2 style=\"color:#777; font-family: calibri;\">2) Tell us more about the project</h2>\r\n");
      out.write("    <h4 style=\"color:#444; font-family:calibri;\">Project Name:</h4>\r\n");
      out.write("    <input type=\"text\" name=\"pNmae\" placeholder=\"What is the project title?\" id=\"text\"/>\r\n");
      out.write("    <h4 style=\"color:#444; font-family:calibri;\">Enter some skills that relate to the project:</h4>\r\n");
      out.write("    <input type=\"text\" name=\"skills\" placeholder=\"Required projects skills?\" id=\"text\"/>\r\n");
      out.write("     <h4 style=\"color:#444; font-family:calibri;\">Describe your project in details:</h4>\r\n");
      out.write("   <textarea id=\"project-description\" class=\"project-description\" resize=\"vertical\" name=\"pDetails\" rows=\"3\" placeholder=\"Describe your project here...\"></textarea>\r\n");
      out.write("   <h2 style=\"color:#777; font-family: calibri;\">3) What budget do have in mind?</h2>\r\n");
      out.write("   <select id=\"select\" name=\"budget\">\r\n");
      out.write("        <option value=\"Micro Project(&#8377; 600 - 1500 INR)\">Micro Project(&#8377; 600 - 1500 INR)</option>\r\n");
      out.write("        <option value=\"Simple Project(&#8377; 1500 - 12500 INR)\">Simple Project(&#8377; 1500 - 12500 INR)</option>\r\n");
      out.write("        <option value=\"Very small Project(&#8377; 12500 - 37500 INR)\">Very small Project(&#8377; 12500 - 37500 INR)</option>\r\n");
      out.write("        <option value=\"Small Project(&#8377; 37500 - 75000 INR)\">Small Project(&#8377; 37500 - 75000 INR)</option>\r\n");
      out.write("        <option value=\"Medium Project(&#8377; 75000 - 150000 INR)\">Medium Project(&#8377; 75000 - 150000 INR)</option>\r\n");
      out.write("        <option value=\"Large Project(&#8377; 150000 - 250000 INR)\">Large Project(&#8377; 150000 - 250000 INR)</option>\r\n");
      out.write("        <option value=\"Larger Project(&#8377; 250000 - 500000 INR)\">Larger Project(&#8377; 250000 - 500000 INR)</option>\r\n");
      out.write("        <option value=\"Very large Project(&#8377; 500000 - 1000000 INR)\">Very large Project(&#8377; 500000 - 1000000 INR)</option>\r\n");
      out.write("        <option value=\"Huge Project(&#8377; 1000000 - 2500000 INR\">Huge Project(&#8377; 1000000 - 2500000 INR)</option>\r\n");
      out.write("        <option value=\"Major Project(>&#8377; 250000 INR)\">Major Project(>&#8377; 250000 INR)</option>\r\n");
      out.write("        \r\n");
      out.write("    </select><br><br>\r\n");
      out.write("    <input type=\"submit\" value=\"Post Project\" id= \"post2\"/>\r\n");
      out.write("    </div>\r\n");
      out.write("    </form>\r\n");
      out.write("     ");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<link href=\"CSS/header.css\" type=\"text/css\" rel=\"stylesheet\"/>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("     </div>\r\n");
      out.write("        <div id=\"projects\">\r\n");
      out.write("        <hr>\r\n");
      out.write("        <h5 style=\"float:left; padding-left: 50px;\">Projects</h3>\r\n");
      out.write("        <h5 style=\"float:right; padding-right: 50px;\">Registered Users</h3>\r\n");
      out.write("        </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("    ");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<link href=\"CSS/header.css\" type=\"text/css\" rel=\"stylesheet\"/>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div id=\"footer\">\r\n");
      out.write("            <center>\r\n");
      out.write("            <div style=\"margin-top: 25px;\">Copyright © 2048 CoderHub Pvt. Ltd <a href=\"http://www.coderhub.com\">www.CoderHub.com</a></div>\r\n");
      out.write("            </center>\r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

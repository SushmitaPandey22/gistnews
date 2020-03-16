package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "base.jsp", out, false);
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function checkAccept(x,y){\n");
      out.write("                if(x.checked){\n");
      out.write("                    y.disabled=false;\n");
      out.write("               }\n");
      out.write("               else\n");
      out.write("               {\n");
      out.write("                   y.disabled=true;\n");
      out.write("               }\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function comparePwds(x,y){\n");
      out.write("                if(x===y)\n");
      out.write("                    return true;\n");
      out.write("                else {\n");
      out.write("                    alert(\"Password and Confirm Password not matched !!\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function varifyUserid(x,y){\n");
      out.write("               ajax = new XMLHttpRequest();\n");
      out.write("                ajax.open(\"GET\",\"UserController?op=varify&userid=\"+x,true);\n");
      out.write("                ajax.send();\n");
      out.write("                \n");
      out.write("                ajax.onreadystatechange=function(){\n");
      out.write("                    if (this.readyState==4 && this.status==200){\n");
      out.write("                        y.innerHTML=this.responseText;\n");
      out.write("                    }\n");
      out.write("                };\n");
      out.write("            }\n");
      out.write("     \n");
      out.write("        function readURL(input) {\n");
      out.write("            if (input.files && input.files[0]) {\n");
      out.write("                var reader = new FileReader();\n");
      out.write("\n");
      out.write("                reader.onload = function (e) {\n");
      out.write("                   pic.src= e.target.result;\n");
      out.write("                };\n");
      out.write("\n");
      out.write("                reader.readAsDataURL(input.files[0]);\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("         \n");
      out.write("        \n");
      out.write("           \n");
      out.write("   </script>\n");
      out.write("            <style>\n");
      out.write("                img{\n");
      out.write("  max-width:180px;\n");
      out.write("}\n");
      out.write("input[type=file]{\n");
      out.write("padding:10px;\n");
      out.write("background:#2d2d2d;}\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col col-md-10\">\n");
      out.write("                    <form enctype=\"multipart/form-data\" action=\"UserController?op=add\" method=\"post\" class=\"form\" onsubmit=\"return comparePwds(password.value,rpassword.value);\">  \n");
      out.write("    <center>\n");
      out.write("        <h2 class=\"bg-light\">Registration page </h2>\n");
      out.write("        <table class=\"table bg-light\"> \n");
      out.write("            <tr>\n");
      out.write("                <td>Enter your Name </td>\n");
      out.write("                <td><input type=\"text\" name=\"name\" required=\"required\" autocomplete=\"off\" class=\"form-control\"/> </td>\n");
      out.write("            </tr> <tr>\n");
      out.write("                <td>Enter your Father's Name </td>\n");
      out.write("                <td><input type=\"text\" name=\"fname\" required=\"required\" class=\"form-control\"/> </td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td>Enter your DOB </td>\n");
      out.write("                <td><input type=\"date\" name=\"dob\" class=\"form-control\" /> </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Enter UserId </td>\n");
      out.write("                <td><input type=\"email\" required=\"required\" name=\"userid\" class=\"form-control\" onblur=\"varifyUserid(this.value,s1);\"/><br/>\n");
      out.write("                    <span id=\"s1\"> </span>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("           <tr>\n");
      out.write("                <td>Enter Password </td>\n");
      out.write("                <td><input type=\"password\" name=\"password\" id=\"password\" class=\"form-control\" pattern=\"(?=^.{8,}$)((?=.*\\d)|(?=.*\\W+))(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$\"/><br/>\n");
      out.write("                    <span><b>Password should be minimum 8 char and contains one Upper, one Lowe, one Special and one digit</b></span></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Retype Password </td>\n");
      out.write("                <td><input type=\"password\" name=\"rpassword\" id=\"rpassword\" class=\"form-control\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("             <tr>\n");
      out.write("                <td>Select Your Gender </td>\n");
      out.write("                <td> <input type=\"radio\" name=\"gender\" value=\"Male\"/> Male<br/>\n");
      out.write("                    <input type=\"radio\" name=\"gender\" value=\"Female\"/>Female<br/>\n");
      out.write("                </td>\n");
      out.write("            </tr> \n");
      out.write("                <td>Select Your Hobbies </td>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"checkbox\" name=\"hobbies\" value=\"Dancing\"/>Dancing\n");
      out.write("                     <input type=\"checkbox\" name=\"hobbies\" value=\"Singing\"/>Singing <br/>\n");
      out.write("                    <input type=\"checkbox\" name=\"hobbies\" value=\"Cooking\"/>Cooking\n");
      out.write("                    <input type=\"checkbox\" name=\"hobbies\" value=\"Drawing\"/>Drawing\n");
      out.write("                 </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Select Your Profile Image </td>\n");
      out.write("           <td>\n");
      out.write("                 <img src=\"assets/images/noImage.png\" style=\"width:200px;height: 200px\" class=\"img\" id=\"pic\"/><br/>\n");
      out.write("              <input type=\"file\" name=\"photo\" id=\"photoInput\" class=\"form-control\"  onchange=\"readURL(this);\" /></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <th colspan=\"2\">\n");
      out.write("                    <input type=\"checkbox\" id=\"accept\" value=\"accept\" onchange=\"checkAccept(this,submit);\">Accept Terms and Conditions\n");
      out.write("                </th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                 \n");
      out.write("                <th>\n");
      out.write("                    <input type=\"reset\" value=\"Clear\" class=\"form-control btn btn-dark\" />\n");
      out.write("                </th>\n");
      out.write("                <th>   <input type=\"submit\" value=\"submit\" class=\"form-control btn btn-primary\" disabled=\"disabled\" id=\"submit\"/> \n");
      out.write("                </th>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("         </table>\n");
      out.write("    </center>\n");
      out.write("        </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

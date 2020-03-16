<%-- 
    Document   : email
    Created on : 5 Mar, 2020, 7:52:12 AM
    Author     : LENOVO
--%>
<%@page import="com.utilities.EmailSender"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="base.jsp"></jsp:include>
    </head>
    <body><center>
        <div class="container">
            <div class="row">
                <div class="col col-md-6" style="text-align: left;">
                    <form method="post">
                        <input type="text" name="recipients" pattern="^(\s?[^\s,]+@[^\s,]+\.[^\s,]+\s?,)*(\s?[^\s,]+@[^\s,]+\.[^\s,]+)$" placeholder="Enter email" class="form-control"/>
                        <br/>
                        Enter Subject: <input type="text" name="subject" class="form-control">
                        Enter Message: <br/>
                        <textarea name="message" rows="10" cols="20" class="form-control">
                            
                        </textarea>
                        <br/>
                        <input type="submit" value="Send" name="submit" class="btn btn-primary form-control"/>
                        
                    </form>
                   
              </div>  
            </div>
        </div></center>
    
    <% if (request.getParameter("submit")!=null) {
        String host;
        String port;
        String user;
        String pass;
        
       //read SMTP server setting from web.xml file
       
       ServletContext context=config.getServletContext();
       host = context.getInitParameter("host");
       port = context.getInitParameter("port");
       user = context.getInitParameter("user");
       pass = context.getInitParameter("pass");
       
       String recipient[]= request.getParameter("recipients").split(",");
       String subject =request.getParameter("subject");
       String message=request.getParameter("message");
       
       if(EmailSender.sendEmail(host, port, user, pass, recipient, subject, message))
           out.println("Mail sent Successfully");
       else 
           out.println("<font color='red'>Mail could not be sent !!</font>");
    
       
    }
      
        
    %>
    </body>
</html>


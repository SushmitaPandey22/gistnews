<%-- 
    Document   : searchbysubject
    Created on : 25 Feb, 2020, 7:35:40 AM
    Author     : LENOVO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="base.jsp"></jsp:include>
        <script type="text/javascript">
            $(document).ready(funnction(){
                $("#subject").change(funnction(){
                    $("#courses").load("AjaxServlet?op"=search)
                }
                        
                )
            }
                    
            )
    </head>
    <body>
        <div class="container">
            <div class="row">
            <div class="col col-md-6">
                <select id="subject" class="dropdown">
                    <option value="-1">Select Subject</option>
                <%
                            Connection con = null;
                            PreparedStatement smt = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gisttraining", "root", "root");
                                String sql = "select * from subject";
                                smt = con.prepareStatement(sql);
                                ResultSet rs = smt.executeQuery();

                                while (rs.next()) {%>
                        <option value="<%=rs.getString("id")%>"> <%=rs.getString("name")%> </option> 
                        <% }
                                con.close();
                                smt.close();

                            } catch (Exception e) {
                                System.out.println("Error " + e.getMessage());
                            }

                        %>
                </select>
            </div>  
            </div>
        </div>
    </body>
</html>

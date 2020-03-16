

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="base.jsp"></jsp:include>
        <script type="text/javascript">
            $(document).ready(function(){
                 $("#courses").change(function(){
                   $("#subjects").load("AjaxServlet?op=searchsubject&courseid="+ $(this).val());
               }); 
            });
       </script>
                     <style>
           ul {
               display: block;
           }
         
        </style>
    <body>
          <div class="container">
            <div class="row">
                <div class="col col-md-6">
                    <select  id ="courses" class="dropdown">
                        <option value="-1">Select Course </option>
                             <%
                           
                            Connection con = null;
                            PreparedStatement smt = null;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gisttraining", "root", "root");
                                String sql = "select * from course";
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
 <br/>
                    </select>
                    <div class="row" id="subjects">
                        
                    </div>
                </div>
            </div>
    </body>
</html>

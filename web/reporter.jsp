<%-- 
    Document   : reporter
    Created on : 26 Feb, 2020, 10:25:31 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="base.jsp"></jsp:include>
        <script type="text/javascript">     
        </script>
            
                      <style>
                img{
  max-width:180px;
}
input[type=file]{
padding:5px;
background:#2d2d2d;}
            </style>
    </head>
    <body>  
    <center>
        <h2 class="bg-light">Reporter Page</h2>
        <table class="table bg-light"> 
            <tr>
                <td>Name </td>
                <td><input type="text" name="name" required="required" autocomplete="off" class="form-control"/> </td>
            </tr> <tr>
                <td>Contact number </td>
                <td><input type="int" name="contact_num" required="required" class="form-control"/> </td>
            </tr>
             <tr>
                <td>Email </td>
                <td><input type="email" name="email_id" class="form-control" /> </td>
            </tr>
            <tr>
                <td>Enter UserId </td>
                <td><input type="email" required="required" name="userid" class="form-control" onblur="varifyUserid(this.value,s1);"/><br/>
                    <span id="s1"> </span>
                </td>
            </tr>
            
           <tr>
                <td>Enter Password </td>
                <td><input type="password" name="password" id="password" class="form-control" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"/><br/>
                    <span><b>Password should be minimum 8 char and contains one Upper, one Lowe, one Special and one digit</b></span></td>
            </tr>
            <tr>
                <td>Retype Password </td>
                <td><input type="password" name="rpassword" id="rpassword" class="form-control"/></td>
                
                <tr>
                
            </tr>
                <td>Select Your Profile Image </td>
            
           <td>
                 <img src="assets/images/noImage.png" style="width:200px;height: 200px" class="img" id="pic"/><br/>
              <input type="file" name="photo" id="photoInput" class="form-control"  onchange="readURL(this);" /></td>
            </tr>
            <tr>
                <th colspan="2">
                    <input type="checkbox" id="accept" value="accept" onchange="checkAccept(this,submit);">Accept Terms and Conditions
                </th>
            </tr>
            <tr>
                 
                <th>
                    <input type="reset" value="Clear" class="form-control btn btn-dark" />
                </th>
                <th>   <input type="submit" value="submit" class="form-control btn btn-primary" disabled="disabled" id="submit"/> 
                </th>
            </tr>
            
         </table>
    </center>
        </form>
                </div>
            </div>
        </div>
    </body>
</html>

<%-- 
    Document   : json1
    Created on : 14 Mar, 2020, 8:49:08 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             
        <script>
            
                      person={"name":"amit","age":20} //object
                      str= JSON.stringify(person);
                      
                      document.write(str);
                      document.write("<br/>"+person);
                      document.write("<br/>"+person.name+"<br/>"+person['age']);
                      document.write("<br/>"+str]['name']); //error
                      document.write("<br/>"+str[0]);
                      
                      
                      json='{"name":"amit","age":20}';
                      obj=person.parse(json);
                      document.write("<br/> the name is :"+ obj.name);
                      
                      //array of object
                      students= [ {"name":"ram","rollno":101},
                                  {"name":"mohan","rollno":102},
                                  {"name":"amit","rollno":103}];
                                  
                                  
                                  //showing data
                                  
                                  for(int i=0;i<students.length; i++)
                                      document.write("<hr/>" + students[i].rollno + ":" + students[i].name);
                                  
                                  //using for each
                                  for(i in students)
                                      document.write("<hr/>"+ students[i].rollno + ":" + students[i].name);
                                  
                                //array inside object/key
                                
                                cities={"mp":['rewa','bhopal','gwalior'],
                                    "up":['allahabad','kanpur'],
                                    cg:["raipur","bilaspur"]};
                                document.write(cities);  //object object
                                document.write("<br/>");
                                
                                for(c in cities)
                                    document.write("<br/>"+ c); // mp,up,cg
                                
                                for(c in cities)
                                    document.write("<br/>"+ cities[c]);
                                
                                
                                    
                                
                                  
                                  
                      
               
            </script>
    </body>
</html>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Estado</title>
    </head>
    <body>
        <h1 align="center">Listado de Estados</h1>
        <table align="center" border = "1" width="600">
            <tr bgcolor="skyblue">
                <th colspan="2">Mantenimiento de Estados</th>
                <th>
                    <a href="Nuevo4.jsp"> <img src="Iconos/add.png" width="30" height="30">  </a > </th> 
            </tr>
            <tr bgcolor="skyblue">
                <th>Codigo Proyecto</th><th>Descripcion</th>
            </tr>
            <%
                Connection cnx = null;
                Statement sta = null;
                ResultSet rs =null;
                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx=DriverManager.getConnection("jdbc:mysql://localhost/examenfinal?user=root&password="); 
                    
                sta = cnx.createStatement();
                rs= sta.executeQuery("Select * from statusproyecto");
                
                while(rs.next()){
                    %>
                    <tr>
                        <th><%=rs.getString(1)%></th>
                        <th><%=rs.getString(2)%></th>
                        <th>
                            <a href="Editar4.jsp?cod=<%=rs.getString(1)%>"><img src="Iconos/mod.png" width="30" height="30"></a> ||
                            <a href="Eliminar4.jsp?cod=<%=rs.getString(1)%>"><img src="Iconos/del.jpg" width="30" height="30"> </a>
                        </th> 
                    </tr> 
                    <%
                }
                
                }catch(Exception e){}

                %>
        </table>
    </body>
</html>

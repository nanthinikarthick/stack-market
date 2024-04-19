<%-- 
    Document   : adminanalysis
    Created on : Jan 11, 2017, 10:51:04 PM
    Author     : Purushot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><center>
        <form name="form" action="Analysis" method="post">
             <table border="1" width="70%" >
                 <tr><td style="text-align: center" colspan="3">Click Button to Cluster and Analyze the data</td></tr>
                 <tr><td style="text-align: center"><input type="radio" value="noofshares" name="clusteringtype">&nbsp;No. of Shares</td>
                 <td style="text-align: center"><input type="radio" value="price" name="clusteringtype">&nbsp;Price</td>
                 <td style="text-align: center"><input type="radio" value="total" name="clusteringtype">&nbsp;Total</td>
                 
                 
                 </tr>
                 <tr>  <td style="text-align: center" colspan="3"><input type="submit" value="Cluster and Analyze"></td></tr>
            
             </table>
        </form></center>
    </body>
</html>

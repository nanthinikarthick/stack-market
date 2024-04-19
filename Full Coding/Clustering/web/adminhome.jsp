<%-- 
    Document   : userhome
    Created on : Oct 23, 2015, 11:58:23 AM
    Author     : Sq1
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>A Big Data Clustering Algorithm for Mitigating the risk of Customer Churn</title>

<script src="js/jquery-2.1.0.min.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style1.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="css/style-print.css" type="text/css" media="print" />
<link rel="stylesheet" href="css/demo.css" type="text/css"/>
<script>
$(document).ready(function(){
    $("#viewprice").click(function(){
        $("#boxes").load("viewprice.jsp");
    });
    
       $("#adminanalysis").click(function(){
        $("#boxes").load("analysis.jsp");
    });
    
     $("#predict").click(function(){
        $("#boxes").load("predict.jsp");
    });
    
    
    
});
</script>


</head>
    <body><h1 style="color: white">A Big Data Clustering Algorithm for Mitigating the risk of Customer Churn</h1>
<div id="wrapper">
  <div class="title">
    <div class="title-top">
      <div class="title-left">
        <div class="title-right">
          <div class="title-bottom">
            <div class="title-top-left">
              <div class="title-bottom-left">
                <div class="title-top-right">
                  <div class="title-bottom-right">
                      <h1>Welcome Admin...</h1>
                    <p></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
   
  <hr class="noscreen" />
  <div class="content">
    <div class="column-left">
      <h3>MENU</h3>
      <a href="#skip-menu" class="hidden">Skip menu</a>
      <ul class="menu">
        <li><a href="#" id="viewprice">View Price</a></li>
<!--        <li><a href="#" id="buyshare">Buy Share</a></li>-->
        <li><a href="#" id="adminanalysis">Analysis</a></li>
         <li><a href="#" id="predict">Predict</a></li>
        <li><a href="Logout">Logout</a></li>
       </ul>
    </div>
    <div id="skip-menu"></div>
    <div class="column-right">
        <div class="box">
            <% String msg=request.getAttribute("msg")!=null?request.getAttribute("msg").toString():"";
               String details=request.getAttribute("details")!=null?request.getAttribute("details").toString():"";
            %>
            <h2 style="color: white"><%=msg%></h2>
            <h2 style="color: white"><%=details%></h2>
               
        <div class="box-top"></div>
        <div class="box-in" id="boxes">
            <!--<form name="form1" method="post" action="">
                <input type="file" name="file"></input><br></br>
                <center> <input type="submit" value="Upload"></input></center>
            </form>-->
        </div>
      </div></div></div>
        </body>
</html>
     
<%-- s
    Document   : admin
    Created on : Apr 9, 2018, 10:59:48 AM
    Author     : chinmayi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style1.css" rel="stylesheet">
  

    </head>
         <body>
         
	<div class="imgcontainer">
		<img src="coep.png" alt="Avatar"  width="800" height="130" > 
        </div>
		<div class="content">
		<div class="topnav">
		<a class="active"href="index.html">Home</a>
		<a href="notice.jsp">Notices</a>
		<a href="contactus.jsp">Contact Us</a>
         </div>
</div>


<br>
 <div class="btn-group">
 
  <button class="button"  onclick="document.location.href = 'viewscholarship.jsp'"><b>See Available Scholarship<br> Details</b></button>
  <button class="button" onclick="document.location.href = 'studupdate.jsp'"><b>Update Information</b></button>
  <button class="button" onclick="document.location.href = 'studentdetails.jsp'"><b>Add Detailed Information</b></button>

</div>
</div>

    </body>
</html>

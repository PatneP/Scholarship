<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "scholarshipbean.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style1.css" rel="stylesheet">
    </head>
    <body>
          
	<div class="imgcontainer">
		<img src="coep.png" alt="Avatar"  width="800" height="130" align="middle"> 
        </div>
         <div align="right">
        <span><a href="admin.jsp"><img src="back1.png"  border=" width=0em " height="50" width="80" title="home" ></a></span>
        </div>
		<div class="content">
		<div class="topnav">
		<a class="active" href="index.html">Home</a>
		<a href="notice.jsp">Notices</a>
		<a href="contactus.jsp">Contact Us</a>
         </div>
</div>





<h1 align="center"> Offered Scholarship  : </h1>
        
<table width="500px" cellspacing="0" border="1" bordercolor="green" align="center">
<tr bgcolor="green">
<th>Organization name
<th>caste
<th>CGPA
<th>income
</tr>

<%
Connection con;
PreparedStatement pst;
ResultSet rs;

String orgname,income,cgpa,caste;
        
try
{
DBConnector dbc = new DBConnector();
con=dbc.getDbConnection();
pst=con.prepareStatement("select orgname,caste,cgpa,income from addscholarship;");
rs=pst.executeQuery();

while(rs.next())
{
orgname=rs.getString("orgname");
caste=rs.getString("caste");
cgpa=rs.getString("cgpa");
income=rs.getString("income");

%>
<tr>

<td><%=orgname%>
<td><%=caste%>
    <td><%=cgpa%>
        <td><%=income%>
</tr>
<%
}
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>
</table>

</body>
    
    
    
</html>

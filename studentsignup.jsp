<%-- 
    Document   : studentsignup
    Created on : Apr 10, 2018, 8:38:07 AM
    Author     : priya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="scholarshipbean.*,java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con;
            PreparedStatement pst;
            String name,mis,branch,year,password,cnf,dob,gender,mobileno,secques,answer;
            
            name=request.getParameter("name");
            mis=request.getParameter("mis");
            branch=request.getParameter("branch");
            year=request.getParameter("year");
            password=request.getParameter("password");
            cnf=request.getParameter("cnf");
            dob=request.getParameter("dob");
            gender=request.getParameter("gender");
            mobileno=request.getParameter("mobileno");
            secques=request.getParameter("secques");
            answer=request.getParameter("answer");
            
                            
            if(password.equals(cnf)){
            DBConnector dbc = new DBConnector();
            con=dbc.getDbConnection();
            
            pst=con.prepareStatement("insert into student(name,mis,branch,year,password,dob,gender,mobileno,secques,answer)values(?,?,?,?,?,?,?,?,?,?);");
            pst.setString(1,"name");
            pst.setString(2,"mis");
            pst.setString(3,"branch");
            pst.setString(4,"year");
            pst.setString(5,"password");
            pst.setString(6,"dob");
            pst.setString(7,"gender");
            pst.setString(8,"mobileno");
            pst.setString(9,"secques");
            pst.setString(10,"answer");
            pst.executeUpdate();
            out.println("Registration successful");
           
            }
            else
            out.println("Passwords mismatched");
            
            
            %>
    </body>
</html>

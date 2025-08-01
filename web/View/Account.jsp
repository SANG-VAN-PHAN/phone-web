<%-- 
    Document   : Account
    Created on : Jun 13, 2024, 6:52:26 PM
    Author     : sangv
--%>

<%@page import="Models.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ page import="javax.servlet.http.HttpSession" %>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Information</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f0f0;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .container {
                background-color: #fff;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
                width: 60%;
                max-width: 600px;
                text-align: center;
            }
            h1 {
                color: #333;
                margin-bottom: 20px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin: 20px 0;
            }
            th, td {
                padding: 10px;
                border: 1px solid #ddd;
                text-align: left;
            }
            th {
                background-color: #f4f4f4;
            }
            tr:nth-child(even) {
                background-color: #f9f9f9;
            }
            a {
                text-decoration: none;
                color: #007bff;
            }
            a:hover {
                text-decoration: underline;
            }
            .message {
                color: red;
                margin-bottom: 20px;
            }
            .logout {
                margin-top: 20px;
                display: inline-block;
                background-color: #007bff;
                color: white;
                padding: 10px 20px;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }
            .logout:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h3> <a href="<%= request.getContextPath()%>/home">Home</a></h3>
            <h1>User Account Information</h1>
            <%
                Account acc = (Account) session.getAttribute("acc");

                if (acc == null) {
            %>
            <p class="message">No user is logged in. Please <a href="<%= request.getContextPath()%>/Login.jsp">login</a>.</p>
            <%
                } else {
            %>
            <table>
                <tr>
                    <th>ID</th>
                    <th>UserName</th>
                    <th>Password</th>
                    <th>Role Name</th>
                    <td>Action</td>
                </tr>
                <tr>
                <form action="<%= request.getContextPath() %>/UAcc" method="POST">
                    <td><input type="hidden" name="id" value="<%= acc.getId() %>"/><%= acc.getId() %></td>
                    <td><input type="text" name="user" value="<%= acc.getUser()%>"/></td>
                    <td><input type="text" name="pass" value="<%= acc.getPass()%>"/></td>
                    <td><input type="hidden" name="role" value="<%= acc.getRoleID()%>"/><%= acc.getRoleID()%></td>
                    <td><button type="submit">Update</button></td>
                    </form>
                </tr>
            </table>
            <!--<a class="logout" href="logout">Logout</a>-->
            <%
                }
            %>
        </div>
    </body>
</html>

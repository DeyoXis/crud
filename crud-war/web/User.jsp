<%-- 

    Document   : user.jsp

    Created on : 15/07/2015, 08:48:22

    Author     : info206

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>

    </head>

    <body>

         <form method="POST" action='UserController' name="frmAddUser">

        User ID : <input type="text" readonly="readonly" name="userid"

            value="<c:out value="${user.userid}" />" /> <br /> 

        First Name : <input

            type="text" name="firstName"

            value="<c:out value="${user.firstName}" />" /> <br /> 

        Last Name : <input

            type="text" name="lastName"

            value="<c:out value="${user.lastName}" />" /> <br /> 

        DOB : <input

            type="text" name="dob"

            value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dob}" />" /> <br /> 

        Email : <input type="text" name="email"

            value="<c:out value="${user.email}" />" /> <br /> <input

            type="submit" value="Submit" />

    </form>

    </body>

</html>
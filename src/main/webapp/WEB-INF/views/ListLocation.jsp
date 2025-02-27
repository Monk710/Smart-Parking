<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ListLocation</title>
</head>
<body>
    <h2>List of Locations</h2>

    <table border="1">
        <tr>
            <th>Location Name</th>
        </tr>
        <c:forEach items="${locationList}" var="l">
            <tr>
                <td>${l.locationName}</td>
                <td>
                    <a href="viewlocation?locationId=${l.locationId}">View</a> |
                    <a href="deletelocation?locationId=${l.locationId}">Delete</a> | Edit
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

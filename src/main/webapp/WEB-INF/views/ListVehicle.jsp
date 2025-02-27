<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ListVehicle</title>
</head>
<body>
    <h2>List of Vehicles</h2>

    <table border="1">
        <tr>
            <th>Vehicle Number</th>
            <th>Vehicle Type</th>
        </tr>
        <c:forEach items="${vehicleList}" var="v">
            <tr>
                <td>${v.vehicleNo}</td>
                <td>${v.vehicleType}</td>
                <td>
                    <a href="viewvehicle?vehicleId=${v.vehicleId}">View</a> |
                    <a href="deletevehicle?vehicleId=${v.vehicleId}">Delete</a> | Edit
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

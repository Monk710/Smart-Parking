<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ListParking</title>
</head>
<body>
    <h2>List of Parking Spaces</h2>

	<table border="1">
	     <tr>
			<th>Title</th>
			<th>Address</th>
			<th>Total Capacity (Two-Wheeler)</th>
			<th>Other Information</th>
			<th>Total Capacity (Four-Wheeler)</th>
			<th>Active</th>
			<th>Hourly Charge (Two-Wheeler)</th>
			<th>Hourly Charge (Four-Wheeler)</th>
			<th>Parking Type</th>
			<th>Actions</th>
		</tr>
		<c:forEach items="${parkingList}" var="p">

			<tr>
				<td>${p.title}</td>
				<td>${p.address}</td>
				<td>${p.totalCapacityTwoWheeler}</td>
				<td>${p.otherInformation}</td>
				<td>${p.totalCapacityFourWheeler}</td>
				<td>${p.active}</td>
				<td>${p.hourlyChargeTwoWheeler}</td>
				<td>${p.hourlyChargeFourWheeler}</td>
				<td>${p.parkingType}</td>
				<td><a href="viewparking?parkingId=${p.parkingId}">View</a> | <a href="deleteparking?parkingId=${p.parkingId}">Delete</a> | Edit </td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>

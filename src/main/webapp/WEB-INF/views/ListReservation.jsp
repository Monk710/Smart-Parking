<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ListReservation</title>
</head>
<body>
    <h2>List of Reservations</h2>

    <table border="1">
        <tr>
            <th>Parking Slot ID</th>
            <th>Date</th>
            <th>Start Time</th>
            <th>End Time</th>
            <th>Payment Status</th>
            <th>Amount Paid</th>
            <th>Security Amount Paid</th>
        </tr>
        <c:forEach items="${reservationList}" var="r">
            <tr>
                <td>${r.parkingSlotId}</td>
                <td>${r.date}</td>
                <td>${r.startTime}</td>
                <td>${r.endTime}</td>
                <td>${r.paymentStatus}</td>
                <td>${r.amountPaid}</td>
                <td>${r.securityAmountPaid}</td>
                <td>
                    <a href="viewreservation?reservationId=${r.reservationId}">View</a> |
                    <a href="deletereservation?reservationId=${r.reservationId}">Delete</a> | Edit
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

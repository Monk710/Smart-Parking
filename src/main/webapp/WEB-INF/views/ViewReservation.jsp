<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ViewReservation</title>
</head>
<body>
    <h2>View Reservation</h2>

    Reservation Id:  ${reservation.reservationId}<br>
    User Id:  ${reservation.userId}<br>
    Parking Slot Id:  ${reservation.parkingSlotId}<br>
    Parking Id:  ${reservation.parkingId}<br>
    Date:  ${reservation.date}<br>
    Vehicle Id:  ${reservation.vehicleId}<br>
    Start Time:  ${reservation.startTime}<br>
    End Time:  ${reservation.endTime}<br>
    Payment Status:  ${reservation.paymentStatus}<br>
    Amount Paid:  ${reservation.amountPaid}<br>
    Security Amount Paid:  ${reservation.securityAmountPaid}<br>
</body>
</html>

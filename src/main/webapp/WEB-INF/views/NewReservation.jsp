<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewReservation</title>
</head>
<body>
  <form action="savereservation" method="post">

        Parking Slot ID:
        <input type="number" id="parkingSlotId" name="parkingSlotId" required><br><br>

        Date:
        <input type="date" id="date" name="date" required><br><br>

        Start Time:
        <input type="time" id="startTime" name="startTime" required><br><br>

        End Time:
        <input type="time" id="endTime" name="endTime" required><br><br>

        Payment Status:
        <select id="paymentStatus" name="paymentStatus">
            <option value="Pending">Pending</option>
            <option value="Completed">Completed</option>
        </select><br><br>

        Amount Paid:
        <input type="number" id="amountPaid" name="amountPaid" min="0" required><br><br>

        Security Amount Paid:
        <input type="number" id="securityAmountPaid" name="securityAmountPaid" min="0" required><br><br>

        <input type="submit" value="Submit">
  
  </form>
</body>
</html>

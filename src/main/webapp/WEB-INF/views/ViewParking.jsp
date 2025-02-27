<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ViewParking</title>
</head>
<body>
    <h2>View Parking</h2>

    Parking Id: ${parking.parkingId}<br>
    Title: ${parking.title}<br>
    Address: ${parking.address}<br>
    Location Id: ${parking.locationId}<br>
    Owner Id: ${parking.ownerId}<br>
    Total Capacity (Two-Wheeler): ${parking.totalCapacityTwoWheeler}<br>
    Other Information: ${parking.otherInformation}<br>
    Total Capacity (Four-Wheeler): ${parking.totalCapacityFourWheeler}<br>
    Active: ${parking.active}<br>
    Hourly Charge (Two-Wheeler): ${parking.hourlyChargeTwoWheeler}<br>
    Hourly Charge (Four-Wheeler): ${parking.hourlyChargeFourWheeler}<br>
    Parking Type: ${parking.parkingType}<br>
</body>
</html>

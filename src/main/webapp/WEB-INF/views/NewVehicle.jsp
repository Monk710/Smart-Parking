<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewVehicle</title>
</head>
<body>
  <form action="savevehicle" method="post">

        Vehicle Number:
        <input type="text" id="vehicleNo" name="vehicleNo" required><br><br>

        Vehicle Type:
        <input type="text" id="vehicleType" name="vehicleType" required><br><br>

        <input type="submit" value="Submit">
  
  </form>
</body>
</html>

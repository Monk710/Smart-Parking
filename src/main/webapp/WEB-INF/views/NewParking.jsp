<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewParking</title>
</head>
<body>
  <form action="saveparking" method="post">

        Title:
        <input type="text" id="title" name="title" required><br><br>

        Address:
        <input type="text" id="address" name="address" required><br><br>

        Total Capacity (Two-Wheeler):
        <input type="number" id="totalCapacityTwoWheeler" name="totalCapacityTwoWheeler" min="0" required><br><br>

        Total Capacity (Four-Wheeler):
        <input type="number" id="totalCapacityFourWheeler" name="totalCapacityFourWheeler" min="0" required><br><br>

        Hourly Charge (Two-Wheeler):
        <input type="number" id="hourlyChargeTwoWheeler" name="hourlyChargeTwoWheeler" min="0" required><br><br>

        Hourly Charge (Four-Wheeler):
        <input type="number" id="hourlyChargeFourWheeler" name="hourlyChargeFourWheeler" min="0" required><br><br>

        Parking Type:
        <select id="parkingType" name="parkingType">
            <option value="Road">Road</option>
            <option value="Ground">Ground</option>
            <option value="Building">Building</option>
        </select><br><br>

        Other Information:
        <textarea id="otherInformation" name="otherInformation"></textarea><br><br>

        Active:
        <select id="active" name="active">
            <option value="Yes">Yes</option>
            <option value="No">No</option>
        </select><br><br>

        <input type="submit" value="Submit">
  
  </form>
</body>
</html>

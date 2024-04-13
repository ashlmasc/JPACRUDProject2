<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Add New Property</title>
</head>
<body>
    <div class="container">
        <h2>Add New Property</h2>
        <form action="addProperty.do" method="post">
            <label for="parcelId">Parcel ID:</label>
            <input type="text" id="parcelId" name="parcelId" required>
            <br>

            <label for="streetAddress">Street Address:</label>
            <input type="text" id="streetAddress" name="streetAddress" required>
            <br>

            <label for="city">City:</label>
            <input type="text" id="city" name="city">
            <br>

            <label for="county">County:</label>
            <input type="text" id="county" name="county">
            <br>

            <label for="state">State:</label>
            <input type="text" id="state" name="state">
            <br>

            <label for="zipcode">Zip Code:</label>
            <input type="text" id="zipcode" name="zipcode">
            <br>

            <label for="latitude">Latitude:</label>
            <input type="number" step="any" id="latitude" name="latitude">
            <br>

            <label for="longitude">Longitude:</label>
            <input type="number" step="any" id="longitude" name="longitude">
            <br>

            <label for="zoningStatus">Zoning Status:</label>
            <input type="text" id="zoningStatus" name="zoningStatus">
            <br>

            <label for="size">Size (acres):</label>
            <input type="number" step="any" id="size" name="size">
            <br>

            <label for="landStatus">Land Status:</label>
            <input type="text" id="landStatus" name="landStatus">
            <br>

            <label for="askingPrice">Asking Price:</label>
            <input type="number" step="0.01" id="askingPrice" name="askingPrice">
            <br>

            <label for="purchasePrice">Purchase Price:</label>
            <input type="number" step="0.01" id="purchasePrice" name="purchasePrice">
            <br>

            <label for="utilitiesStatus">Utilities Status:</label>
            <input type="text" id="utilitiesStatus" name="utilitiesStatus">
            <br>

            <label for="contractDate">Contract Date:</label>
            <input type="date" id="contractDate" name="contractDate">
            <br>

            <label for="closingDate">Closing Date:</label>
            <input type="date" id="closingDate" name="closingDate">
            <br>

            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
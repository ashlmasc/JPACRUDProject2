<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Update Property</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Update Property</h2>
    <form action="updateProperty.do" method="post">
        <!-- Hidden field for property ID -->
        <input type="hidden" name="id" value="${land.id}">
        
        <div class="form-group">
            <label for="parcelId">Parcel ID</label>
            <input type="text" class="form-control" id="parcelId" name="parcelId" value="${land.parcelId}">
        </div>
        
        <div class="form-group">
            <label for="streetAddress">Street Address</label>
            <input type="text" class="form-control" id="streetAddress" name="streetAddress" value="${land.streetAddress}" >
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <input type="text" class="form-control" id="city" name="city" value="${land.city}">
        </div>
        
         <div class="form-group">
            <label for="state">State</label>
            <input type="text" class="form-control" id="state" name="state" value="${land.state}">
        </div>

        <div class="form-group">
            <label for="zipcode">Zip Code</label>
            <input type="text" class="form-control" id="zipcode" name="zipcode" value="${land.zipcode}">
        </div>

        <div class="form-group">
            <label for="latitude">Latitude</label>
            <input type="number" step="any" class="form-control" id="latitude" name="latitude" value="${land.latitude}">
        </div>

        <div class="form-group">
            <label for="longitude">Longitude</label>
            <input type="number" step="any" class="form-control" id="longitude" name="longitude" value="${land.longitude}">
        </div>

        <div class="form-group">
            <label for="zoningStatus">Zoning Status</label>
            <input type="text" class="form-control" id="zoningStatus" name="zoningStatus" value="${land.zoningStatus}">
        </div>

        <div class="form-group">
            <label for="size">Size (acres)</label>
            <input type="number" step="any" class="form-control" id="size" name="size" value="${land.size}">
        </div>

        <div class="form-group">
            <label for="landStatus">Land Status</label>
            <input type="text" class="form-control" id="landStatus" name="landStatus" value="${land.landStatus}">
        </div>

        <div class="form-group">
            <label for="askingPrice">Asking Price</label>
            <input type="number" step="0.01" class="form-control" id="askingPrice" name="askingPrice" value="${land.askingPrice}">
        </div>

        <div class="form-group">
            <label for="purchasePrice">Purchase Price</label>
            <input type="number" step="0.01" class="form-control" id="purchasePrice" name="purchasePrice" value="${land.purchasePrice}">
        </div>

        <div class="form-group">
            <label for="utilitiesStatus">Utilities Status</label>
            <input type="text" class="form-control" id="utilitiesStatus" name="utilitiesStatus" value="${land.utilitiesStatus}">
        </div>

        <div class="form-group">
            <label for="contractDate">Contract Date</label>
            <input type="date" class="form-control" id="contractDate" name="contractDate" value="${land.contractDate}">
        </div>

        <div class="form-group">
            <label for="closingDate">Closing Date</label>
            <input type="date" class="form-control" id="closingDate" name="closingDate" value="${land.closingDate}">
        </div>
        
         <!-- Cancel/Update Button -->
        <a href="home.do" class="btn btn-secondary" data-toggle="tooltip" title="Cancel and return to the homepage">Cancel</a>
        <button type="submit" class="btn btn-primary" data-toggle="tooltip" title="Click to add the property to the list">Confirm Update</button>

</form>
</div>
<!-- Bootstrap JS, Popper.js, and jQuery for tooltips -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip(); // Initialize tooltips
    });
</script>

</body>
</html>
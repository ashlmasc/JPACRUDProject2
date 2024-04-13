<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Property</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Add New Property</h2>
        <form action="addProperty.do" method="post" class="needs-validation" novalidate>
        
            <div class="form-group">
                <label for="parcelId">Parcel ID:</label>
                <input type="text" class="form-control" id="parcelId" name="parcelId" required data-toggle="tooltip" title="Enter a unique Parcel ID. This field is required.">
                <div class="invalid-feedback">
                    Please provide a Parcel ID.
                </div>
            </div>
            
            <div class="form-group">
                <label for="streetAddress">Street Address:</label>
                <input type="text" class="form-control" id="streetAddress" name="streetAddress">
            </div>

            <div class="form-group">
                <label for="city">City:</label>
                <input type="text" class="form-control" id="city" name="city">
            </div>

            <div class="form-group">
                <label for="county">County:</label>
                <input type="text" class="form-control" id="county" name="county">
            </div>

            <div class="form-group">
                <label for="state">State:</label>
                <input type="text" class="form-control" id="state" name="state">
            </div>

            <div class="form-group">
                <label for="zipcode">Zip Code:</label>
                <input type="text" class="form-control" id="zipcode" name="zipcode">
            </div>

            <div class="form-group">
                <label for="latitude">Latitude:</label>
                <input type="number" class="form-control" step="any" id="latitude" name="latitude">
            </div>

            <div class="form-group">
                <label for="longitude">Longitude:</label>
                <input type="number" class="form-control" step="any" id="longitude" name="longitude">
            </div>

            <div class="form-group">
                <label for="zoningStatus">Zoning Status:</label>
                <input type="text" class="form-control" id="zoningStatus" name="zoningStatus">
            </div>

            <div class="form-group">
                <label for="size">Size (acres):</label>
                <input type="number" class="form-control" step="any" id="size" name="size">
            </div>

            <div class="form-group">
                <label for="landStatus">Land Status:</label>
                <input type="text" class="form-control" id="landStatus" name="landStatus">
            </div>

            <div class="form-group">
                <label for="askingPrice">Asking Price:</label>
                <input type="number" class="form-control" step="0.01" id="askingPrice" name="askingPrice">
            </div>

            <div class="form-group">
                <label for="purchasePrice">Purchase Price:</label>
                <input type="number" class="form-control" step="0.01" id="purchasePrice" name="purchasePrice">
            </div>

            <div class="form-group">
                <label for="utilitiesStatus">Utilities Status:</label>
                <input type="text" class="form-control" id="utilitiesStatus" name="utilitiesStatus">
            </div>

            <div class="form-group">
                <label for="contractDate">Contract Date:</label>
                <input type="date" class="form-control" id="contractDate" name="contractDate">
            </div>

            <div class="form-group">
                <label for="closingDate">Closing Date:</label>
                <input type="date" class="form-control" id="closingDate" name="closingDate">
            </div>
            
            <a href="home.do" class="btn btn-secondary" data-toggle="tooltip" title="Cancel add and go home">Cancel</a>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

      <!-- Bootstrap JS, Popper.js, and jQuery for tooltips -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('[data-toggle="tooltip"]').tooltip(); // Initialize tooltips
        });
    </script>
</body>
</html>
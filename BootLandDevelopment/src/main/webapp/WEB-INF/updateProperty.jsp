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
        
        <!-- Here you can add all the form fields related to the LandAcquisition entity properties. -->
        <!-- For example: -->
        <div class="form-group">
            <label for="streetAddress">Street Address</label>
            <input type="text" class="form-control" id="streetAddress" name="streetAddress" value="${land.streetAddress}" required>
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <input type="text" class="form-control" id="city" name="city" value="${land.city}" required>
        </div>
        
        <!-- Submit and Cancel buttons -->
        <a href="viewAllProperties.do" class="btn btn-secondary">Cancel</a>
        <button type="submit" class="btn btn-primary">Update Property</button>
    </form>
</div>
        
         <!-- Cancel/Update Button -->
        <a href="home.do" class="btn btn-secondary" data-toggle="tooltip" title="Cancel and return to the homepage">Cancel</a>
  
        
        <button type="submit" class="btn btn-primary" data-toggle="tooltip" title="Click to add the part to the inventory">Confirm Update</button>

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
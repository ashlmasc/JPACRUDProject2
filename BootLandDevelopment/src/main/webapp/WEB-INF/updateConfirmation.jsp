<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Confirmation</title>
    <!-- Bootstrap CSS for styling -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Update Successful</h2>
    <p>The property details have been successfully updated.</p>
    
    <!-- Buttons for navigation -->
    <a href="home.do" class="btn btn-primary">Go Home</a>
    <a href="getPropertyDetail.do?landId=${land.id}" class="btn btn-secondary">View Property Detail</a>
    <a href="viewAllProperties.do" class="btn btn-info">View All Properties</a>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
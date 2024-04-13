<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Property Details</title>

<!-- Bootstrap CSS for styling -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <div class="container mt-5">
        <c:choose>
            <c:when test="${not empty land}">
                <h1 class="display-4 text-center mb-4">Property Details</h1>
                
                <!-- Display Auto-Generated ID-->
            <div class="mb-3"> <strong>Property ID:</strong> ${land.id}</div>
                
            <c:if test="${not empty land.parcelId}">
                <div class="mb-3"><strong>Parcel ID:</strong> ${land.parcelId}</div>
            </c:if>
            <c:if test="${not empty land.streetAddress}">
                <div class="mb-3"><strong>Street Address:</strong> ${land.streetAddress}</div>
            </c:if>
            <c:if test="${not empty land.city}">
                <div class="mb-3"><strong>City:</strong> ${land.city}</div>
            </c:if>
            <c:if test="${not empty land.county}">
                <div class="mb-3"><strong>County:</strong> ${land.county}</div>
            </c:if>
            <c:if test="${not empty land.state}">
                <div class="mb-3"><strong>State:</strong> ${land.state}</div>
            </c:if>
            <c:if test="${not empty land.zipcode}">
                <div class="mb-3"><strong>Zipcode:</strong> ${land.zipcode}</div>
            </c:if>
            <c:if test="${not empty land.latitude}">
                <div class="mb-3"><strong>Latitude:</strong> ${land.latitude}</div>
            </c:if>
            <c:if test="${not empty land.longitude}">
                <div class="mb-3"><strong>Longitude:</strong> ${land.longitude}</div>
            </c:if>
            <c:if test="${not empty land.zoningStatus}">
                <div class="mb-3"><strong>Zoning Status:</strong> ${land.zoningStatus}</div>
            </c:if>
            <c:if test="${not empty land.size}">
                <div class="mb-3"><strong>Size (acres):</strong> ${land.size}</div>
            </c:if>
            <c:if test="${not empty land.landStatus}">
                <div class="mb-3"><strong>Land Status:</strong> ${land.landStatus}</div>
            </c:if>
            <c:if test="${not empty land.askingPrice}">
                <div class="mb-3"><strong>Asking Price:</strong> <fmt:formatNumber value="${land.askingPrice}" type="currency" currencySymbol="$" maxFractionDigits="2" /></div>
            </c:if>
            <c:if test="${not empty land.purchasePrice}">
                <div class="mb-3"><strong>Purchase Price:</strong> <fmt:formatNumber value="${land.purchasePrice}" type="currency" currencySymbol="$" maxFractionDigits="2" /></div>
            </c:if>
            <c:if test="${not empty land.utilitiesStatus}">
                <div class="mb-3"><strong>Utilities Status:</strong> ${land.utilitiesStatus}</div>
            </c:if>
            <c:if test="${not empty land.contractDate}">
                <div class="mb-3"><strong>Contract Date:</strong> ${land.contractDate}</div>
            </c:if>
            <c:if test="${not empty land.closingDate}">
                <div class="mb-3"><strong>Closing Date:</strong> ${land.closingDate}</div>
            </c:if>

<!--                 Update, Delete, and Home Buttons -->
 				<div class="text-center mt-4">
  					 <a href="updateProperty.do?id=${land.id}" class="btn btn-primary">Update Property</a>
    
    				<a href="home.do" class="btn btn-secondary">Go Home</a>

   					 <form action="deleteProperty.do" method="post" onsubmit="return confirm('Are you sure you want to delete this property?');" style="display: inline-block;">
        				<input type="hidden" name="id" value="${land.id}" />
        				<button type="submit" class="btn btn-danger">Delete Property</button>
    				</form>
</div>
            </c:when>
            <c:otherwise>
                <div class="alert alert-danger" role="alert">
                    Property not found.
                </div>
            </c:otherwise>
        </c:choose>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
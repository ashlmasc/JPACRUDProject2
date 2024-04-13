<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List Format - Property</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Favicon -->
    <link rel="icon" href="<c:url value='/resources/images/favicon.ico'/>" type="image/x-icon">
</head>
<body>

<div class="container my-5">
    <h1 class="display-4 text-center mb-4">Property List - List Format</h1>

    <!-- Property List -->
    <div class="row">
        <div class="col-md-12">
            <ul class="list-group">
                <c:forEach items="${allProperties}" var="land">
    			<li class="list-group-item">
            	<div><strong>Property ID:</strong> ${land.id}</div>
        			<c:if test="${not empty land.parcelId}"><div><strong>Parcel ID:</strong> ${land.parcelId}</div></c:if>
                    <c:if test="${not empty land.streetAddress}"><div><strong>Street Address:</strong> ${land.streetAddress}</div></c:if>
                    <c:if test="${not empty land.city}"><div><strong>City:</strong> ${land.city}</div></c:if>
                    <c:if test="${not empty land.county}"><div><strong>County:</strong> ${land.county}</div></c:if>
                    <c:if test="${not empty land.state}"><div><strong>State:</strong> ${land.state}</div></c:if>
                    <c:if test="${not empty land.zipcode}"><div><strong>Zip Code:</strong> ${land.zipcode}</div></c:if>
                    <c:if test="${not empty land.latitude}"><div><strong>Latitude:</strong> ${land.latitude}</div></c:if>
                    <c:if test="${not empty land.longitude}"><div><strong>Longitude:</strong> ${land.longitude}</div></c:if>
                    <c:if test="${not empty land.zoningStatus}"><div><strong>Zoning Status:</strong> ${land.zoningStatus}</div></c:if>
                    <c:if test="${not empty land.size}"><div><strong>Size (acres):</strong> ${land.size}</div></c:if>
                    <c:if test="${not empty land.landStatus}"><div><strong>Land Status:</strong> ${land.landStatus}</div></c:if>
                    <c:if test="${not empty land.askingPrice}"><div><strong>Asking Price:</strong><fmt:formatNumber value="${land.askingPrice}" type="currency" currencySymbol="$" maxFractionDigits="2" minFractionDigits="2"/></div></c:if>
                    <c:if test="${not empty land.purchasePrice}"><div><strong>Purchase Price:</strong><fmt:formatNumber value="${land.purchasePrice}" type="currency" currencySymbol="$" maxFractionDigits="2" minFractionDigits="2"/></div></c:if>
                    <c:if test="${not empty land.utilitiesStatus}"><div><strong>Utilities Status:</strong> ${land.utilitiesStatus}</div></c:if>
                    <c:if test="${not empty land.contractDate}"><div><strong>Contract Date:</strong> ${land.contractDate}</div></c:if>
                    <c:if test="${not empty land.closingDate}"><div><strong>Closing Date:</strong> ${land.closingDate}</div></c:if>
        			
        			<!-- Update and Delete buttons for each record -->
        			<div class="mt-2">
            			<a href="updateProperty.do?id=${land.id}" class="btn btn-primary btn-sm">Update</a>
            			<form action="deleteProperty.do" method="post" onsubmit="return confirm('Are you sure you want to delete this property?');" style="display: inline-block;">
                			<input type="hidden" name="id" value="${land.id}" />
                			<button type="submit" class="btn btn-danger btn-sm">Delete</button>
            			</form>
        			</div>
    			</li>
			</c:forEach>
          </ul>
        </div>
    </div>

    <!-- Navigation Button back to Home Page -->
    <div class="text-center mt-4">
        <a href="home.do" class="btn btn-outline-primary">Back to Home</a>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
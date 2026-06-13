<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title dir="ltr">Change location &amp; Current Location</title>
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="assets/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="location.css">
</head>
<body>

<jsp:include page="nav.jsp" />

<div class="location-modal">
    <div class="modal-content">
        <h2 class="modal-title">Choose your location</h2>
        
        <p class="modal-desc">Delivery options and delivery speeds may vary for different locations</p>
        
        <a href="#" class="signin-address-btn">Sign in to see your addresses</a>
        
        <div class="divider">
            <span>or enter a US zip code</span>
        </div>
        
        <div class="zip-row">
            <input type="text" class="zip-input" placeholder="">
            <button class="apply-btn">Apply</button>
        </div>
        
        <div class="divider">
            <span>or ship outside the US</span>
        </div>
        
        <div class="country-row">
            <select class="country-select">
                <option value="IN" selected>India</option>
                <option value="US">United States</option>
                <option value="UK">United Kingdom</option>
                <option value="CA">Canada</option>
                <option value="AU">Australia</option>
                <option value="AE">United Arab Emirates</option>
                <option value="SG">Singapore</option>
            </select>
        </div>
        
        <button class="done-btn">Done</button>
    </div>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.saekey.Product" %>
<%
ArrayList<Product> products = (ArrayList<Product>) request.getAttribute("products");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="assets/images/favicon.ico">
<title>Today's Deals</title>

<link rel="stylesheet" href="todayDeals.css">

</head>
<body>

<jsp:include page="nav.jsp" />

<div class="video-container">
    <video autoplay muted loop playsinline>
    	<source src="assets/videos/prime-day.mp4" type="video/mp4">
	</video>
</div>

<div class="deals-container">

    <h1 class="page-title">Today's Deals</h1>

    <div class="products-grid">

        <% for(Product p : products){ %>

<a href="productDetails?asin=<%= p.getAsin() %>" class="product-link">

    <div class="product-card">

        <img class="product-image"
             src="<%= p.getImageURL() %>"
             alt="<%= p.getProductName() %>">

        <div class="product-info">

            <h3 class="product-title">
                <%= p.getProductName() %>
            </h3>

            <p class="brand">
                <%= p.getBrand() %>
            </p>

            <p class="category">
                <%= p.getCategory() %>
            </p>

            <div class="price-section">
                <span class="sale-price">
                    <%= p.getCurrencyCode() %>
                    <%= p.getSalePrice() %>
                </span>

                <span class="list-price">
                    <%= p.getCurrencyCode() %>
                    <%= p.getListPrice() %>
                </span>
            </div>

        </div>

    </div>

</a>

<% } %>

    </div>

</div>



<jsp:include page="footer.jsp" />

</body>
</html>
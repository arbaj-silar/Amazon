<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="com.saekey.Product" %>

<%
Product p = (Product) request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<link rel="shortcut icon" href="assets/images/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<% if(p != null){ %>
<title><%= p.getProductName() %></title>
<% } else { %>
<title>Product Not Found</title>
<% } %>

<link rel="stylesheet" href="productDetails.css">

</head>
<body>

<jsp:include page="nav.jsp" />


<% if(p == null){ %>

<div class="not-found-container">
    <h1>Product Not Found</h1>
    <p>The requested product could not be found.</p>
</div>

<% } else { %>

<div class="product-details-container">

    <div class="product-image-section">

        <img
            src="<%= p.getImageURL() %>"
            alt="<%= p.getProductName() %>"
            class="product-image">

    </div>

    <div class="product-info-section">

        <h1 class="product-title">
            <%= p.getProductName() %>
        </h1>

        <p class="brand">
            Brand:
            <strong><%= p.getBrand() %></strong>
        </p>

        <p class="category">
            Category:
            <%= p.getCategory() %>
        </p>

        <div class="rating">
            ⭐ <%= p.getRating() %>
            (<%= p.getReviewCount() %> reviews)
        </div>

        <div class="price-section">

            <span class="sale-price">
                <%= p.getCurrencyCode() %>
                <%= String.format("%.2f", p.getSalePrice()) %>
            </span>

            <span class="list-price">
                <%= p.getCurrencyCode() %>
                <%= String.format("%.2f", p.getListPrice()) %>
            </span>

        </div>

        <div class="stock">

            <% if(p.getStockQty() > 0){ %>

                In Stock (<%= p.getStockQty() %>)

            <% } else { %>

                <span class="out-stock">
                    Out of Stock
                </span>

            <% } %>

        </div>

        <% if(p.isPrimeEligible()){ %>

            <div class="prime-badge">
                Prime Eligible
            </div>

        <% } %>

        <h3>Description</h3>

        <p class="description">
            <%= p.getDescription() %>
        </p>

        <div class="button-group">

            <button class="cart-btn">
                Add to Cart
            </button>

            <button class="buy-btn">
                Buy Now
            </button>

        </div>

    </div>

</div>

<% } %>

<jsp:include page="footer.jsp" />

</body>
</html>
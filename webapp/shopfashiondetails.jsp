<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.saekey.ShopFashion" %>

<%
ShopFashion p =
(ShopFashion)request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>
<%= p.getSfName() %>
</title>

<link rel="stylesheet"
      href="shopfashiondetails.css">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

</head>
<body>

<jsp:include page="nav.jsp" />

<section class="pdp-section">

<div class="pdp-container">

    <div class="pdp-store">

        <a href="#" class="visit-store">
            Visit the <%= p.getBrand() %> Store
        </a>

    </div>

    <div class="pdp-layout">

        <!-- LEFT -->

        <div class="pdp-gallery">

            <div class="pdp-main-image">

                <img
                src="<%= p.getImageURL() %>"
                alt="<%= p.getSfName() %>">

            </div>

        </div>

        <!-- CENTER -->

        <div class="pdp-details">

            <h1 class="pdp-title">
                <%= p.getSfName() %>
            </h1>

            <div class="pdp-rating">

                <span class="rating-value">
                    <%= p.getRating() %>
                </span>

                <span class="rating-count">
                    (<%= p.getReviewCount() %> Reviews)
                </span>

            </div>

            <div class="fashion-badge">
                Amazon's Fashion Choice
            </div>

            <div class="pdp-price-block">

                <span class="currency">
                    ₹
                </span>

                <span class="price-main">
                    <%= (int)p.getPrice() %>
                </span>

            </div>

            <div class="shipping-info">
                FREE Delivery on Fashion Orders
            </div>

            <div class="product-specs">

                <div class="spec-row">

                    <span class="spec-label">
                        Brand
                    </span>

                    <span class="spec-value">
                        <%= p.getBrand() %>
                    </span>

                </div>

                <div class="spec-row">

                    <span class="spec-label">
                        Category
                    </span>

                    <span class="spec-value">
                        <%= p.getType() %>
                    </span>

                </div>

                <div class="spec-row">

                    <span class="spec-label">
                        Product ID
                    </span>

                    <span class="spec-value">
                        <%= p.getSfId() %>
                    </span>

                </div>

            </div>

            <div class="about-product">

                <h3>About this item</h3>

                <ul>

                    <li>
                        Premium quality fabric.
                    </li>

                    <li>
                        Comfortable everyday wear.
                    </li>

                    <li>
                        Stylish modern design.
                    </li>

                    <li>
                        Highly rated by customers.
                    </li>

                    <li>
                        Suitable for casual outings.
                    </li>

                </ul>

            </div>

        </div>

        <!-- RIGHT -->

        <div class="pdp-buybox">

            <div class="buybox-price">

                ₹<%= (int)p.getPrice() %>

            </div>

            <div class="stock-status">
                In Stock
            </div>

            <div class="buybox-delivery">
                FREE Delivery
            </div>

            <div class="buybox-location">
                Deliver to India
            </div>

            <div class="qty-selector">

                <label>Qty:</label>

                <select>

                    <option>1</option>
                    <option>2</option>
                    <option>3</option>

                </select>

            </div>

            <button class="btn-add-cart">
                Add to Cart
            </button>

            <button class="btn-buy-now">
                Buy Now
            </button>

            <div class="seller-info">

                <div class="info-row">

                    <span class="info-label">
                        Brand
                    </span>

                    <span class="info-value">
                        <%= p.getBrand() %>
                    </span>

                </div>

                <div class="info-row">

                    <span class="info-label">
                        Category
                    </span>

                    <span class="info-value">
                        <%= p.getType() %>
                    </span>

                </div>

                <div class="info-row">

                    <span class="info-label">
                        Returns
                    </span>

                    <span class="info-value">
                        30-Day Return Policy
                    </span>

                </div>

            </div>

        </div>

    </div>

</div>

</section>

<jsp:include page="footer.jsp" />

</body>
</html>
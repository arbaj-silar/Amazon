<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="com.saekey.HomeKitchen" %>

<%
HomeKitchen p =
(HomeKitchen) request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<link rel="shortcut icon" href="assets/images/favicon.ico">

<title>
<%= p.getHkName() %>
</title>

<link rel="stylesheet"
href="gamingproductdetails.css">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

</head>
<style>
.product-features{
    margin-top:20px;
    padding-top:20px;
    border-top:1px solid #ddd;
}

.product-features h3{
    margin-bottom:10px;
    font-size:18px;
}

.product-features ul{
    padding-left:20px;
}

.product-features li{
    margin-bottom:8px;
    line-height:1.5;
}
</style>
<body>

<jsp:include page="nav.jsp"/>

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

<img src="<%= p.getImageURL() %>"
alt="<%= p.getHkName() %>">

</div>

<a href="#" class="see-full-view">
Click to see full view
</a>

</div>

<!-- CENTER -->

<div class="pdp-details">

<h1 class="pdp-title">

<%= p.getHkName() %>

</h1>

<div class="pdp-rating">

<span class="rating-value">
<%= p.getRating() %>
</span>

<div class="stars">

<%
int fullStars =
(int)Math.floor(p.getRating());

for(int i=0;i<fullStars;i++){
%>

<span class="star filled">★</span>

<%
}

if(p.getRating()-fullStars >= 0.5){
%>

<span class="star half">★</span>

<%
}
%>

</div>

<span class="rating-count">

(<%= p.getReviewCount() %> Reviews)

</span>

</div>

<div class="overall-pick-badge">

Home & Kitchen Choice

</div>

<div class="bought-count">

Popular Home Decoration Product

</div>

<div class="pdp-price-block">

<span class="currency">

<%= p.getCurrencyCode() %>

</span>

<span class="price-main">

<%= (int)p.getPrice() %>

</span>

<span class="price-fraction">

<%
double fraction =
p.getPrice() -
Math.floor(p.getPrice());

out.print(
String.format("%02d",
(int)(fraction*100))
);
%>

</span>

</div>

<div class="shipping-info">

FREE Shipping Across India

</div>

<div class="delivery-info">

<span class="delivery-price">
FREE Delivery
</span>

<span class="delivery-date">
Deliver to India
</span>

</div>

<!-- FEATURES -->

<div class="product-features">

<h3>About this item</h3>

<ul>

<li>
Premium quality home & kitchen product
</li>

<li>
Perfect for decorating modern homes
</li>

<li>
Stylish design with durable construction
</li>

<li>
Highly rated by customers
</li>

<li>
Suitable for daily use and gifting
</li>

</ul>

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
Product ID
</span>

<span class="spec-value">
<%= p.getHkId() %>
</span>

</div>

<div class="spec-row">

<span class="spec-label">
Category
</span>

<span class="spec-value">
Home & Kitchen
</span>

</div>

</div>

</div>

<!-- RIGHT BUY BOX -->

<div class="pdp-buybox">

<div class="buybox-price">

<span class="currency">

<%= p.getCurrencyCode() %>

</span>

<span class="price-main">

<%= (int)p.getPrice() %>

</span>

</div>

<div class="buybox-delivery">

FREE Delivery

</div>

<div class="buybox-location">

Deliver to India

</div>

<div class="stock-status">

In Stock

</div>

<div class="qty-selector">

<label>Quantity:</label>

<select>

<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>

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
Home & Kitchen
</span>

</div>

<div class="info-row">

<span class="info-label">
Returns
</span>

<span class="info-value">
30-Day Returns
</span>

</div>

</div>

<button class="btn-add-list">

Add to List

</button>

</div>

</div>

</div>

</section>

<jsp:include page="footer.jsp"/>

</body>
</html>
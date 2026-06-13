<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.saekey.GamingProduct" %>
<%@ page import="com.saekey.KitchenDining" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gaming Products</title>

    <link rel="stylesheet"
          href="gamingproducts.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">          
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<link rel="shortcut icon" href="assets/images/favicon.ico">
</head>
<body>


<jsp:include page="nav.jsp" />

<section class="product-list-section">
    <div class="product-list-container">

        <%
            List<GamingProduct> products =
                    (List<GamingProduct>) request.getAttribute("products");

            if(products != null && !products.isEmpty()) {

                for(GamingProduct p : products) {
        %>

        <div class="product-row">

            <div class="product-image">
                <a href="GamingProductDetails?id=<%= p.getGpId() %>">
    <img src="<%= p.getImageURL() %>"
         alt="<%= p.getGpName() %>">
</a>
            </div>

            <div class="product-details">

                <h2 class="product-title">
    <a href="GamingProductDetails?id=<%= p.getGpId() %>">
        <%= p.getGpName() %>
    </a>
</h2>

                <div class="product-options">
                    Model:
                    <span>
                        <%= p.getModel() == null ? "N/A" : p.getModel() %>
                    </span>
                </div>

                <div class="product-rating">

                    <span class="rating-value">
                        <%= p.getRating() %>
                    </span>

                    <div class="stars">

                        <%
                            int fullStars = (int)Math.floor(p.getRating());

                            for(int i=0;i<fullStars;i++){
                        %>
                            <span class="star filled">★</span>
                        <%
                            }

                            if(p.getRating() - fullStars >= 0.5){
                        %>
                            <span class="star half">★</span>
                        <%
                            }

                            int remaining =
                                    5 - (int)Math.ceil(p.getRating());

                            for(int i=0;i<remaining;i++){
                        %>
                            <span class="star empty">★</span>
                        <%
                            }
                        %>

                    </div>

                    <span class="rating-count">
                        (<%= p.getReviewCount() %>)
                    </span>

                </div>

                <div class="bought-count">
                    Brand:
                    <strong>
                        <%= p.getBrand() %>
                    </strong>
                </div>

                <div class="price-block">

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
                                (int)(fraction * 100))
                            );
                        %>
                    </span>

                </div>

                <div class="delivery-info">
                    <span class="delivery-price">
                        FREE Delivery
                    </span>
                </div>

                <div class="ships-to">
                    Ships to India
                </div>

                <button class="add-to-cart-btn">
                    Add to cart
                </button>

            </div>

        </div>

        <%
                }
            } else {
        %>

        <h2>No Gaming Products Available</h2>

        <%
            }
        %>

    </div>
</section>


<jsp:include page="footer.jsp" />

</body>
</html>
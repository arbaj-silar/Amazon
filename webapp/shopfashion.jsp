<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List"%>
<%@ page import="com.saekey.ShopFashion"%>

<%
List<ShopFashion> products =
(List<ShopFashion>)request.getAttribute("products");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<link rel="shortcut icon" href="assets/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="shopfashion.css">
</head>
<body>


<jsp:include page="nav.jsp" />


<section class="fashion-container">

<h1 class="fashion-heading">
    Shop Fashion for Less
</h1>

<div class="fashion-grid">

<%
if(products != null){

for(ShopFashion p : products){
%>

<div class="fashion-card">

    <a href="ShopFashionDetails?id=<%=p.getSfId()%>">

        <div class="fashion-image">

            <img
            src="<%=p.getImageURL()%>"
            alt="<%=p.getSfName()%>">

        </div>

    </a>

    <div class="fashion-content">

        <h3>
            <%=p.getSfName()%>
        </h3>

        <p class="brand">
            <%=p.getBrand()%>
        </p>

        <div class="rating">

            ⭐ <%=p.getRating()%>

            (<%=p.getReviewCount()%>)
        </div>

        <div class="price">

            ₹<%= (int)p.getPrice()%>
        </div>

        <div class="category">

            <%=p.getType()%>
        </div>

        <button>
            Add to Cart
        </button>

    </div>

</div>

<%
}
}
%>

</div>

</section>


<jsp:include page="footer.jsp" />


</body>
</html>
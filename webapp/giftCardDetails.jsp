<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.saekey.GiftCard" %>

<%
GiftCard card =
(GiftCard)request.getAttribute("giftCard");
%>

<!DOCTYPE html>
<html>
<head>
<title>Gift Card Details</title>
<link rel="stylesheet" href="giftCardDetails.css">
</head>
<body>

<jsp:include page="nav.jsp"/>

<div class="details-container">

    <div class="left">

        <img src="<%=card.getImageUrl()%>">

    </div>

    <div class="right">

        <h1><%=card.getGiftCardName()%></h1>

        <h3><%=card.getBrand()%></h3>

        <div class="price">
            <%=card.getCurrencyCode()%>
            <%=card.getOriginalAmount()%>
        </div>

        <p>
            ⭐ <%=card.getRating()%>
            (<%=card.getReviewCount()%> Reviews)
        </p>

        <p>
            Occasion :
            <%=card.getOccasion()%>
        </p>

        <form action="PurchaseGiftCardServlet"
              method="post">

            <input type="hidden"
                   name="giftCardId"
                   value="<%=card.getGiftCardId()%>">

            <label>Recipient Name</label>

            <input type="text"
                   name="recipientName"
                   required>

            <label>Recipient Email</label>

            <input type="email"
                   name="recipientEmail"
                   required>

            <label>Amount</label>

            <input type="number"
                   name="customerAmount"
                   value="<%=card.getOriginalAmount()%>"
                   required>

            <button type="submit">
                Buy Gift Card
            </button>

        </form>

    </div>

</div>

<jsp:include page="footer.jsp"/>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.saekey.GiftCard" %>

<!DOCTYPE html>
<html>
<head>
<title>Gift Cards</title>
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<link rel="shortcut icon" href="assets/images/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="giftcards.css">
</head>
<body>

<jsp:include page="nav.jsp" />

<div class="giftcards-section">

    <div class="giftcards-container">

    <%
    List<GiftCard> cards = (List<GiftCard>) request.getAttribute("giftCards");

    if(cards != null){
        for(GiftCard card : cards){
    %>

        <a href="GiftCardDetails?id=<%=card.getGiftCardId()%>"
           class="gift-card-link">

            <div class="gift-card">

                <img src="<%=card.getImageUrl()%>"
                     alt="<%=card.getGiftCardName()%>">

                <div class="card-info">
                    <h3><%=card.getGiftCardName()%></h3>

                    <p class="price">
                        <%=card.getCurrencyCode()%>
                        <%=card.getOriginalAmount()%>
                    </p>
                </div>

            </div>

        </a>

    <%
        }
    }
    %>

    </div>

</div>

<jsp:include page="footer.jsp" />
</body>
</html>
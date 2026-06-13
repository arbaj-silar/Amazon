<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.saekey.Show" %>

<%
    Show show = (Show) request.getAttribute("show");

    if (show == null) {
%>
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <title>Show Not Found</title>
        </head>
        <body>
            <h2>Show not found</h2>
            <a href="primevideo">Go Back</a>
        </body>
        </html>
<%
        return;
    }
%>

<html>
<head>
    <meta charset="UTF-8">
    <title><%= show.getTitle() %></title>

    <link rel="stylesheet" href="show-details.css">
    <link rel="apple-touch-icon" href="assets/images/favicon.ico">
	<link rel="shortcut icon" href="assets/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
</head>

<body>


<jsp:include page="nav.jsp" />

<section class="phm-detail">

    <!-- BACKDROP -->
    <div class="phm-backdrop">
        <img src="<%= show.getImage() %>" alt="<%= show.getTitle() %>">
        <div class="phm-backdrop-gradient"></div>
    </div>

    <div class="phm-content">

        <!-- LEFT SECTION -->
        <div class="phm-left">

            <div class="phm-actor-name">
                <%= show.getCast() %>
            </div>

            <h1 class="phm-title">
                <%= show.getTitle() %>
            </h1>

            <div class="phm-icon-row">
                <button class="phm-icon-btn">▶</button>
                <button class="phm-icon-btn">+</button>
                <button class="phm-icon-btn">♥</button>
                <button class="phm-icon-btn">⇄</button>
            </div>

            <button class="phm-buy-main">
                Watch Now
                <span class="phm-buy-price">
                    Release Year: <%= show.getReleaseYear() %>
                </span>
            </button>

            <button class="phm-more-ways">
                More Ways To Watch
            </button>

            <div class="phm-meta-small">
                <span class="phm-available">Available to Stream</span>
                <span class="phm-terms">
                    Audience: <%= show.getAudience() %>
                </span>
            </div>

        </div>

        <!-- RIGHT SECTION -->
        <div class="phm-right">

            <span class="phm-badge">
                <%= show.getCategory() %>
            </span>

            <p class="phm-synopsis">
                <%= show.getDescription() %>
            </p>

            <div class="phm-tags">
                <span><%= show.getGenre() %></span>
                <span class="phm-rating">★ <%= show.getRating() %>/10</span>
                <span><%= show.getReleaseYear() %></span>
            </div>

            <div class="phm-cast">
                Cast:
                <strong><%= show.getCast() %></strong>
            </div>

            <div class="phm-badges">
                <span class="phm-badge-outline">
                    <%= show.getContentRating() %>
                </span>

                <span class="phm-badge-icon">HD</span>
                <span class="phm-badge-icon">CC</span>
                <span class="phm-badge-icon">UHD</span>
            </div>

        </div>

    </div>

</section>


<jsp:include page="footer.jsp" />

</body>
</html>
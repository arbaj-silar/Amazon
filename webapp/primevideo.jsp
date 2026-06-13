<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.saekey.Show"%>

<%
List<Show> shows =
(List<Show>)request.getAttribute("shows");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prime Video</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<link rel="shortcut icon" href="assets/images/favicon.ico">

<link rel="stylesheet" href="primevideo.css">

</head>
<body>


<jsp:include page="nav.jsp" />

<section class="pv-hero" >

    <!-- NAVBAR -->
    <div class="pv-nav">

        <div class="pv-nav-left">

            <div class="pv-logo">prime video</div>

            <nav class="pv-menu">
                <a href="#" class="active">Home</a>
                <a href="#">Movies</a>
                <a href="#">TV Shows</a>
                <a href="#">Sports</a>
            </nav>

        </div>

    </div>

    <% if(shows != null){ %>

    <% for(int i=0;i<shows.size();i++){ 
        Show s = shows.get(i);
    %>

    <div class="slide <%= (i==0) ? "active" : "" %>">

        <div class="pv-hero-bg"  onclick="location.href='show-details?id=<%= s.getShowID() %>'">

            <img src="<%= s.getImage() %>"
                 alt="<%= s.getTitle() %>">

            <div class="pv-hero-gradient"></div>

        </div>

        <div class="pv-hero-info">

            <div class="pv-actor">
                <%= s.getCast() %>
            </div>

            <h1 class="pv-movie-title">
                <%= s.getTitle() %>
            </h1>

            <div class="pv-tagline">
                <%= s.getGenre() %>
            </div>

            <div class="pv-actions"  onclick="location.href='show-details?id=<%= s.getShowID() %>'">

                <button class="pv-buy-btn">

                    <span class="buy-text" > 
                    	Watch Now 
                    </span>

                    <span class="buy-price">
                        Release :
                        <%= s.getReleaseYear() %>
                    </span>

                    <span class="buy-status">
                        Rating :
                        <%= s.getRating() %>
                    </span>

                </button>

            </div>

        </div>

        <div class="pv-rating">
            <%= s.getContentRating() %>
        </div>

    </div>

    <% } %>

    <% } %>

    <!-- ARROWS -->

    <button class="pv-carousel-arrow left">
        &#10094;
    </button>

    <button class="pv-carousel-arrow right">
        &#10095;
    </button>

    <div class="pv-carousel-dots">
        <% for(int i=0;i<shows.size();i++){ %>

            <span class="<%= (i==0) ? "active" : "" %>"></span>

        <% } %>
    </div>

</section>

<script>

let current = 0;

const slides =
document.querySelectorAll(".slide");

const dots =
document.querySelectorAll(".pv-carousel-dots span");

function showSlide(index){

    slides.forEach(slide =>
        slide.classList.remove("active")
    );

    dots.forEach(dot =>
        dot.classList.remove("active")
    );

    slides[index].classList.add("active");
    dots[index].classList.add("active");
}

function nextSlide(){

    current++;

    if(current >= slides.length){
        current = 0;
    }

    showSlide(current);
}

function prevSlide(){

    current--;

    if(current < 0){
        current = slides.length-1;
    }

    showSlide(current);
}

document.querySelector(".right")
.addEventListener("click", nextSlide);

document.querySelector(".left")
.addEventListener("click", prevSlide);

/* Auto Rotate */

setInterval(nextSlide,5000);

</script>


<jsp:include page="footer.jsp" />

</body>
</html>
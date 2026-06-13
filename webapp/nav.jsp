<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="assets/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<title>Navbar Content</title>
</head>
<body>

<!-- ================== NAV MAIN  ================== -->
	<header class="navbar">

    <!-- Top Navbar -->
    <div class="nav-top">

        <!-- Logo -->
        <a href="home" class="logo border">
            <img src="assets/images/amazon-logo.png" alt="Amazon">
        </a>

        <!-- Address -->
        <form action="location" method="post">
    		<button style="background-color: #131921" type="submit" class="address border">
        		<div class="location-icon">
            		<svg width="15" height="18" viewBox="0 0 15 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                	<path d="M7.5 0.5C3.63 0.5 0.5 3.63 0.5 7.5C0.5 12.75 7.5 17.5 7.5 17.5C7.5 17.5 14.5 12.75 14.5 7.5C14.5 3.63 11.37 0.5 7.5 0.5ZM7.5 10C6.12 10 5 8.88 5 7.5C5 6.12 6.12 5 7.5 5C8.88 5 10 6.12 10 7.5C10 8.88 8.88 10 7.5 10Z" 
                      fill="white"/>
            		</svg>
        		</div>
            <div>
            <span class="small-text">Deliver to</span>
            <span class="big-text"  style="color: white">India</span>
        </div>
    </button>
</form>
        <!-- Search -->
        <form class="search-bar">

            <select>
                <option>All</option> 
                <option>Arts & Crafts</option> 
                <option>Automotive</option> 
                <option>Baby</option> 
                <option>Beauty & Personal Care</option> 
                <option>Books</option> 
                <option>Boys' Fashion</option> 
                <option>Computers</option> 
                <option>Deals</option> 
                <option>Digital Music</option> 
                <option>Electronics</option> 
                <option>Girls' Fashion</option> 
                <option>Health & Household</option> 
                <option>Home & Kitchen</option> 
                <option>Industrial & Scientific</option> 
                <option>Kindle Store</option> 
                <option>Luggage</option> 
                <option>Men's Fashion</option> 
                <option>Movies & TV</option> 
                <option>Music, CDs & Vinyl</option> 
                <option>Pet Supplies</option> 
                <option>Prime Video</option> 
                <option>Software</option> 
                <option>Sports & Outdoors</option> 
                <option>Tools & Home Improvement</option> 
                <option>Toys & Games</option> 
                <option>Video Games</option> 
                <option>Women's Fashion</option>
            </select>

            <input
                type="text"
                placeholder="Search Amazon">

            <button type="submit">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>

        </form>
		
        <!-- Language -->
	<div class="language border">
    	<form action="language" method="post">
        	<button type="submit" class="language-btn">
            	<img src="assets/images/us-flag.webp" alt="English">
            	<span>EN</span>
        	</button>
    	</form>
	</div>

        <!-- Account -->
        <div class="account border">
    		<form action="account" method="post">
        		<button type="submit" class="account-btn">
            	<span class="small-text">
                	Hello, sign in
           		 </span>

            	<span class="big-text">
               		Account &amp; Lists
            	</span>
        		</button>
    		</form>
		</div>

        <!-- Orders -->
        <div class="orders border">
    <form action="account" method="post">
        <button type="submit" class="account-btn">
            <span class="small-text">
                Returns
            </span>

            <span class="big-text">
                &amp; Orders
            </span>
        </button>
    </form>
</div>

        <!-- Cart -->
        <div class="cart border">
            <div class="nav-item nav-cart">
    			<a href="cart" class="cart-link">
        			<div class="cart-icon">
            			<span class="cart-count">0</span>
            			<svg width="38" height="26" viewBox="0 0 38 26" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M0.5 1H5.5L9.5 19H30.5L35.5 6H12.5" stroke="#FFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"/> <circle cx="11" cy="23.5" r="2.5" fill="#FFF"/> <circle cx="29" cy="23.5" r="2.5" fill="#FFF"/> </svg>
        			</div>
        			<span class="nav-line-2">Cart</span>
    			</a>
			</div>
         
        </div>

    </div>

    <!-- Bottom Navbar -->
   <div class="nav-bottom">

        <div class="menu border">
        	<i class="fa-solid fa-bars"></i>
        	<span>All</span>
    	</div>

        <a href="todayDeals" class="border">Today's Deals</a>
        <a href="GiftCards" class="border">Gift Cards</a>
        <a href="sells" class="border">Sell</a>
		<a href="Registry" class="border">Registry</a>
        <a href="primevideo" class="border">Prime Video</a>
        <a href="customerSevice" class="border">Customer Service</a>

    </div>

</header>


</body>
</html>
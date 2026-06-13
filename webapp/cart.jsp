<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Amazon.com Shopping Cart</title>
<link rel="stylesheet" type="text/css" href="cart.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<link rel="shortcut icon" href="assets/images/favicon.ico">
</head>
<body>


<jsp:include page="nav.jsp" />


<div class="empty-cart-page">
    <div class="empty-cart-container">
        <div class="empty-cart-content">
            <img src="assets/images/Cart/empty.svg" 
                 alt="Empty cart" 
                 class="cart-image">
            
            <div class="cart-text">
                <h1 class="cart-title">Your Amazon Cart is empty</h1>
                <a href="#" class="deals-link">Shop today's deals</a>
                
                <div class="button-group">
                	<form action="account" method="post">
                    <button type="submit" class="btn-signin">Sign in to your account</button>
                    </form>
                    
                    <form action="account" method="post">
                    <button type="submit" class="btn-signup">Sign up now</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="spacer-box"></div>

    <div class="cart-info">
        <p class="info-text">
            The price and availability of items at Amazon.com are subject to change. The Cart is a temporary place to store a list of your items and reflects each item's most recent price. <a href="#">Learn more</a>
        </p>
        <p class="info-text">
            Do you have a gift card or promotional code? We'll ask you to enter your claim code when it's time to pay.
        </p>
    </div>
</div>

<div class="cart-layout">

<!-- ================  PRODUCT-LIST =============== -->

<div class="recs-section">
    <h2 class="recs-title">Customers Who Bought Items in Your Recent History Also Bought</h2>
    
    <div class="product-list">
        <!-- ================ Product 1 ================ -->
        <div class="product-item">
            <img src="assets/images/Cart/rb-01.jpg"
                 alt="Mark Zondervan" 
                 class="product-img">
            
            <div class="product-details">
                <a href="#" class="product-name">Mark (Zondervan...</a>
                <a href="#" class="product-author">›Mark L. Strauss</a>
                
                <div class="rating-row">
                    <span class="stars">
                        <i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i>
                    </span>
                    <span class="review-count">104</span>
                </div>
                
                <p class="format">Hardcover</p>
                
                <div class="price-row">
                    <span class="discount">-43%</span>
                    <span class="price-symbol">INR</span><span class="price-whole">3,728</span><span class="price-fraction">32</span>
                </div>
                
                <p class="list-price">List: <span class="list-price-value">INR 6,503.04</span></p>
                <p class="delivery">INR 1,582 delivery <strong>Tue, Jun 23</strong></p>
                
                <button class="add-cart-btn">Add to cart</button>
            </div>
        </div>

        <!-- ================ Product 2 ================ -->
        <div class="product-item">
            <img src="assets/images/Cart/rb-02.jpg"
                 alt="The Gospel of Mark" 
                 class="product-img">
            
            <div class="product-details">
                <a href="#" class="product-name">The Gospel of Mark...</a>
                <a href="#" class="product-author">›R. T. France</a>
                
                <div class="rating-row">
                    <span class="stars">
                        <i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star half"></i>
                    </span>
                    <span class="review-count">78</span>
                </div>
                
                <p class="format">Hardcover</p>
                
                <div class="price-row">
                    <span class="price-symbol">INR</span><span class="price-whole">6,825</span><span class="price-fraction">37</span>
                </div>
                
                <p class="delivery">INR 1,444.27 delivery <strong>Tue, Jun 23</strong></p>
                
                <button class="add-cart-btn">Add to cart</button>
            </div>
        </div>
        
        
        <!-- ================ Product 3 ================ -->
        <div class="product-item">
            <img src="assets/images/Cart/rb-03.jpg"
                 alt="Mark Zondervan" 
                 class="product-img">
            
            <div class="product-details">
                <a href="#" class="product-name">The Gospel according...</a>
                <a href="#" class="product-author">›James R. Edwards</a>
                
                <div class="rating-row">
                    <span class="stars">
                        <i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i>
                    </span>
                    <span class="review-count">81</span>
                </div>
                
                <p class="format">Hardcover</p>
                
                <div class="price-row">
                    <span class="discount">-17%</span>
                    <span class="price-symbol">INR</span><span class="price-whole">5,765</span><span class="price-fraction">60</span>
                </div>
                
                <p class="list-price">List: <span class="list-price-value">INR 6,981.27</span></p>
                <p class="delivery">INR 1,496.88 delivery <strong>Tue, Jun 23</strong></p>
                
                <button class="add-cart-btn">Add to cart</button>
            </div>
        </div>

        <!-- ================ Product 4 ================ -->
        <div class="product-item">
            <img src="assets/images/Cart/rb-04.jpg"
                 alt="The Gospel of Mark" 
                 class="product-img">
            
            <div class="product-details">
                <a href="#" class="product-name">The Gospel according...</a>
                <a href="#" class="product-author">›William L. Lane</a>
                
                <div class="rating-row">
                    <span class="stars">
                        <i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star half"></i>
                    </span>
                    <span class="review-count">159</span>
                </div>
                
                <p class="format">Hardcover</p>
                
                <div class="price-row">
                    <span class="price-symbol">INR</span><span class="price-whole">4,636</span><span class="price-fraction">01</span>
                </div>
                
                <p class="delivery">INR 1,404.67 delivery <strong>Tue, Jun 23</strong></p>
                
                <button class="add-cart-btn">Add to cart</button>
            </div>
        </div>
        
         <!-- ================ Product 5 ================ -->
        <div class="product-item">
            <img src="assets/images/Cart/rb-05.jpg"
                 alt="Mark Zondervan" 
                 class="product-img">
            
            <div class="product-details">
                <a href="#" class="product-name">The Gospel according...</a>
                <a href="#" class="product-author">›D. A. Carson</a>
                
                <div class="rating-row">
                    <span class="stars">
                        <i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i>
                    </span>
                    <span class="review-count">541</span>
                </div>
                
                <p class="format">Hardcover</p>
                
                <div class="price-row">
                    <span class="discount">-18%</span>
                    <span class="price-symbol">INR</span><span class="price-whole">4,708</span><span class="price-fraction">32</span>
                </div>
                
                <p class="list-price">List: <span class="list-price-value">INR 5,733.04</span></p>
                <p class="delivery">INR 1,382.32 delivery <strong>Tue, Jun 23</strong></p>
                
                <button class="add-cart-btn">Add to cart</button>
            </div>
        </div>

        <!-- ================ Product 6 ================ -->
        <div class="product-item">
            <img src="assets/images/Cart/rb-06.jpg"
                 alt="The Gospel of Mark" 
                 class="product-img">
            
            <div class="product-details">
                <a href="#" class="product-name">The Gospel according...</a>
                <a href="#" class="product-author">›Leon Morris</a>
                
                <div class="rating-row">
                    <span class="stars">
                        <i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star half"></i>
                    </span>
                    <span class="review-count">67</span>
                </div>
                
                <p class="format">Hardcover</p>
                
                <div class="price-row">
                    <span class="price-symbol">INR</span><span class="price-whole">5,025</span><span class="price-fraction">73</span>
                </div>
                
                <p class="delivery">INR 1,434.57 delivery <strong>Tue, Jun 23</strong></p>
                
                <button class="add-cart-btn">Add to cart</button>
            </div>
        </div>
        
        
        <!-- ================ Product 7 ================ -->
        <div class="product-item">
            <img src="assets/images/Cart/rb-07.jpg"
                 alt="Mark Zondervan" 
                 class="product-img">
            
            <div class="product-details">
                <a href="#" class="product-name">Mark: An Introduction...</a>
                <a href="#" class="product-author">›Eckhard J. Schnabel</a>
                
                <div class="rating-row">
                    <span class="stars">
                        <i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i>
                    </span>
                    <span class="review-count">54</span>
                </div>
                
                <p class="format">Hardcover</p>
                
                <div class="price-row">
                    <span class="discount">-53%</span>
                    <span class="price-symbol">INR</span><span class="price-whole">1,588</span><span class="price-fraction">32</span>
                </div>
                
                <p class="list-price">List: <span class="list-price-value">INR 3, 343.04</span></p>
                <p class="delivery">INR 1,400.27 delivery <strong>Tue, Jun 23</strong></p>
                
                <button class="add-cart-btn">Add to cart</button>
            </div>
        </div>

        <!-- ================ Product 8 ================ -->
        <div class="product-item">
            <img src="assets/images/Cart/rb-08.jpg"
                 alt="The Gospel of Mark" 
                 class="product-img">
            
            <div class="product-details">
                <a href="#" class="product-name">Mark: An Expositional...</a>
                <a href="#" class="product-author">›R. C. Sproul</a>
                
                <div class="rating-row">
                    <span class="stars">
                        <i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star full"></i><i class="star half"></i>
                    </span>
                    <span class="review-count">54</span>
                </div>
                
                <p class="format">Hardcover</p>
                
                <div class="price-row">
                    <span class="price-symbol">INR</span><span class="price-whole">2,125</span><span class="price-fraction">37</span>
                </div>
                
                <p class="delivery">INR 1,224.27 delivery <strong>Tue, Jun 23</strong></p>
                
                <button class="add-cart-btn">Add to cart</button>
            </div>
        </div>
        
        
    </div>
</div>



<!-- ============ Horizontal-Cards =========== -->

<div class="recs-carousel">
    <h2 class="carousel-title">New international customers purchased</h2>
    
    <div class="carousel-container">
        
        <div class="carousel-track" id="track">
           
			 <div class="product-card">
                <img src="assets/images/Cart/gi-01.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Google Fitbit Air ...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">129</span>
                </div>
                <span class="badge-orange">#1 Best Seller</span>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">9,563</span><span class="price-dec">74</span>
                </div>
                <p class="card-delivery">INR 909.60 delivery Jun 18 - Jul 3</p>
                <button class="card-btn">Add to cart</button>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-02.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Indian Cotton Cloth...</a>
                <div class="card-rating">
                    <span class="stars-5"></span>
                    <span class="rating-count">2</span>
                </div>
                <p class="card-offer">1 offer from <b>INR 955</b><sup>51</sup></p>
                <a href="#" class="card-link">See all buying options</a>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-03.jpg" class="card-img" alt="">
                <a href="#" class="card-title">NOW Foods...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">2,134</span>
                </div>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">832</span><span class="price-dec">15</span>
                    <span class="price-unit">(INR 27.74/count)</span>
                </div>
                <p class="card-delivery">INR 880.91 delivery Tue, Jun 23</p>
                <button class="card-btn">Add to cart</button>
            </div>

           <div class="product-card">
                <img src="assets/images/Cart/gi-04.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Now Supplements,...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">4231</span>
                </div>
                <span style="background-color: black;" class="badge-orange">Amazon's choice</span>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">576</span><span class="price-dec">75</span>
                </div>
                <p class="card-delivery">INR 900.60 delivery Jun 18 - Jul 3</p>
                <button class="card-btn">Add to cart</button>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-05.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Now Foods...</a>
                <div class="card-rating">
                    <span class="stars-5"></span>
                    <span class="rating-count">5631</span>
                </div>
                <p class="card-offer">1 offer from<b>INR 955</b><sup>51</sup></p>
                <a href="#" class="card-link">See all buying options</a>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-06.jpg" class="card-img" alt="">
                <a href="#" class="card-title">The Gospel according t...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">134</span>
                </div>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">4,409</span><span class="price-dec">45</span>
                    <span class="price-unit">(INR 27.74/count)</span>
                </div>
                <p class="card-delivery">INR 1292.91 delivery Tue, Jun 23</p>
                <button class="card-btn">Add to cart</button>
            </div>
            
            <div class="product-card">
                <img src="assets/images/Cart/gi-07.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Usui/Holy Fire Reiki...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">129</span>
                </div>
                <span class="badge-orange">#1 Best Seller</span>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">23,563.97</span><span class="price-dec">74</span>
                </div>
                <p class="card-delivery">INR 1109.60 delivery Jun 18 - Jul 3</p>
                <button class="card-btn">Add to cart</button>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-08.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Happiness Is Right Here...</a>
                <div class="card-rating">
                    <span class="stars-5"></span>
                    <span class="rating-count">8</span>
                </div>
                <p class="card-offer">1 offer from <b>INR 955.31</b><sup>51</sup></p>
                <a href="#" class="card-link">See all buying options</a>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-09.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Casio MDV106 Series |...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">52,134</span>
                </div>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">8832.12</span><span class="price-dec">15</span>
                    <span class="price-unit">(INR 27.74/count)</span>
                </div>
                <p class="card-delivery">INR 980.91 delivery Tue, Jun 23</p>
                <button class="card-btn">Add to cart</button>
            </div>
            
            <div class="product-card">
                <img src="assets/images/Cart/gi-10.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Operation Systems: Thr...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">629</span>
                </div>
                <span class="badge-orange">#1 Best Seller</span>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">2,563.94</span><span class="price-dec">74</span>
                </div>
                <p class="card-delivery">INR 1309.60 delivery Jun 18 - Jul 3</p>
                <button class="card-btn">Add to cart</button>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-11.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Create Wealth With...</a>
                <div class="card-rating">
                    <span class="stars-5"></span>
                    <span class="rating-count">5</span>
                </div>
                <p class="card-offer">1 offer from <b>INR 2155</b><sup></sup></p>
                <a href="#" class="card-link">See all buying options</a>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-12.jpg" class="card-img" alt="">
                <a href="#" class="card-title">CETAPHIL ECZEMA...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">3,134</span>
                </div>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">1,232</span><span class="price-dec">15</span>
                    <span class="price-unit">(INR 27.74/count)</span>
                </div>
                <p class="card-delivery">INR 880.91 delivery Tue, Jun 23</p>
                <button class="card-btn">Add to cart</button>
            </div>
            
            <div class="product-card">
                <img src="assets/images/Cart/gi-13.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Leave the Feed: Wellne...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">129</span>
                </div>
                <span class="badge-orange">Amazon's offer</span>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">1,563</span><span class="price-dec">74</span>
                </div>
                <p class="card-delivery">INR 1009.60 delivery Jun 18 - Jul 3</p>
                <button class="card-btn">Add to cart</button>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-14.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Leave the Feed:...</a>
                <div class="card-rating">
                    <span class="stars-5"></span>
                    <span class="rating-count">3</span>
                </div>
                <p class="card-offer">1 offer from <b>INR 1,224</b><sup>51</sup></p>
                <a href="#" class="card-link">See all buying options</a>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-15.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Google Fitbit Air Active...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">13</span>
                </div>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">3,232.41</span><span class="price-dec">15</span>
                    <span class="price-unit">(INR 27.74/count)</span>
                </div>
                <p class="card-delivery">INR 880.91 delivery Tue, Jun 23</p>
                <button class="card-btn">Add to cart</button>
            </div>
        
        
         <div class="product-card">
                <img src="assets/images/Cart/gi-16.jpg" class="card-img" alt="">
                <a href="#" class="card-title">L'Oreal Paris Elvive Dre...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">15,729</span>
                </div>
                <span class="badge-orange">#1 Best Seller</span>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">663.31</span><span class="price-dec">74</span>
                </div>
                <p class="card-delivery">INR 949.60 delivery Jun 18 - Jul 3</p>
                <button class="card-btn">Add to cart</button>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-17.jpg" class="card-img" alt="">
                <a href="#" class="card-title">TUMS Chewy Bites...</a>
                <div class="card-rating">
                    <span class="stars-5"></span>
                    <span class="rating-count">148</span>
                </div>
                <p class="card-offer">1 offer from <b>INR 955</b><sup>51</sup></p>
                <a href="#" class="card-link">See all buying options</a>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-18.jpg" class="card-img" alt="">
                <a href="#" class="card-title">AI & the Future of...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">3</span>
                </div>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">2,390.22</span><span class="price-dec">15</span>
                    <span class="price-unit">(INR 27.74/count)</span>
                </div>
                <p class="card-delivery">INR 1,180.91 delivery Tue, Jun 23</p>
                <button class="card-btn">Add to cart</button>
            </div>
             <div class="product-card">
                <img src="assets/images/Cart/gi-19.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Orchestrating Retail...</a>
                <div class="card-rating">
                    <span class="stars-5"></span>
                    <span class="rating-count">9</span>
                </div>
                <p class="card-offer">1 offer from <b>INR 2,855</b><sup></sup></p>
                <a href="#" class="card-link">See all buying options</a>
            </div>

            <div class="product-card">
                <img src="assets/images/Cart/gi-20.jpg" class="card-img" alt="">
                <a href="#" class="card-title">Reflections: Glimpses o...</a>
                <div class="card-rating">
                    <span class="stars-4-5"></span>
                    <span class="rating-count">134</span>
                </div>
                <div class="card-price">
                    <span class="price-sym">INR</span><span class="price-main">432.42</span><span class="price-dec">15</span>
                    <span class="price-unit">(INR 27.74/count)</span>
                </div>
                <p class="card-delivery">INR 910.91 delivery Tue, Jun 23</p>
                <button class="card-btn">Add to cart</button>
            </div>
       </div>
        
    </div>
 </div>
</div>


	<!-- ========= Sign In Section ========== -->
<div class="signin-section">
    <div class="signin-container">
        <p class="signin-title">See personalized recommendations</p>
        <form action="account" method="post">
        		<button type="submit" class="signin-btn">
        		Sign in
        		</button>
    		</form>
        <p class="new-customer">New customer? <a href="#">Start here.</a></p>
    </div>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>
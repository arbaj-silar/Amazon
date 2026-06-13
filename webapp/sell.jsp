<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sell with Amazon</title>
    <link rel="stylesheet" href="sell.css">
    <link rel="apple-touch-icon" href="assets/images/favicon.ico">
<link rel="shortcut icon" href="assets/images/favicon.ico">
    
</head>
<body>

<jsp:include page="nav.jsp" />

    <!-- Top bar -->
    <div class="top-bar">
        <div class="top-bar-content">
            <div class="logo">Sell with Amazon</div>
            <div class="top-offer">
                <span class="check-icon">✓</span>
                Get 10% back on your first $50,000 in branded sales. 
                <a href="3">Learn more</a>
            </div>
            <form action="SignupServlet" method="post">
            <button class="btn-signup-top">Sign up*</button>
            </form>
        </div>
    </div>

    <!-- Hero section -->
    <section class="hero">
        <div class="hero-content">
            
            <div class="hero-left">
                <h1>Create an Amazon<br>selling account</h1>
                
                <div class="cta-row">
                <form action="SignupServlet" method="post">
                    <button class="btn-signup-main">Sign up*</button>
                    </form>
                    <p class="offer-text">
                        Get 10% back on your first<br>
                        $50,000 in branded sales
                    </p>
                </div>
            </div>

            <div class="hero-right">
                <div class="image-wrapper">
                    <!-- Main background image -->
                    <img src="assets/images/Sell/s-1.webp" 
                         alt="Sellers working together" 
                         class="main-image">
                    
                    <!-- Overlay card: Total sales -->
                    <div class="sales-card">
    					<img alt="Total sales $1,340,820 +17%" src="assets/images/Sell/s-7.webp">
					</div>
                </div>
            </div>

        </div>

        <div class="hero-footer">
            <p>In 2024, more than 55,000 independent sellers generated over $1 million in sales*</p>
        </div>
    </section>
    
    <section class="incentives-section">
    <div class="incentives-content">
        
        <div class="incentives-left">
            <div class="image-stack">
                <!-- Main background image -->
                <img src="assets/images/Sell/s-6.webp" 
                     alt="Sellers working together" 
                     class="main-incentive-image">
                
                <!-- Top-left badge: $100 off shipments -->
                <div class="badge badge-top">
                    <img src="assets/images/Sell/s-8.webp" 
                         alt="$100 off shipments">
                </div>

                <!-- Bottom-right badge: New Seller Incentives -->
                <div class="badge badge-bottom">
                    <img src="assets/images/Sell/s-4.webp" 
                         alt="New Seller Incentives 10% on your branded sales">
                </div>
            </div>
        </div>

        <div class="incentives-right">
            <div class="tag">New Seller Incentives</div>
            
            <h2>Get started with $50,000 in incentives</h2>
            
            <p class="sub-text">
                Ready to sell with Amazon? As a Professional seller, you can 
                explore a series of incentives and maximize your sales 
                potential at the same time.
            </p>

            <ul class="incentive-list">
                <li>
                    <span class="check">✓</span>
                    10% back on your first $50,000 in branded sales, then 5% back through your first year until you reach $1,000,000
                </li>
                <li>
                    <span class="check">✓</span>
                    $100 off shipments into our fulfillment network using the Amazon Partner Carrier program
                </li>
                <li>
                    <span class="check">✓</span>
                    Free storage and customer returns with automatic enrollment in the FBA New Selection program
                </li>
                <li>
                    <span class="check">✓</span>
                    Up to a $1,000 credit to create Sponsored Products ads
                </li>
            </ul>

            <a href="#" class="link-arrow">See all incentives →</a>
        </div>

    </div>
</section>



<section class="why-amazon-section">
    <div class="why-amazon-content">
        
        <!-- Left Column: Reasons -->
        <div class="reasons-col">
            <h2>Why create an Amazon<br>selling account?</h2>
            <p class="intro-text">
                By selling with Amazon, you can put your brand in front 
                of millions of customers across the globe in a store 
                they know and trust. Here are a few other reasons to 
                consider selling with Amazon.
            </p>

            <div class="reason-item">
                <div class="reason-icon">
                    <img src="assets/images/Sell/s-9.svg" alt="">
                </div>
                <div class="reason-text">
                    <h3>Sell with a brand customers trust</h3>
                    <p>
                        In 2023, Amazon was ranked the most trusted brand by US customers. 
                        Selling with Amazon means reaching millions of customers and tapping 
                        into a trusted shopping experience.
                    </p>
                    <a href="#" class="link-arrow">Explore Amazon selling stats ↗</a>
                </div>
            </div>

            <div class="reason-item">
                <div class="reason-icon">
                    <img src="assets/images/Sell/s-10.svg" alt="">
                </div>
                <div class="reason-text">
                    <h3>Grow with tools built for your success</h3>
                    <p>
                        It takes a lot to run a business. That's why we provide every seller 
                        with a full toolkit for listing, pricing, and managing your business, 
                        so you can focus on growing.
                    </p>
                    <a href="#" class="link-arrow">Explore Amazon tools ↗</a>
                </div>
            </div>

            <div class="reason-item">
                <div class="reason-icon">
                    <img src="assets/images/Sell/s-11.svg" alt="">
                </div>
                <div class="reason-text">
                    <h3>Scale with services that level the playing field</h3>
                    <p>
                        We offer enterprise-level services at a great value to sellers of all sizes. 
                        This means small businesses can grow more efficiently with access to services 
                        like Fulfillment by Amazon (FBA), Amazon Ads, and other specialty programs.
                    </p>
                    <a href="#" class="link-arrow">Explore Amazon selling programs ↗</a>
                </div>
            </div>
        </div>

        <!-- Right Column: Testimonials -->
        <div class="testimonials-col">
            
            <div class="testimonial">
                <div class="company-name">DIASPORA Co.</div>
                <blockquote>
                    “I trusted that there was a community out there that cared, and to whom 
                    we mattered. All we needed to do was find them.”
                </blockquote>
                <div class="author">
                    <img src="assets/images/Sell/s-12.webp" alt="Sana Javeri Kadri">
                    <div class="author-info">
                        <div class="author-name">Sana Javeri Kadri</div>
                        <div class="author-title">Founder & Chief Executive Officer</div>
                    </div>
                </div>
                <a href="#" class="link-arrow">See Sana's story ↗</a>
            </div>

            <div class="testimonial">
                <div class="company-name">nested bean</div>
                <blockquote>
                    “Challenges are a sign that something fundamental needs to change. 
                    In our case, it was the way we sold our products—we needed to get online.”
                </blockquote>
                <div class="author">
                    <img src="assets/images/Sell/s-13.webp" alt="Manasi Gangan">
                    <div class="author-info">
                        <div class="author-name">Manasi Gangan</div>
                        <div class="author-title">Founder</div>
                    </div>
                <a href="#" class="link-arrow">See Manasi's story ↗</a>
            </div>

        </div>

    </div>
</section>


<!-- Revenue Calculator Section -->
<section class="calculator-section">
    <div class="calculator-content">
        
        <!-- Left: Full image of calculator UI -->
        <div class="calculator-left">
            <img src="assets/images/Sell/s-5.webp" 
                 alt="Revenue Calculator comparing Amazon fulfillment vs Your fulfillment">
        </div>

        <!-- Right: Text -->
        <div class="calculator-right">
            <div class="eyebrow">Revenue Calculator</div>
            <h2>Estimate your revenue<br>based on fulfillment<br>method</h2>
            <p>
                You can use our Revenue Calculator to compare estimates for FBA and your 
                own fulfillment method.
            </p>
            <a href="#" class="link-arrow">Learn more about the Revenue Calculator ↗</a>
        </div>

    </div>
</section>

<!-- Ready to Get Started Section -->
<section class="steps-section">
    <div class="steps-content">
        
        <!-- Left: Steps -->
        <div class="steps-left">
            <h2>Ready to get started?</h2>
            
            <div class="step-item">
                <div class="step-number">Step 1</div>
                <div class="step-text">
                    <h3>Choose a selling plan</h3>
                    <p>
                        A Professional selling plan costs $39.99 a month plus selling fees. 
                        It gives you access to advanced programs and tools to help you optimize 
                        your business, boost sales, and discover new growth opportunities.
                    </p>
                    <a href="#" class="link-arrow">Select a selling plan ↗</a>
                </div>
            </div>

            <div class="step-item">
                <div class="step-number">Step 2</div>
                <div class="step-text">
                    <h3>Create an Amazon selling account</h3>
                    <p>
                        Choose your email and password, set up your selling account, and add 
                        other team members to meet your needs and goals.
                    </p>
                    <a href="#" class="link-arrow">Learn how to register as an Amazon seller ↗</a>
                </div>
            </div>

            <div class="step-item">
                <div class="step-number">Step 3</div>
                <div class="step-text">
                    <h3>Start selling</h3>
                    <p>
                        After you create an account, you can start listing and selling products. 
                        You can also build a brand, run promotions, and grow sales.
                    </p>
                    <a href="#" class="link-arrow">Learn how to sell with Amazon ↗</a>
                </div>
            </div>
        </div>

        <!-- Right: Image -->
        <div class="steps-right">
            <img src="assets/images/Sell/s-2.webp" 
                 alt="Person typing on keyboard">
        </div>

    </div>
</section>

<section class="start-selling-section">
    <div class="start-selling-content">
        
        <!-- Left: Text + CTA -->
        <div class="selling-left">
            <h1>Start selling<br>with Amazon</h1>
            <p class="subhead">
                Connect with more customers using our high-impact tools and programs.
            </p>
            
            <div class="cta-row">
            
                <a href="SignupServlet" class="btn-signup">Sign up*</a>
                <span class="incentive-text">
                    Get 10% back on your first<br>$50,000 in branded sales
                </span>
            </div>
        </div>

        <!-- Right: Image -->
        <div class="selling-right">
            <img src="assets/images/Sell/s-3.webp" 
                 alt="Person placing Amazon packages at doorstep">
        </div>

    </div>

    <!-- Footnotes -->
    <div class="footnotes">
        <p>*A Professional selling account is $39.99 a month plus selling fees. <a href="#">Learn more</a></p>
        <p>¹2024 Amazon Small Business Empowerment Report</p>
        <p>²Amazon internal data</p>
        <p>³Amazon internal data</p>
        <p>⁴Amazon internal data</p>
    </div>
</section>

<jsp:include page="footer.jsp" />
</body>
</html>
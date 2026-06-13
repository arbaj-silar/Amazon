<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="assets/images/favicon.ico">
<title>Amazon Sign-In</title>
<link rel="stylesheet" type="text/css" href="account.css">
</head>
<body>
    <div class="signin-page">
        <header class="logo-header">
        <a href="home" class="logo border">
            <img src="assets/images/amazon-bl.png" alt="Amazon" class="amazon-logo">
        </a>
        </header>

        <div class="signin-box">
            <h1 class="signin-title">Sign in or create account</h1>
            
            <form class="signin-form">
                <label for="email" class="input-label">Enter mobile number or email</label>
                <input type="text" id="email" name="email" class="email-input" autofocus>
                
                <button type="submit" class="continue-btn">Continue</button>
            </form>

            <p class="legal-text">
                By continuing, you agree to Amazon's 
                <a href="#">Conditions of Use</a> and <a href="#">Privacy Notice</a>.
            </p>

            <a href="#" class="help-link">
                <i class="caret"></i>Need help?
            </a>

            <div class="divider"></div>

            <div class="business-section">
                <h2 class="business-title">Buying for work?</h2>
                <a href="#" class="business-link">Create a free business account</a>
            </div>
        </div>

        <footer class="signin-footer">
            <div class="footer-links">
                <a href="#">Conditions of Use</a>
                <a href="#">Privacy Notice</a>
                <a href="#">Help</a>
            </div>
            <p class="footer-copy">© 1996-2026, Amazon.com, Inc. or its affiliates</p>
        </footer>
    </div>
</body>
</html>
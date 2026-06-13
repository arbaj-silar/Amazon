<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<link rel="shortcut icon" href="assets/images/favicon.ico">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="signup.css">
</head>

<body>


<div class="auth-page">
    <div class="auth-container">
        
        <!-- Logo -->
        <div class="logo">
            <img src="assets/images/Sell/s-14.png" alt="Amazon Seller Central">
        </div>

        <!-- Main Card -->
        <div class="auth-card">
            <h1>Get started selling on Amazon</h1>
            
            <form class="auth-form">
                <div class="form-group">
                    <label for="email">Enter mobile number or email</label>
                    <input type="text" id="email" name="email" autofocus>
                </div>

                <button type="submit" class="btn-continue">Continue</button>

                <p class="legal-text">
                    By continuing, you agree to Amazon's 
                    <a href="#">Conditions of Use</a> and 
                    <a href="#">Privacy Notice</a>.
                </p>

                <details class="help-dropdown">
                    <summary>Need help?</summary>
                    <div class="help-content">
                        <a href="#">Forgot your password?</a>
                        <a href="#">Other issues with Sign-In</a>
                    </div>
                </details>
            </form>
        </div>

        <!-- Divider -->
        <div class="divider">
            <span>New to Amazon?</span>
        </div>

        <!-- Create Account Button -->
        <a href="#" class="btn-create-account">Create your Amazon account</a>

    </div>
</div>

</body>
</html>
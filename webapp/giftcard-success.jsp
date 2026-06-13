<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Gift Card Purchase Successful</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family:Arial, sans-serif;
    background:linear-gradient(135deg,#f6f9fc,#e9f2ff);
    display:flex;
    justify-content:center;
    align-items:center;
    min-height:100vh;
}

.success-container{
    background:#fff;
    padding:40px;
    border-radius:15px;
    text-align:center;
    box-shadow:0 10px 25px rgba(0,0,0,0.1);
    max-width:500px;
    width:90%;
}

.success-icon{
    font-size:70px;
    color:#28a745;
    margin-bottom:20px;
}

h1{
    color:#232f3e;
    margin-bottom:15px;
    font-size:30px;
}

p{
    color:#555;
    margin-bottom:25px;
    font-size:16px;
}

.back-btn{
    display:inline-block;
    text-decoration:none;
    background:#ffd814;
    color:#111;
    padding:12px 25px;
    border-radius:25px;
    font-weight:bold;
    transition:0.3s;
}

.back-btn:hover{
    background:#f7ca00;
    transform:translateY(-2px);
}
</style>

</head>
<body>

<div class="success-container">

    <div class="success-icon">
        ✓
    </div>

    <h1>Gift Card Purchased Successfully!</h1>

    <p>
        Your gift card order has been placed successfully.
        The recipient will receive the gift card details shortly.
    </p>

    <a href="GiftCards" class="back-btn">
        Back to Gift Cards
    </a>

</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title dir="ltr">Change Language &amp; Currency Settings</title>
<link rel="stylesheet" type="text/css" href="language.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="apple-touch-icon" href="assets/images/favicon.ico">
<link rel="shortcut icon" href="assets/images/favicon.ico">
</head>
<body>

<jsp:include page="nav.jsp" />

<!-- ========== Language_SETTINGS =========== -->


	<div class="lang-settings">
    <div class="lang-container">
        <h1 class="lang-title">Language Settings</h1>
        <p class="lang-desc">Select the language you prefer for browsing, shopping, and communications.</p>
        
        <form class="lang-form">
            <div class="lang-option">
                <input type="radio" id="en" name="language" value="en" checked>
                <label for="en">English - EN</label>
            </div>
            <hr class="lang-divider">
            
            <div class="lang-option">
                <input type="radio" id="es" name="language" value="es">
                <label for="es">español - ES - Traducción</label>
            </div>
            
            <div class="lang-option">
                <input type="radio" id="ar" name="language" value="ar">
                <label for="ar">العربية - AR - الترجمة</label>
            </div>
            
            <div class="lang-option">
                <input type="radio" id="de" name="language" value="de">
                <label for="de">Deutsch - DE - Übersetzung</label>
            </div>
            
            <div class="lang-option">
                <input type="radio" id="he" name="language" value="he">
                <label for="he">עברית - HE - תרגום</label>
            </div>
            
            <div class="lang-option">
                <input type="radio" id="ko" name="language" value="ko">
                <label for="ko">한국어 - KO - 번역</label>
            </div>
            
            <div class="lang-option">
                <input type="radio" id="pt" name="language" value="pt">
                <label for="pt">português - PT - Tradução</label>
            </div>
            
            <div class="lang-option">
                <input type="radio" id="zh-cn" name="language" value="zh-cn">
                <label for="zh-cn">中文 (简体) - ZH - 翻译</label>
            </div>
            
            <div class="lang-option">
                <input type="radio" id="zh-tw" name="language" value="zh-tw">
                <label for="zh-tw">中文 (繁體) - ZH - 翻譯</label>
            </div>
        </form>
        
        <hr class="lang-footer-divider">
    </div>
</div>

<!-- ========== CURRENCY_SETTINGS =========== -->

<div class="currency-settings-page">
    <div class="settings-container">
        <h1 class="settings-title">Currency Settings</h1>
        
        <p class="settings-desc">Select the currency you want to shop with.</p>
        
        <div class="currency-options">
            <label class="radio-option">
                <input type="radio" name="currency" value="USD">
                <span class="radio-custom"></span>
                <span class="option-text">$ - USD - US Dollar (Default)</span>
            </label>
            
            <label class="radio-option">
                <input type="radio" name="currency" value="INR" checked>
                <span class="radio-custom"></span>
                <span class="option-text">₹ - INR - Indian Rupee</span>
            </label>
        </div>

        <div class="currency-dropdown-wrap">
            <select class="currency-select">
                <option value="INR" selected>₹ - INR - Indian Rupee</option>
                <option value="USD">$ - USD - US Dollar</option>
                <option value="EUR">€ - EUR - Euro</option>
                <option value="GBP">£ - GBP - British Pound</option>
                <option value="JPY">¥ - JPY - Japanese Yen</option>
                <option value="AUD">A$ - AUD - Australian Dollar</option>
            </select>
        </div>

        <p class="settings-note">
            <strong>Note:</strong> You will be shown prices in ₹ - INR - Indian Rupee on Amazon.com as a reference only. You may or may not be able to pay in ₹ - INR - Indian Rupee, see more details during checkout. <a href="#">Details</a>
        </p>

        <div class="button-row">
            <button class="btn-cancel">Cancel</button>
            <button class="btn-save">Save Changes</button>
        </div>
    </div>

    <div class="recommendations-section">
        <h2 class="rec-title">See personalized recommendations</h2>
        <button class="signin-btn">Sign in</button>
        <p class="new-customer">New customer? <a href="#">Start here.</a></p>
    </div>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>
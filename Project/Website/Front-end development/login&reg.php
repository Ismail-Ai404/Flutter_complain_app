<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Registration Page </title>
    <meta name="google-signin-client_id" content="174371317892-6puuclt3plqikgljl68a4icvconl3f2i.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="">
                <h1>Create Account</h1>
                <div class="social-container">
                    <div class="g-signin2"></div>
                </div>
                <span>Or use your email for Registration</span>
                <input type="text" placeholder="Name">
                <input type="text" placeholder="NSU ID">
                <input type="text" placeholder="Occupation">
                <input type="email" placeholder="Email">
                <input type="phone" placeholder="Phone">
                <input type="password" placeholder="Password">
                <button>Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="">
                <h1>Sign In</h1>
                <div class="social-container">

                    <div class="g-signin2"></div>

                </div>
                <span>or use your account</span>
                <input type="email" placeholder="Email">
                <input type="password" placeholder="Password">
                <button>Sign In</button>
            </form>
        </div>
        <div class="background-image"></div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <img class="logo" src="img/logo-4.png" alt="NSU logo">
                    <h1>One of us!</h1>
                    <p>Please login with your personal info.</p>
                    <button class="devingine" id="signIn">Sign In</button>
                </div>

                <div class="overlay-panel overlay-right">
                    <img class="logo" src="img/logo-4.png" alt="NSU logo">
                    <h1>New Here?</h1>
                    <p>Enter your parsonal details and start journey with us.</p>
                    <button class="devingine" id="signUp">Sign Up</button>
                </div>

            </div>
        </div>

    </div>







    <script src="app.js"></script>

</body>

</html>
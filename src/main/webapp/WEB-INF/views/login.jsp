<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" type="image/png" href="${contextPath}/resources/images/icons/favicon.ico"/>

    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/fonts/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/util.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main.css">

    <style>
        /* Navbar */
        .navbar-custom {
            background: rgba(15, 23, 42, 0.85);
            border: none;
        }

        .navbar-custom .navbar-brand,
        .navbar-custom .navbar-nav > li > a {
            color: #e5e7eb;
            font-weight: 600;
        }

        .navbar-custom .navbar-nav > li > a:hover {
            color: #38bdf8;
        }

        .navbar-wrapper {
            position: absolute;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
        }

        /* Background */
        body {
            background-image: url('${contextPath}/resources/Images/bg-01.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

        /* Login Card */
        .wrap-login100 {
            background: rgba(15, 23, 42, 0.85);
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.6);
        }

        /* Title */
        .login100-form-title {
            color: #38bdf8;
            font-weight: 700;
        }

        /* Labels */
        .label-input100 {
            color: #cbd5f5;
        }

        /* Inputs */
        .input100 {
            color: #e5e7eb;
            background: transparent;
            border-bottom: 2px solid #475569;
        }

        .input100::placeholder {
            color: #94a3b8;
        }

        .input100:focus {
            border-bottom-color: #38bdf8;
        }

        /* Icons */
        .focus-input100::before {
            color: #38bdf8;
        }

        /* Button */
        .login100-form-btn {
            background: linear-gradient(135deg, #38bdf8, #2563eb);
            color: #ffffff;
            font-weight: 600;
        }

        .login100-form-btn:hover {
            background: linear-gradient(135deg, #2563eb, #1e40af);
        }

        /* Links */
        a {
            color: #38bdf8;
            font-weight: 500;
        }

        a:hover {
            color: #7dd3fc;
            text-decoration: none;
        }

        /* Bottom text */
        .txt1 {
            color: #cbd5e1;
        }

        .txt2 {
            color: #38bdf8;
            font-weight: 600;
        }

        /* Error */
        .alert-danger {
            background-color: rgba(239, 68, 68, 0.15);
            color: #fecaca;
            border: 1px solid #ef4444;
        }
    </style>
</head>

<body>

<div class="navbar-wrapper">
    <div class="container-fluid">
        <nav class="navbar navbar-custom navbar-static-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${contextPath}/index">Pankaj Sharma Tech</a>
                </div>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="nav navbar-nav navbar-right"></ul>
                </div>
            </div>
        </nav>
    </div>
</div>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
            <form class="login100-form validate-form" method="POST" action="${contextPath}/login">

                <span class="login100-form-title p-b-49">
                    Login
                </span>

                <c:if test="${not empty error}">
                    <div class="alert alert-danger">
                        <c:out value="${error}"/>
                    </div>
                </c:if>

                <div class="wrap-input100 validate-input m-b-23" data-validate="Username is required">
                    <span class="label-input100">Username</span>
                    <input class="input100" type="text" name="username" placeholder="Type your username" required autofocus>
                    <span class="focus-input100" data-symbol="&#xf206;"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Password is required">
                    <span class="label-input100">Password</span>
                    <input class="input100" type="password" name="password" placeholder="Type your password" required>
                    <span class="focus-input100" data-symbol="&#xf190;"></span>
                </div>

                <div class="text-right p-t-8 p-b-31">
                    <a href="#">password bhul gya na tu</a>
                </div>

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">
                            aa gya na tu
                        </button>
                    </div>
                </div>

                <div class="flex-col-c p-t-155">
                    <span class="txt1 p-b-17">Don't have an account?</span>
                    <a href="${contextPath}/registration" class="txt2">Sign Up</a>
                </div>

            </form>
        </div>
    </div>
</div>

<div id="dropDownSelect1"></div>

<script src="${contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/resources/vendor/animsition/js/animsition.min.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap/js/popper.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/vendor/select2/select2.min.js"></script>
<script src="${contextPath}/resources/vendor/daterangepicker/moment.min.js"></script>
<script src="${contextPath}/resources/vendor/daterangepicker/daterangepicker.js"></script>
<script src="${contextPath}/resources/vendor/countdowntime/countdowntime.js"></script>
<script src="${contextPath}/resources/js/main.js"></script>

</body>
</html>

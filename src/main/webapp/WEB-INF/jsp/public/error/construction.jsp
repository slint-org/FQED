<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <title>fqed 404 - Page Not Found</title>
    <link rel="shortcut icon" href="../img/MinistryOfEducation-logo.png" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/1.0.0/pure-min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/styles.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <style type="text/css">

        .container{
            margin-top: 8%;
        }

        .construction-header {
            display: inline-block;
            font-family: 'Oswald', 'Montserrat', "Open Sans", sans-serif;
            font-size: 5em;
            color: #990000;
            text-align: center;
            vertical-align: middle;
            width: 100%;
        }

        .social-media{
            font-size: 1.7em;
            font-family: 'Oswald', 'Montserrat', "Open Sans", sans-serif;
            text-align: center;
            margin-top: 4.3%;
        }

        .social-space{
            margin-top: 1%;
        }

        .socail-space a{
            margin: auto;
        }

        .sub-header{
            font-size: 1.7em;
            font-family: 'Oswald', 'Montserrat', "Open Sans", sans-serif;
            text-align: center;
            margin-top: 1.3%;
        }

        /* =================================================
         Font Awesome Social Media Icon Styles Here!
        ==================================================== */

        .fa {
            border-radius: 90%;
            padding: 30px;
            font-size: 30px;
            width: 35px;
            text-align: center;
            text-decoration: none;
            margin: 5px 2px;
        }

        .fa-facebook {
            background: #3B5998;
            color: white;
        }

        .fa-twitter {
            background: #55ACEE;
            color: white;
        }

        .fa-linkedin {
            background: #007bb5;
            color: white;
        }

        .fa-youtube {
            background: #bb0000;
            color: white;
        }

        .fa-home {
            background: #990000;
            color: white;
        }

        .fa:hover {
            -o-transition:.5s;
            -ms-transition:.5s;
            -moz-transition:.5s;
            -webkit-transition:.5s;
            transition:.5s;
            opacity: 0.7;
            color: white;
        }
    </style>
</head>

<body>
<div class="container">
    <div id="banner" class="col-lg-12"> </div>
    <script>
        $(function () {
            $("#banner").load("bannerL2.html");
            $("#nav-upper").load("../assets/navbarInterior.html");
            $("#footer").load("../assets/footer.html");
        });
    </script>
    <div class="row">
        <div class="construction-header">
            <strong>Page Currently Unavailable</strong> &nbsp;
        </div>
        <div class="sub-header">
            <span>We are working on improving this page. Please check back with us later.</span>
        </div>
        <div class="social-media">
            <span>Check us out on these channels or return to our site in the meantime!</span>
            <div class="social-space col-md-4 col-sm-12">
                <a href="https://www.facebook.com/fqed/" target="_blank" class="fa fa-facebook"></a>
                <a href="https://www.linkedin.com/company/national-language-service-corps/" target="_blank" class="fa fa-linkedin"></a>
                <a href="https://twitter.com/fqed?lang=en" target="_blank" class="fa fa-twitter"></a>
                <a href="/" class="fa fa-home"></a>
            </div>
        </div>
    </div>
    <div class="row">

        <!--Social Media Icons Will go here for now!-->
    </div>
</div>
<div id="footer">
</div>
</body>
</html>

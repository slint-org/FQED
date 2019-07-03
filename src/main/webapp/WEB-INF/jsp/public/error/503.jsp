<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <title>FQED 503 - Internal Server Error''</title>
    <link rel="shortcut icon" href="../img/MinistryOfEducation-logo.png" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/1.0.0/pure-min.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/styles.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <style type="text/css">
        #main {
            position: relative;
            max-height: 361px;
        }
        #main:after {
            content : "";
            display: block;
            position: absolute;
            top: 0;
            left: 0;
            background-image: url(../img/Title_bg1.png);
            background-size: cover;
            width: 100%;
            height: 100%;
            opacity : 0.2;
            z-index: -1;
        }
        #column-content {
            display: inline-block;
            position: absolute;
            margin-left: 5%;
            top: 20%;
            font-family: 'Oswald', 'Montserrat', "Open Sans", sans-serif;
            font-weight: 400;
            font-size: 5.5em;
            color: #A10732;
        }
        #column-content strong {
            vertical-align: middle;
            text-shadow: 2px 2px 5px #000;
        }

    </style>
</head>

<body>
<div class="container" >
    <div id="banner" class="col-lg-12"> </div>
    <!-- </div>-->
    <div id="nav-upper"></div>
    <script>
        $(function () {
            $("#banner").load("../assets/banner.html");
        });
    </script>
    <div class="row">
        <div class="col-12" id="main" style="padding-top: 27%; background-repeat:no-repeat; width: 100%;">
            <div  id="column-content"> <strong>Error 503</strong> &nbsp;<span style="font-size: .6em;
	vertical-align: middle;">Service Unavailable</span> </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12" style="padding-top: 2em; height: 35vh" align="center">
            <h5>
                The server is temporarily unable to service your request due to maintenance downtime. <br>Please try again in a few minutes.</h5>

        </div>
    </div>
</div>
<div id="footer"></div>
<!--end of container-->

</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8"%>
<c:url var="membersUrl" value="${routes['Routes.Public.Members']}" />
<c:url var="membershipUrl" value="${routes['Routes.Public.Membership']}" />
<c:url var="applyUrl" value="${routes['Routes.Public.Apply']}" />
<c:url var="partnersUrl" value="${routes['Routes.Public.Partners']}" />
<c:url var="aboutUrl" value="${routes['Routes.Public.About']}" />
<c:url var="leadership" value="${routes['Routes.Public.Leadership']}" />

<c:url var="loginUrl" value="${routes['Routes.Auth.Login.loginPage']}" />

<script type="text/javascript">
    $(document).ready(function() {
        if ($(window).width() > 768) {
            $('#AboutLinkSubMenu').css("display", "none");
            $('#MemberLinkSubMenu').css("display", "none");
            $('#dropdown3').mousedown(function(){
                window.location.replace("./about.html");}); //Hides About Us in the navigation bar
            $('#dropdown2').mousedown(function(){
                window.location.replace("${loginUrl}");});
        } else {
            $('#AboutLinkSubMenu').css("display", "block");
            $('#MemberLinkSubMenu').css("display", "block");
        }
    });
</script>

<div id="nav-upper">
    <nav class="navbar ribbon navbar-expand-md navbar-light navbar-custom">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
        <div class="collapse navbar-collapse navContainer" id="navbarSupportedContent">
            <a class="d-none d-md-block" aria-expanded="false" href="/"><img src="../img/Home-icon1.png" width="31" height="25" alt="" style="margin: 0px 10px;"/></a>
            <div>
                <ul class="navbar-nav">
                    <li><a class="pure-button d-md-none d-sm-block" href="/" role="button" aria-expanded="false">Home</a></li>
                     <li class="dropdown">
                        <a class="pure-button dropdown-toggle" href="${loginUrl}" role="button" id="dropdown2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Members</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" id="MemberLinkSubMenu" href="${loginUrl}">Members</a>
                            <a class="dropdown-item" href="..${loginUrl}#connect">Connect</a>
                            <a class="dropdown-item" href="..${loginUrl}#share">Share</a>
                            <a  class="dropdown-item" href="${loginUrl}#grow">Grow</a>
                            <a class="dropdown-item" href="..${membershipUrl}">Membership</a>
                            <a class="dropdown-item" href="..${applyUrl}">Apply for Membership</a>
                            <a class="dropdown-item" href="..${membershipUrl}#FAQ">Frequently Asked Questions</a>
                        </div>
                    </li>

                    <li>
                        <a class=" pure-button" href="${partnersUrl}" role="button" aria-expanded="false">Government Partners</a>
                    </li>

                    <!--Updated About us nav dropdown items-->
                    <li class="dropdown">
                        <a class="pure-button dropdown-toggle" href="${aboutUrl}" role="button" id="dropdown3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">About Us</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" id="AboutLinkSubMenu" href="${aboutUrl}">About Us</a>
                            <a class="dropdown-item" href="..${aboutUrl}#History">Our History</a>
                            <a class="dropdown-item" href="..${aboutUrl}#Governance">Governace</a>
                            <a  class="dropdown-item" href="${leadership}">Leadership</a>
                            <a class="dropdown-item" href="..${aboutUrl}#HD">Historical Documents</a>
                            <a class="dropdown-item" href="..${aboutUrl}#Links">Links of Interest</a>
                            <a class="dropdown-item" href="..${aboutUrl}#Media">Sharable Media</a>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="socialMediaBlock" style=" display: block; position: absolute; right: 2% ;">
                <a href="https://www.facebook.com/fqed/" target="_blank"><img src="../img/facebook.png" width="24" height="24" hspace="2" /></a>
                <a href="http://twitter.com/fqed" target="_blank"><img src="../img/twitter.png"  width="24" height="24" hspace="2" /></a>
                <a href="https://www.linkedin.com/company/national-language-service-corps/" target="_blank"><img src="../img/linkedin.png"  width="24" height="24" hspace="2" /></a>
                <a href="https://www.youtube.com/user/fqed" target="_blank"><img src="../img/youtube.png"  width="24" height="24" hspace="2" /></a>
            </div>
        </div>
    </nav>
</div>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="membersUrl" value="${routes['Routes.Public.Members']}" />
<c:url var="membershipUrl" value="${routes['Routes.Public.Membership']}" />
<c:url var="contactUrl" value="${routes['Routes.Public.ContactUs']}" />
<c:url var="applyUrl" value="${routes['Routes.Public.Apply']}" />
<c:url var="partnersUrl" value="${routes['Routes.Public.Partners']}" />
<c:url var="aboutUrl" value="${routes['Routes.Public.About']}" />
<c:url var="login" value="${routes['Routes.Auth.Login.loginPage']}" />
<c:url var="leadership" value="${routes['Routes.Public.Leadership']}" />

<div class="modal fade" id="PrivacyStatement" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog" style="max-width: 1000px;" role="document">
        <div class="modal-content" style=" padding: 1em" >
            <div class="modal-header">
                <span class="modal-title" id="modalLabel">FQED Privacy Policy</span>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                    This web site is provided as a public service by the Ministry of Education (Networks
                    and Information Integration) and the Free Quality Education Dashboard program.
                </p>
                <p>
                    Information presented on this web site is considered public information and may
                    be distributed or copied unless otherwise specified. Use of appropriate byline/photo/image
                    credits is requested.
                </p>
                <p>
                    For site management, information is collected for statistical purposes. This government
                    computer system uses software programs to create summary statistics, which are used
                    for such purposes as assessing what information is of most and least interest, determining
                    technical design specifications, and identifying system performance or problem areas.
                </p>
                <p>
                    For site security purposes and to ensure that this service remains available to
                    all users, this government computer system employs software programs to monitor
                    network traffic to identify unauthorized attempts to upload or change information,
                    or otherwise cause damage.
                </p>
                <p>
                    Except for authorized law enforcement investigations, no other attempts are made
                    to identify individual users or their usage habits. Raw data logs are used for no
                    other purposes and are scheduled for regular destruction in accordance with National
                    Archives and Records Administration guidelines.
                </p>
                <p>
                    Unauthorized attempts to upload information or change information on this service
                    are strictly prohibited and may be punishable under the Computer Fraud and Abuse
                    Act of 1986 and the National Information Infrastructure Protection Act.
                </p>
                <p>
                    Cookie Disclaimer - FQED does not use persistent cookies (persistent tokens that
                    pass information back and forth from the client machine to the server). FQED may
                    use session cookies (tokens that remain active only until you close your browser)
                    in order to make the site easier to use. The FQED DOES NOT keep a database of information
                    obtained from these cookies.
                    Your browser or device may allow you to block or otherwise limit the use of cookies.
                    If you block cookies on our website, you may be unable to access certain areas of
                    our website and certain functions and pages will not work in the usual way.
                    It is the policy of the FQED that cookies do not carry any of your personal
                    information (name, email address, credit card, etc.) nor identification/password-type
                    data that allows access to such personal information on FQED servers. All personal,
                    transaction, and security rights are housed on secure FQED servers.
                </p>

            </div>
        </div>
    </div>
</div>

<div class="ribbon" id="footer">
<div class="footer-container">
    <div class="row">
        <!--<div class="col-md-1 col-sm-4 col-xs-12 col-lg-2">
      </div>-->
        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
            <h5><a href="${login}">Members</a></h5>
            <ul>
            <li><a href="${login}#connect">Connect</a></li>
            <li><a href="${login}#share">Share</a></li>
            <li><a href="${login}#grow">Grow</a></li>
            <li><a href="${membershipUrl}">Membership</a></li>
            <li><a href="${applyUrl}">Apply for Membership</a></li>
            <li><a href="${membershipUrl}#FAQ">FAQs</a></li>
            </ul>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
            <h5><a href="${partnersUrl}">Government Partners</a></h5>
            <ul>
                <li><a href="${partnersUrl}#FAQ">FAQs</a></li>
            </ul>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12">
            <h5><a href="${aboutUrl}">About Us</a></h5>
            <ul>
                <li><a href="${aboutUrl}#History">Our History</a></li>
                <li><a href="${aboutUrl}#Governance">Governance</a></li>
                <li><a href="${leadership}">Leadership</a>
                <li><a href="${aboutUrl}#HD">Historical Documents</a></li>
                <li><a href="${aboutUrl}#Links">Links of Interest</a></li>
            </ul>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12" style="flex: 0 0 17%">
            <h5><a href="${contactUrl}" target="_blank">Contact&nbsp;Us</a></h5>
            <ul>
                <li><a href="https://www.facebook.com/fqed/" target="_blank" ><img src="../img/facebook.png" width="20" height="20" hspace="4" vspace="2" />Facebook</a></li>
                <li><a href="https://www.linkedin.com/company/national-language-service-corps/" target="_blank"><img src="../img/linkedin.png"  width="20" height="20" hspace="4" vspace="2" />LinkedIn</a></li>
                <li><a href="https://twitter.com/fqed" target="_blank"><img src="../img/twitter.png" width="20" height="20" hspace="4" vspace="2"  />Twitter</a></li>
                <li><a href="https://www.youtube.com/user/fqed" target="_blank"><img src="../img/youtube.png" width="20" height="20" hspace="4" vspace="2"  />Youtube</a></li>
            </ul>
        </div>
    </div>
</div>
</div>

<script type="text/javascript">
 $(document).ready(function() {
 $(window).resize(function() {
   if ($(window).width() < 767) {
      // for mobile
      document.getElementById("footerLogoMobile").style.display = "none";
      document.getElementById("foot-extra-mobile").style.display = "inline-block";
     }else{
     document.getElementById("footerLogoMobile").style.display = "inline-block";
     document.getElementById("foot-extra-mobile").style.display = "none";
     }
     });
 });
</script>







<div id="footer-extras">
    <div class="col-md-12">

 <div id="foot-extra-mobile" style="display:none;">
  <span style="font-size: 1.5em; position:absolute;top: 0.2em;left: 0em; line-height: 1em;">
 <svg id="Layer_3" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="451" height="43.6" viewBox="0 0 451 43.6" style="vertical-align:top;" style="enable-background:new 0 0 313 63;" xml:space="preserve">


 <image class="Banner_Logo" xlink:href="../img/MinistryOfEducation-logo.jpg"/></image>
<h4><strong>FREE QUALITY EDUCATION DASHBOARD</strong></h4>
 </svg>
 </span>
<span class="FQED_copyright">
	&copy; 2019 FQED &nbsp;&nbsp;All rights reserved &nbsp;&nbsp;<a href="#" data-toggle="modal" data-target="#PrivacyStatement" >Privacy policy</a>
</span>
 </div>


<div id="footerLogoMobile" style="display:inline-block;">
          <svg id="Layer_1" style="vertical-align:top" xmlns="http://www.w3.org/2000/svg" width="63" height="63" viewBox="0 0 63 63">
                <circle class="cls-1" cx="31.59" cy="31.59" r="31.59"/>
                <image class="Banner_Logo" xlink:href="../img/MinistryOfEducation-logo.jpg"/></image>
           </svg>
            <span style="font-size: 1.5em; position:absolute;top: 0.2em;left: 3.5em; line-height: 1em;">
<h4><strong>FREE QUALITY EDUCATION DASHBOARD</strong></h4>

    </span>
            <span class="FQED_copyright">
				&copy; 2019 FQED &nbsp;&nbsp;All rights reserved &nbsp;&nbsp;<a href="#" data-toggle="modal" data-target="#PrivacyStatement" >Privacy policy</a>
			</span>
        </div>
    </div>
    <style>
      .FQED_copyright a {
        color: #990000;
      }

      .ribbon:before, .ribbon:after {
          content: '';
          position: absolute;
          border-style: solid;
          border-color: transparent;
          bottom: -7px;
      }
      .ribbon:before {
          border-width: 0 10px 7px 0;
          border-right-color: #26354b;
          left: 0;
      }
      .ribbon:after {
          border-width: 0 0 7px 10px;
          border-left-color: #26354b;
          right: 0;
      }
    </style>
</div>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119798757-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'UA-119798757-1');
</script>

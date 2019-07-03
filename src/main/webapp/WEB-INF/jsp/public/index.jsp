<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8"%>
<c:url var="membersUrl" value="${routes['Routes.Auth.Login.LoginPage']}"/>
<c:url var="membershipUrl" value="${routes['Routes.Public.Membership']}"/>
<c:url var="applyUrl" value="${routes['Routes.Public.Apply']}"/>
<c:url var="partnersUrl" value="${routes['Routes.Public.Partners']}"/>
<c:url var="aboutUrl" value="${routes['Routes.Public.About']}"/>
<c:url var="loginUrl" value="${routes['Routes.Auth.Login.LoginPage']}"/>

<!doctype html>
<html class="no-js" lang="en">
<head>
	<title>Free Quality Education Dashboard - FQED</title>
	<jsp:include page="header.jsp"/>
</head>

<body>
<div class="container">

	<div class="main-container">

  	<jsp:include page="banner.jsp"/>

  	<jsp:include page="navbar.jsp"/>

  	<div class="row">
	<!--Carousel Indicators-->
    	<div id="carousel-example-2" class="carousel slide carousel-fade" data-ride="carousel" data-interval="15000">
      	<ol class="carousel-indicators">
        	<li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
        	<li data-target="#carousel-example-2" data-slide-to="1"></li>
        	<li data-target="#carousel-example-2" data-slide-to="2"></li>
      	</ol>

		<!--Main carousel image and description content-->
		<div class="carousel-inner" role="listbox">
        	<div class="carousel-item active">
          	<div class="view">
							<span class="LandingTitle">Where Education makes a difference</span>
            	<div class="LandingBlurb d-none d-md-flex">
								The FQED initiative by our Government will no doubt increase
								educational outcomes; and human resource capital will be strengthened
								 to meet the growing social and technological revolution in a globalized world.
							</div>
            	<img class="d-block w-100" src="../img/fqed1.png" alt="Join Us">
						</div>
        	</div>
        	<div class="carousel-item">
          	<div class="view">
          		<span class="LandingTitle">Where Partners forge lasting connections</span>
            	<div class="LandingBlurb d-none d-md-flex">
								The FQED will have support from donor partners – including UK Aid, World Bank,
								Irish Aid, World Food Programme and UNICEF, the free education programme will
								be phased over five years and will waive the payment of tuition and admission fees.
							 </div>
            	<img class="d-block w-100" src="../img/fqed2.png" alt="Partners slide background image">
					</div>
      	    </div>
      	    <div class="carousel-item">
                  	<div class="view">
                  		<span class="LandingTitle LandingTitleWide">Where you can cultivate your skills</span>
                  		<!-- a href="members#grow"><p class="LandingSubtitle">Visit the <br>GROW section to learn more</p></a -->
                                 	<div class="LandingBlurb d-none d-md-flex">
        								This flagship initiative which was launched at the Miata Conference Hall in Freetown,
        								Monday, 20th August, is part of the new Government’s initiative, under the leadership of President
        								Julius Maada Bio. It will ensure increased access to government-assisted schools for all children from
        								pre-primary to senior secondary levels across the country.
                                     </div>
                    	<img class="d-block w-100" src="../img/fqed4.png" alt="Language Training Announcement background image">
        			</div>
              	</div>
      </div>
      <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
			<a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
    </div>
  </div>
	<!--Carousel content end-->

	<!--Join Us, Members, and Government Partners tab section-->
	<div class="row" style="background-color: #4e3421;">
		<a class="landing-button" href="/membership" role="button">Join Us<br><small>Become a Member</small></a>
		<a class="landing-button" style="background-color: #3191bc;" href="/members" role="button">Members<br><span style="font-size: .8em; font-weight:300; ">Connect, Grow, Share</span></a>
		<a class="landing-button" style="background-color: #bc7b55;" href="${partnersUrl}" role="button">Government Partners<br><span style="font-size: .8em; font-weight:300; ">Explore or Request Services</span></a>
	</div>



	<div class="row">
	<div class="col-md-4">
	<h4>Upcomming Events</h4> <br />
	<p>I am testing</p> <br />
	<p>I am testing</p>
	</div>
	<div class="col-md-4">
    	<h4>Latest news</h4>
    	</div>
    	<div class="col-md-4">
        	<h4>Quick Links</h4>

        	</div>
	</div>


	<jsp:include page="footer.jsp"/>
	</div>
</div>

<!--Scripts-->
<script>
	$(".facebook a").click(function (id) {
  	$(".facebook-share").attr("href", "https://www.facebook.com/sharer.php?u=" + "");
  });

  $('.carousel').on('slid.bs.carousel', function () {
  	$('#captionText').html($('.active > .carousel-caption').html());
  });
</script>
</body>


</html>

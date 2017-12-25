<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>DudeMob Games</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="DudeMob Html5 Games" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="<c:url value="/resources/admin/css/bootstrap.css" />" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="<c:url value="/resources/admin/css/style.css" />" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="<c:url value="/resources/admin/css/font-awesome.css" />" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="<c:url value="/resources/admin/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/admin/js/modernizr.custom.js" />"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="<c:url value="/resources/admin/css/animate.css" />" rel="stylesheet" type="text/css" media="all">
<script src="<c:url value="/resources/admin/js/wow.min.js" />"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- chart -->
<script src="<c:url value="/resources/admin/js/Chart.js" />"></script>
<!-- //chart -->
<!--Calender-->
<link rel="stylesheet" href="<c:url value="/resources/admin/css/clndr.css" />" type="text/css" />
<script src="<c:url value="/resources/admin/js/underscore-min.js" />" type="text/javascript"></script>
<script src= "<c:url value="/resources/admin/js/moment-2.2.1.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/admin/js/clndr.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/admin/js/site.js" />" type="text/javascript"></script>
<!--End Calender-->
<!-- Metis Menu -->
<script src="<c:url value="/resources/admin/js/metisMenu.min.js" />"></script>
<script src="<c:url value="/resources/admin/js/custom.js" />"></script>
<link href="<c:url value="/resources/admin/css/custom.css" />" rel="stylesheet">
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<jsp:include page="templates/sidemenu.jsp"  />
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<jsp:include page="templates/topleftheader.jsp" />
			</div>
			<div class="header-right">
				 
				<!--notifications of menu start --> 
				 <jsp:include page="templates/toprightheader.jsp" />
				 
				<!--notification menu end -->
				<div class="profile_details">		
					<jsp:include page="templates/profiledetails.jsp"/>
				</div>
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
			
			
			<div class="row">
						<h3 class="title1">Dil Girişi:</h3>
						<div class="form-three widget-shadow">
							<form class="form-horizontal"  autocomplete="off"  >
								<div class="form-group">
									<label for="diladi" class="col-sm-2 control-label">Dil Adı:</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" id="diladi" placeholder="">
									</div> 
								</div> 
								 <div class="form-group">
									<label for="selector1" class="col-sm-2 control-label">Kayıtlı Diller</label>
									<div class="col-sm-8">
									<select name="selector1" id="selector1" class="form-control1">
									<option  selected="selected"  >Dil Seçin...</option>
									<c:forEach var = "dil" items="${dilListesi}">
								        <option  value="<c:out value = "${dil.short_name}"/>"  ><c:out value = "${dil.name}"/></option>
								         
								      </c:forEach>
									</select></div>
								</div>   
								<div class="form-group">
									<div class="col-sm-2" ></div>
								    <div class="col-sm-4">
										 <button type="submit" class="btn btn-primary">Yeni</button>
									</div>
									<div class="col-sm-4">
										 <button type="submit" class="btn btn-success pull-right">Kaydet</button>
									</div>
								</div>
							</form>
						</div>
					</div>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			</div>
		</div>
		<!--footer-->
		<div class="footer">
		   <p>&copy; 2017 DudeMob Admin Panel. All Rights Reserved | Design by DudeMob Team</p>
		</div>
        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="<c:url value="/resources/admin/js/classie.js" />"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="<c:url value="/resources/admin/js/jquery.nicescroll.js" />"></script>
	<script src="<c:url value="/resources/admin/js/scripts.js" />"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="<c:url value="/resources/admin/js/bootstrap.js" />"> </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/a.png" alt=""> </span> 
									<div class="user-name">
										<p>Wikolia</p>
										<span>Administrator</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
								<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
								<li>
								<c:url value="/logout" var="logoutUrl" />
									<form id="logout" action="${logoutUrl}" method="post" >
									  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
									</form>
									<c:if test="${pageContext.request.userPrincipal.name != null}">
										<a href="javascript:document.getElementById('logout').submit()"><i class="fa fa-sign-out"></i>Logout</a>
									</c:if>
								</li>
							</ul>
						</li>
					</ul>
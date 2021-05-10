<%@page import="com.hau.ketnguyen.util.SessionUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ page import="com.hau.ketnguyen.util.SecurityUtils"%>
<nav
	class="navbar navbar-expand-md navbar-light fixed-top scrolling-navbar">
	<div class="container-fluid">

		<!-- Brand -->
		<a class="navbar-brand" href="#"> Ocus </a>

		<!-- Collapse button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#basicExampleNav" aria-controls="basicExampleNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Links -->
		<div class="collapse navbar-collapse" id="basicExampleNav">
			<security:authorize access="isAuthenticated()">
				<ul class="navbar-nav justify-content-center"
					style="margin-left: 50px;">
					<li class="nav-item"><a
						href="<c:url value='/trang-chu?page=1&limit=6'/>"
						class="nav-link waves-effect"> Home </a></li>

					<li class="nav-item"><a href="#!"
						class="nav-link waves-effect"> Shop</a></li>

					<li class="nav-item"><a href="#!"
						class="nav-link waves-effect"> Features</a></li>

					<li class="nav-item"><a href="#!"
						class="nav-link waves-effect"> Blog</a></li>

					<li class="nav-item"><a href="#!"
						class="nav-link waves-effect"> About</a></li>
				</ul>
			</security:authorize>

			<!-- Right -->
			<ul class="navbar-nav ml-auto">
				<security:authorize access="isAuthenticated()">
					<li class="nav-item"><a href="<c:url value='/cart'/>"
						class="nav-link navbar-link-2 waves-effect">
							<div class="cart">
								<input id="cartNumber" type="hidden" value="<%= SessionUtils.getInstance().getValue(request, "cartNumber") %>">
								<i class="fa fa-shopping-cart" aria-hidden="true"></i>
							</div>
					</a></li>

					<li class="nav-item"><a style="margin-right: 10px;" href="#"
						class="nav-link waves-effect">
							<div class="favorit-items">
								<i class="fa fa-heart"></i>
							</div>
					</a></li>

					<li class="nav-item"><a href="#"
						class="nav-link navbar-link-2 waves-effect">
							<div class="user" style="position: relative; display: flex;">
								<i class="fa fa-user" aria-hidden="true"
									style="width: 40px; height: 40px; line-height: 40px; text-align: center; border-radius: 50%; border: 1px solid #eeeeee; color: #4e4e4e; font-size: 16px; cursor: pointer;"></i>
								<p class="username"
									style="margin: 9px 0 9px 9px !important; text-transform: capitalize;"><%=SecurityUtils.getPrincipal().getFullName()%></p>
							</div>
					</a></li>

					<li class="nav-item"><a href="<c:url value="/exit"/>"
						class="nav-link navbar-link-2 waves-effect">
							<div class="user" style="position: relative;">
								<i class="fa fa-sign-out" aria-hidden="true"
									style="width: 40px; height: 40px; line-height: 40px; text-align: center; border-radius: 50%; border: 1px solid #eeeeee; color: #4e4e4e; font-size: 16px; cursor: pointer;"></i>
							</div>
					</a></li>
				</security:authorize>

				<security:authorize access="isAnonymous()">
					<li class="nav-item pl-2 mb-2 mb-md-0"><a
						href="<c:url value='/login'/>" type="button"
						style="border-radius: 10rem;"
						class="btn btn-outline-info btn-md btn-rounded btn-navbar waves-effect waves-light">Sign
							in</a></li>
					<li class="nav-item pl-2 mb-2 mb-md-0"><a
						href="<c:url value='/register'/>" type="button"
						class="btn-rounded btn btn-outline-info btn-md btn-navbar waves-effect waves-light">Sign
							up</a></li>
				</security:authorize>
			</ul>

		</div>
		<!-- Links -->
	</div>
</nav>
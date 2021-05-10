<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<div class="container">
	<div class="row">
		<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
			<div class="card card-signin mb-5">
				<div class="card-body">
					<h5 class="card-title text-center" style="font-weight: bold;">Register</h5>
					<p>${confirm}</p>
					<p>${success}</p>
					<form:form cssClass="form-signin" method="post"
						modelAttribute="userForm">
						<p style="color: red; margin-bottom: 10px; font-size: 15px;">${acc_exist}</p>
						<form:label path="username">Username:</form:label>
						<div class="form-label-group">
							<form:input path="username" cssClass="form-control" />
							<form:errors path="username"></form:errors>
						</div>

						<form:label path="fullname">Fullname:</form:label>
						<div class="form-label-group">
							<form:input path="fullname" cssClass="form-control" />
							<form:errors path="fullname"></form:errors>
						</div>

						<form:label path="email">Email:</form:label>
						<div class="form-label-group">
							<form:input path="email" cssClass="form-control" />
							<form:errors path="email"></form:errors>
						</div>

						<form:label path="password">Password:</form:label>
						<div class="form-label-group">
							<form:password path="password" cssClass="form-control" />
							<form:errors path="password"></form:errors>
							<p>${failPass}</p>
						</div>

						<form:label path="confirmPassword">Confirm Password:</form:label>
						<div class="form-label-group">
							<form:password path="confirmPassword" cssClass="form-control" />
							<form:errors path="confirmPassword"></form:errors>
							<p>${failPass}</p>
						</div>

						<button class="btn btn-lg btn-primary btn-block text-uppercase"
							type="submit">Register</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
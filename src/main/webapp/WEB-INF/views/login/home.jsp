<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
				<c:if test="${param.incorrectAccount != null}">
					<div class="alert alert-danger">Username or password
						incorrect</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger">you not authorize</div>
				</c:if>
				<div class="card card-signin mb-5">
					<div class="card-body">
						<h5 class="card-title text-center" style="font-weight: bold;">Sign
							In</h5>
						<form class="formLogin" action="j_spring_security_login"
							method="post">
							<div class="form-label-group">
								<input type="text" id="username" name="j_username"
									class="form-control" placeholder="username" required autofocus>
								<label for="username">Username</label>
							</div>

							<div class="form-label-group">
								<input type="password" id="inputPassword" name="j_password"
									class="form-control" placeholder="Password" required> <label
									for="inputPassword">Password</label>
							</div>

							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" name="remember-me"
									class="custom-control-input" id="customCheck1"> <label
									class="custom-control-label"
									style="font-size: 14px; color: #393e44;" for="customCheck1">Remember
									password</label>
							</div>
							<button class="btn btn-lg btn-primary btn-block text-uppercase"
								style="font-size: 80%; border-radius: 5rem; letter-spacing: .1rem; font-weight: bold; padding: 1rem; transition: all 0.2s;"
								type="submit">Sign in</button>
							<hr class="my-4">
							<button class="btn btn-lg btn-google btn-block text-uppercase"
								style="font-size: 80%; border-radius: 5rem; letter-spacing: .1rem; font-weight: bold; padding: 1rem; transition: all 0.2s;"
								type="submit">
								<i class="fa fa-google mr-2"></i> Sign in with Google
							</button>
							<button class="btn btn-lg btn-facebook btn-block text-uppercase"
								style="font-size: 80%; border-radius: 5rem; letter-spacing: .1rem; font-weight: bold; padding: 1rem; transition: all 0.2s;"
								type="submit">
								<i class="fa fa-facebook-f mr-2"></i> Sign in with Facebook
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
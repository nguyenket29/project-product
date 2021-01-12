<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<div class="card card-signin mb-5">
					<div class="card-body">
						<h5 class="card-title text-center" style="font-weight: bold;">Register</h5>
						<form class="form-signin">
							<div class="form-label-group">
								<input type="text" id="inputUserame" class="form-control"
									placeholder="Username" required autofocus> <label
									for="inputUserame">Username</label>
							</div>

							<div class="form-label-group">
								<input type="email" id="inputEmail" class="form-control"
									placeholder="Email address" required> <label
									for="inputEmail">Email address</label>
							</div>

							<div class="form-label-group">
								<input type="password" id="inputPassword" class="form-control"
									placeholder="Password" required> <label
									for="inputPassword">Password</label>
							</div>

							<div class="form-label-group">
								<input type="password" id="inputConfirmPassword"
									class="form-control" placeholder="Password" required> <label
									for="inputConfirmPassword">Confirm password</label>
							</div>

							<button class="btn btn-lg btn-primary btn-block text-uppercase"
								type="submit">Register</button>
							<a class="d-block text-center mt-2 small" href="#">Sign In</a>
							<hr class="my-4">
							<button class="btn btn-lg btn-google btn-block text-uppercase"
								type="submit">
								<i class="fab fa-google mr-2"></i> Sign up with Google
							</button>
							<button class="btn btn-lg btn-facebook btn-block text-uppercase"
								type="submit">
								<i class="fab fa-facebook-f mr-2"></i> Sign up with Facebook
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
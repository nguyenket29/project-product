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
						<h5 class="card-title text-center" style="font-weight: bold;">Sign In</h5>
						<form class="form-signin">
							<div class="form-label-group">
								<input type="text" id="username" class="form-control"
									placeholder="username" required autofocus> <label
									for="username">Email address</label>
							</div>

							<div class="form-label-group">
								<input type="password" id="inputPassword" class="form-control"
									placeholder="Password" required> <label
									for="inputPassword">Password</label>
							</div>

							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input"
									id="customCheck1"> <label class="custom-control-label"
									for="customCheck1">Remember password</label>
							</div>
							<button class="btn btn-lg btn-primary btn-block text-uppercase"
								type="submit">Sign in</button>
							<hr class="my-4">
							<button class="btn btn-lg btn-google btn-block text-uppercase"
								type="submit">
								<i class="fa fa-google mr-2"></i> Sign in with Google
							</button>
							<button class="btn btn-lg btn-facebook btn-block text-uppercase"
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
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

		<!-- section -->
		<section class="mb-5">

			<div class="row">
				<div class="col-md-6 mb-4 mb-md-0">
					<img class="img-fluid"
						src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14a.jpg" />
				</div>
				<div class="col-md-6">

					<h5>Blue denim shirt</h5>
					<p class="mb-2 text-muted text-uppercase small">Shirts</p>
					<ul class="rating">
						<li><i class="fas fa-star fa-sm text-primary"></i></li>
						<li><i class="fas fa-star fa-sm text-primary"></i></li>
						<li><i class="fas fa-star fa-sm text-primary"></i></li>
						<li><i class="fas fa-star fa-sm text-primary"></i></li>
						<li><i class="far fa-star fa-sm text-primary"></i></li>
					</ul>
					<p>
						<span class="mr-1"><strong>$17.99</strong></span>
					</p>
					<p class="pt-1">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Numquam, sapiente illo. Sit error voluptas
						repellat rerum quidem, soluta enim perferendis voluptates
						laboriosam. Distinctio, officia quis dolore quos sapiente tempore
						alias.</p>
					<div class="table-responsive">
						<table class="table table-sm table-borderless mb-0">
							<tbody>
								<tr>
									<th class="pl-0 w-25" scope="row"><strong>Model</strong></th>
									<td>Shirt 5407X</td>
								</tr>
								<tr>
									<th class="pl-0 w-25" scope="row"><strong>Color</strong></th>
									<td>Blue</td>
								</tr>
								<tr>
									<th class="pl-0 w-25" scope="row"><strong>Delivery</strong></th>
									<td>USA, Europe</td>
								</tr>
							</tbody>
						</table>
					</div>
					<hr>
					<div class="table-responsive mb-2">
						<table class="table table-sm table-borderless">
							<tbody>
								<tr>
									<td class="pl-0 pb-0 w-25">Quantity</td>
									<td class="pb-0">Select size</td>
								</tr>
								<tr>
									<td class="pl-0">
										<div class="def-number-input number-input safari_only mb-0">
											<button
												onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
												class="minus">
												<i class="fa fa-minus" aria-hidden="true"></i>
											</button>
											<input class="quantity" min="0" name="quantity" value="1"
												type="number">
											<button
												onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
												class="plus">
												<i class="fa fa-plus" aria-hidden="true"></i>
											</button>
										</div>
									</td>
									<td>
										<div class="mt-1">
											<div class="form-check form-check-inline pl-0">
												<input type="radio" class="form-check-input" id="small"
													name="materialExampleRadios" checked=""> <label
													class="form-check-label small text-uppercase card-link-secondary"
													for="small">Small</label>
											</div>
											<div class="form-check form-check-inline pl-0">
												<input type="radio" class="form-check-input" id="medium"
													name="materialExampleRadios"> <label
													class="form-check-label small text-uppercase card-link-secondary"
													for="medium">Medium</label>
											</div>
											<div class="form-check form-check-inline pl-0">
												<input type="radio" class="form-check-input" id="large"
													name="materialExampleRadios"> <label
													class="form-check-label small text-uppercase card-link-secondary"
													for="large">Large</label>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<button type="button"
						class="btn btn-primary btn-md mr-1 mb-2 waves-effect waves-light" style="font-size: 15px;">Buy
						now</button>
					<button type="button"
						class="btn btn-light btn-md mr-1 mb-2 waves-effect waves-light" style="font-size: 15px;">
						<i class="fas fa-shopping-cart pr-2"></i>Add to cart
					</button>
				</div>
			</div>

		</section>
		
		<hr/>
		
		<!-- relates -->
		<section class="text-center">

			<h4 class="text-center my-5">
				<strong>Related products</strong>
			</h4>

			<!-- Grid row -->
			<div class="row">

				<!-- Grid column -->
				<div class="col-md-6 col-lg-3 mb-5">

					<!-- Card -->
					<div class="">

						<div class="view zoom overlay z-depth-2 rounded">
							<img class="img-fluid w-100"
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12a.jpg"
								alt="Sample"> <a href="#!">
								<div class="mask waves-effect waves-light">
									<img class="img-fluid w-100"
										src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg">
									<div class="mask rgba-black-slight waves-effect waves-light"></div>
								</div>
							</a>
						</div>

						<div class="pt-4">

							<h5>Blue denim shirt</h5>
							<p>
								<span><strong>$17.99</strong></span>
							</p>

						</div>

					</div>
					<!-- Card -->

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-6 col-lg-3 mb-5">

					<!-- Card -->
					<div class="">

						<div class="view zoom overlay z-depth-2 rounded">
							<img class="img-fluid w-100"
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13a.jpg"
								alt="Sample"> <a href="#!">
								<div class="mask waves-effect waves-light">
									<img class="img-fluid w-100"
										src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/13.jpg">
									<div class="mask rgba-black-slight waves-effect waves-light"></div>
								</div>
							</a>
						</div>

						<div class="pt-4">

							<h5>Red hoodie</h5>
							<p>
								<span><strong>$35.99</strong></span>
							</p>

						</div>

					</div>
					<!-- Card -->

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-6 col-lg-3 mb-5">

					<!-- Card -->
					<div class="">

						<div class="view zoom overlay z-depth-2 rounded">
							<img class="img-fluid w-100"
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14a.jpg"
								alt="Sample">
							<h4 class="mb-0">
								<span class="badge badge-primary badge-pill badge-news">Sale</span>
							</h4>
							<a href="#!">
								<div class="mask waves-effect waves-light">
									<img class="img-fluid w-100"
										src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14.jpg">
									<div class="mask rgba-black-slight waves-effect waves-light"></div>
								</div>
							</a>
						</div>

						<div class="pt-4">

							<h5>Grey sweater</h5>
							<p>
								<span class="text-danger mr-1"><strong>$21.99</strong></span><span
									class="text-grey"><strong><s>$36.99</s></strong></span>
							</p>

						</div>

					</div>
					<!-- Card -->

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-6 col-lg-3 mb-5">

					<!-- Card -->
					<div class="">

						<div class="view zoom overlay z-depth-2 rounded">
							<img class="img-fluid w-100"
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/15a.jpg"
								alt="Sample"> <a href="#!">
								<div class="mask waves-effect waves-light">
									<img class="img-fluid w-100"
										src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14.jpg">
									<div class="mask rgba-black-slight waves-effect waves-light"></div>
								</div>
							</a>
						</div>

						<div class="pt-4">

							<h5>Black denim jacket</h5>
							<p>
								<strong>$99.99</strong>
							</p>

						</div>

					</div>
					<!-- Card -->

				</div>
				<!-- Grid column -->

			</div>
			<!-- Grid row -->

		</section>
	</div>
</body>
</html>
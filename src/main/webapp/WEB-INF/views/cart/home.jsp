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

		<!--Section: Block Content-->
		<section class="mb-4">

			<!--Grid row-->
			<div class="row">

				<!--Grid column-->
				<div class="col-lg-8">

					<!-- Card -->
					<div class="card wish-list mb-4">
						<div class="card-body">

							<h5 class="mb-4">
								Cart (<span>2</span> items)
							</h5>

							<div class="row mb-4">
								<div class="col-md-5 col-lg-3 col-xl-3">
									<div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
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
								</div>
								<div class="col-md-7 col-lg-9 col-xl-9">
									<div>
										<div class="d-flex justify-content-between">
											<div>
												<h5>Blue denim shirt</h5>
												<p class="mb-3 text-muted text-uppercase small">Shirt -
													blue</p>
												<p class="mb-2 text-muted text-uppercase small">Color:
													blue</p>
												<p class="mb-3 text-muted text-uppercase small">Size: M</p>
											</div>
											<div>
												<div
													class="def-number-input number-input safari_only mb-0 w-100">
													<button
														onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
														class="minus">
														<i class="fa fa-minus"></i>
													</button>
													<input class="quantity" min="0" name="quantity" value="1"
														type="number">
													<button
														onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
														class="plus">
														<i class="fa fa-plus"></i>
													</button>
												</div>
												<small id="passwordHelpBlock"
													class="form-text text-muted text-center"> (Note, 1
													piece) </small>
											</div>
										</div>
										<div class="d-flex justify-content-between align-items-center">
											<div>
												<a href="#!" type="button"
													class="card-link-secondary small text-uppercase mr-3"><i
													class="fa fa-trash mr-1" aria-hidden="true"></i> Remove
													item </a> <a href="#!" type="button"
													class="card-link-secondary small text-uppercase"><i
													class="fa fa-heart mr-1"></i> Move to wish list </a>
											</div>
											<p class="mb-0">
												<span><strong>$17.99</strong></span>
											</p>
										</div>
									</div>
								</div>
							</div>
							<hr class="mb-4">
							<div class="row mb-4">
								<div class="col-md-5 col-lg-3 col-xl-3">
									<div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
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
								</div>
								<div class="col-md-7 col-lg-9 col-xl-9">
									<div>
										<div class="d-flex justify-content-between">
											<div>
												<h5>Red hoodie</h5>
												<p class="mb-3 text-muted text-uppercase small">Hoodie -
													red</p>
												<p class="mb-2 text-muted text-uppercase small">Color:
													red</p>
												<p class="mb-3 text-muted text-uppercase small">Size: M</p>
											</div>
											<div>
												<div
													class="def-number-input number-input safari_only mb-0 w-100">
													<button
														onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
														class="minus">
														<i class="fa fa-minus"></i>
													</button>
													<input class="quantity" min="0" name="quantity" value="1"
														type="number">
													<button
														onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
														class="plus">
														<i class="fa fa-plus"></i>
													</button>
												</div>
											</div>
										</div>
										<div class="d-flex justify-content-between align-items-center">
											<div>
												<a href="#!" type="button"
													class="card-link-secondary small text-uppercase mr-3"><i
													class="fa fa-trash mr-1" aria-hidden="true"></i> Remove
													item </a> <a href="#!" type="button"
													class="card-link-secondary small text-uppercase"><i
													class="fa fa-heart mr-1"></i> Move to wish list </a>
											</div>
											<p class="mb-0">
												<span><strong>$35.99</strong></span>
											</p>
										</div>
									</div>
								</div>
							</div>
							<p class="text-primary mb-0">
								<i class="fa fa-info-circle" aria-hidden="true"></i> Do not
								delay the purchase, adding items to your cart does not mean
								booking them.
							</p>

						</div>
					</div>
					<!-- Card -->

					<!-- Card -->
					<div class="card mb-4">
						<div class="card-body">

							<h5 class="mb-4">We accept</h5>

							<img class="mr-2" width="45px"
								src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
								alt="Visa"> <img class="mr-2" width="45px"
								src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg"
								alt="American Express"> <img class="mr-2" width="45px"
								src="https://mdbootstrap.com/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
								alt="Mastercard"> <img
								src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-200px.png"
								class="mr-2" width="80px" border="0" alt="PayPal Logo"> Paypal acceptant mask
						</div>
					</div>
					<!-- Card -->

				</div>
				<!--Grid column-->

				<!--Grid column-->
				<div class="col-lg-4">

					<!-- Card -->
					<div class="card mb-4">
						<div class="card-body">

							<h5 class="mb-3">The total amount of</h5>

							<ul class="list-group list-group-flush">
								<li
									class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
									Temporary amount <span>$53.98</span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center px-0">
									Shipping <span>Gratis</span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
									<div>
										<strong>The total amount of</strong> <strong>
											<p class="mb-0">(including VAT)</p>
										</strong>
									</div> <span><strong>$53.98</strong></span>
								</li>
							</ul>

							<button type="button"
								class="btn btn-primary btn-block waves-effect waves-light text-uppercase">go
								to checkout</button>

						</div>
					</div>
					<!-- Card -->

					<!-- Card -->
					<div class="card mb-4">
						<div class="card-body">

							<a class="dark-grey-text d-flex justify-content-between"
								data-toggle="collapse" href="#collapseExample"
								aria-expanded="false" aria-controls="collapseExample"> Add a
								discount code (optional) <span><i
									class="fa fa-angle-down" aria-hidden="true"></i></span>
							</a>

							<div class="collapse" id="collapseExample">
								<div class="mt-3">
									<div class="md-form md-outline mb-0">
										<input type="text" id="discount-code"
											class="form-control font-weight-light"
											placeholder="Enter discount code">
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Card -->

				</div>
				<!--Grid column-->

			</div>
			<!--Grid row-->

		</section>
		<!--Section: Block Content-->

	</div>
</body>
</html>
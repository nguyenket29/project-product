<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
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
							Cart (<span>${sessionScope.cartNumber}</span> items)
						</h5>
						<c:forEach items="${sessionScope.cartItems}" var="item">
							<div class="row mb-4">
								<div class="col-md-5 col-lg-3 col-xl-3">
									<div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
										<img class="img-fluid w-100"
											style="width: 150px; height: 174px;"
											src="<c:url value="/template/images/${item.value.productDTO.thumbnail}"/>"
											alt="Sample"> <a href="#!">
											<div class="mask waves-effect waves-light">
												<img class="img-fluid w-100"
													style="width: 150px; height: 174px;"
													src="<c:url value="/template/images/${item.value.productDTO.thumbnail}"/>">
												<div class="mask rgba-black-slight waves-effect waves-light"></div>
											</div>
										</a>
									</div>
								</div>
								<div class="col-md-7 col-lg-9 col-xl-9">
									<div>
										<div class="d-flex justify-content-between">
											<div>
												<h5>${item.value.productDTO.name}</h5>
												<p class="mb-3 text-muted text-uppercase small">Shirt -
													blue</p>
												<p class="mb-2 text-muted text-uppercase small">Color:
													blue</p>
												<p class="mb-3 text-muted text-uppercase small">Size: M</p>
											</div>
											<div>
												<div
													class="def-number-input number-input safari_only mb-0 w-100">
													<a class="cart_quantity_up"
														style="padding: 0 11px; font-size: 20px;"
														href="<c:url value="/cart/plus/id=${item.value.productDTO.id}/qty=${item.value.productDTO.quantity}"/>">
														- </a> <input class="quantity" min="0" id="quantity"
														name="quantity" value="${item.value.productDTO.quantity}"
														type="number"> <a class="cart_quantity_down"
														style="padding: 0 11px; font-size: 20px;"
														href="<c:url value="/cart/sub/id=${item.value.productDTO.id}/qty=${item.value.productDTO.quantity}"/>">
														+ </a>
												</div>
												<small id="passwordHelpBlock"
													class="form-text text-muted text-center"> (Note, 1
													piece) </small>
											</div>
										</div>
										<div class="d-flex justify-content-between align-items-center">
											<div>
												<a
													href="<c:url value="/cart/remove/id=${item.value.productDTO.id}/qty=${item.value.productDTO.quantity}"/>"
													type="button"
													class="card-link-secondary small text-uppercase mr-3"><i
													class="fa fa-trash mr-1" aria-hidden="true"></i> Remove
													item </a> <a href="#!" type="button"
													class="card-link-secondary small text-uppercase"><i
													class="fa fa-heart mr-1"></i> Move to wish list </a>
											</div>
											<p class="mb-0">
												<span><strong>$
														${item.value.productDTO.price}</strong></span>
											</p>
										</div>
									</div>
								</div>
							</div>
							<hr class="mb-4">
						</c:forEach>
						<p class="text-primary mb-0" style="font-size: 15px;">
							<i class="fa fa-info-circle" aria-hidden="true"></i> Do not delay
							the purchase, adding items to your cart does not mean booking
							them.
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
							class="mr-2" width="80px" border="0" alt="PayPal Logo">
						Paypal acceptant mask
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
								Temporary amount <span>$ ${sessionScope.cartTotal}</span>
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
								</div> <span><strong>$ ${sessionScope.cartTotal}</strong></span>
							</li>
						</ul>

						<a href="<c:url value="/checkout"/>"
							style="background: darkgrey; color: #3b323c; border: none;"
							class="btn btn-primary btn-block waves-effect waves-light text-uppercase">go
							to checkout</a>

					</div>
				</div>
				<!-- Card -->

				<!-- Card -->
				<div class="card mb-4">
					<div class="card-body">

						<a class="dark-grey-text d-flex justify-content-between"
							data-toggle="collapse" href="#collapseExample"
							aria-expanded="false" aria-controls="collapseExample"> Add a
							discount code (optional) <span><i class="fa fa-angle-down"
								aria-hidden="true"></i></span>
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
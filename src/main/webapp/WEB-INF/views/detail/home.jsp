<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<div class="container">

	<!-- section -->
	<section class="mb-5">
		<div class="row">
			<div class="col-md-6 mb-4 mb-md-0">
				<img class="img-fluid" style="width: 540px; height: 625px;"
					src="<c:url value="/template/images/${productID.thumbnail}"/>" />
			</div>
			<div class="col-md-6">

				<h5>${productID.name}</h5>
				<p class="mb-2 text-muted text-uppercase small">Shirts</p>
				<ul class="rating">
					<li><i class="fa fa-star" aria-hidden="true"></i></li>
					<li><i class="fa fa-star" aria-hidden="true"></i></li>
					<li><i class="fa fa-star" aria-hidden="true"></i></li>
					<li><i class="fa fa-star" aria-hidden="true"></i></li>
					<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
				</ul>
				<p>
					<span class="mr-1"><strong>$ ${productID.price}</strong></span>
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
									<div
										class="def-number-input number-input safari_only mb-0 w-100">
										<a class="cart_quantity_up"
											style="padding: 0 11px; font-size: 20px;"
											href="<c:url value="/detail/plus/id=${productID.id}/qty=${productID.quantity}"/>">
											- </a> <input class="quantity" min="0" id="quantity"
											name="quantity" value="${productID.quantity}" type="number">
										<a class="cart_quantity_down"
											href="<c:url value="/detail/sub/id=${productID.id}/qty=${productID.quantity}"/>">
											+ </a>
									</div>
								</td>
								<td>
									<div class="mt-1">
										<div class="form-check form-check-inline pl-0">
											<input type="radio" class="form-check-input" id="small"
												name="materialExampleRadios" checked> <label
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
				<a href="<c:url value="/checkout/product_id=${productID.id}"/>"
					style="color: #fff; font-size: 12px;"
					class="btn btn-primary btn-sm mr-1 mb-2 waves-effect waves-light">
					<i class="fa fa-shopping-cart pr-2"></i>By Now
				</a> <a
					href="<c:url value="/cart/add/id=${productID.id}/qty=${productID.quantity}"/>"
					style="color: #222; font-size: 12px;"
					class="btn btn-light btn-sm mr-1 mb-2 waves-effect waves-light">
					<i class="fa fa-shopping-cart pr-2"></i>Add to cart
				</a>
			</div>
		</div>
	</section>

	<hr />

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
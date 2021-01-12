<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<title>Trang chủ</title>

</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Category</a></li>
						<li class="breadcrumb-item active" aria-current="page">Sub-category</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-12 col-sm-3">
				<div class="panel-group category-products" id="accordian">
					<!--category-productsr-->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordian"
									href="#sportswear" class="collapsed"> <span
									class="badge pull-right"><i class="fa fa-plus"></i></span>
									Sportswear
								</a>
							</h4>
						</div>
						<div id="sportswear" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									<li><a href="#">Nike </a></li>
									<li><a href="#">Under Armour </a></li>
									<li><a href="#">Adidas </a></li>
									<li><a href="#">Puma</a></li>
									<li><a href="#">ASICS </a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordian" href="#mens"
									class="collapsed"> <span class="badge pull-right"><i
										class="fa fa-plus"></i></span> Mens
								</a>
							</h4>
						</div>
						<div id="mens" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									<li><a href="#">Fendi</a></li>
									<li><a href="#">Guess</a></li>
									<li><a href="#">Valentino</a></li>
									<li><a href="#">Dior</a></li>
									<li><a href="#">Versace</a></li>
									<li><a href="#">Armani</a></li>
									<li><a href="#">Prada</a></li>
									<li><a href="#">Dolce and Gabbana</a></li>
									<li><a href="#">Chanel</a></li>
									<li><a href="#">Gucci</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordian"
									href="#womens" class="collapsed"> <span
									class="badge pull-right"><i class="fa fa-plus"></i></span>
									Womens
								</a>
							</h4>
						</div>
						<div id="womens" class="panel-collapse collapse"
							style="height: 0px;">
							<div class="panel-body">
								<ul>
									<li><a href="#">Fendi</a></li>
									<li><a href="#">Guess</a></li>
									<li><a href="#">Valentino</a></li>
									<li><a href="#">Dior</a></li>
									<li><a href="#">Versace</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Kids</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Fashion</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Households</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Interiors</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Clothing</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Bags</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Shoes</a>
							</h4>
						</div>
					</div>
				</div>

				<div class="card bg-light mb-3">
					<div class="card-header bg-success text-white text-uppercase">Last
						product</div>
					<div class="card-body">
						<img class="img-fluid"
							src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/14a.jpg" />
						<h5 class="card-title">Product title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<p class="bloc_left_price">99.00 $</p>
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-9">
				<div class="row mb-3">
					<div class="col-md-6">
						<ul id="pagination" class="pagination"></ul>
					</div>

					<div class="col-md-6">
						<div
							class="md-form md-outline mt-0 d-flex justify-content-between align-items-center">
							<input type="text" id="search12" class="form-control mb-0"
								placeholder="Search..." style="font-size: 12px; outline: none;"> <a href="#!"
								class="btn-flat btn-md px-3 waves-effect"><i
								class="fa fa-search"></i></a>
						</div>
					</div>
				</div>

				<div class="row" id="products">

					<div class="col-md-4 mb-5">
						<div>
							<div class="view zoom overlay rounded z-depth-2"
								style="height: 260px;">
								<img class="img-fluid w-100"
									src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg"
									alt="Sample"> <a href="#!">
									<div class="mask">
										<img class="img-fluid w-100"
											src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg">
										<div class="mask rgba-black-slight"></div>
									</div>
								</a>
							</div>
							<div class="text-center pt-4">
								<h5>Fantasy T-shirt</h5>
								<p>
									<span class="mr-1"><strong>$12.99</strong></span>
								</p>
								<button type="button" class="btn btn-primary btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-shopping-cart pr-2"></i>Add to cart</button>
								<button type="button" class="btn btn-light btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-info-circle pr-2"></i>Details</button>
							</div>
						</div>
					</div>

					<div class="col-md-4 mb-5">
						<div>
							<div class="view zoom overlay rounded z-depth-2"
								style="height: 260px;">
								<img class="img-fluid w-100"
									src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/10.jpg"
									alt="Sample"> <a href="#!">
									<div class="mask">
										<img class="img-fluid w-100"
											src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/10.jpg">
										<div class="mask rgba-black-slight"></div>
									</div>
								</a>
							</div>
							<div class="text-center pt-4">
								<h5>Boyfriend jeans</h5>
								<p>
									<span class="mr-1"><strong>$20.99</strong></span>
								</p>
								<button type="button" class="btn btn-primary btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-shopping-cart pr-2"></i>Add to cart</button>
								<button type="button" class="btn btn-light btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-info-circle pr-2"></i>Details</button>
							</div>
						</div>
					</div>

					<div class="col-md-4 mb-5">
						<div>
							<div class="view zoom overlay rounded z-depth-2"
								style="height: 260px;">
								<img class="img-fluid w-100"
									src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/7.jpg"
									alt="Sample"> <a href="#!">
									<div class="mask">
										<img class="img-fluid w-100"
											src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/7.jpg">
										<div class="mask rgba-black-slight"></div>
									</div>
								</a>
							</div>
							<div class="text-center pt-4">
								<h5>Ripped sweatshirt</h5>
								<p>
									<span class="mr-1"><strong>$29.99</strong></span>
								</p>
								<button type="button" class="btn btn-primary btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-shopping-cart pr-2"></i>Add to cart</button>
								<button type="button" class="btn btn-light btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-info-circle pr-2"></i>Details</button>
							</div>
						</div>
					</div>

					<div class="col-md-4 mb-5">
						<div>
							<div class="view zoom overlay rounded z-depth-2"
								style="height: 260px;">
								<img class="img-fluid w-100"
									src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/8.jpg"
									alt="Sample"> <a href="#!">
									<div class="mask">
										<img class="img-fluid w-100"
											src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/8.jpg">
										<div class="mask rgba-black-slight"></div>
									</div>
								</a>
							</div>
							<div class="text-center pt-4">
								<h5>Longsleeve</h5>
								<p>
									<span class="mr-1"><strong>$120.99</strong></span>
								</p>
								<button type="button" class="btn btn-primary btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-shopping-cart pr-2"></i>Add to cart</button>
								<button type="button" class="btn btn-light btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-info-circle pr-2"></i>Details</button>
							</div>
						</div>
					</div>

					<div class="col-md-4 mb-5">
						<div>
							<div class="view zoom overlay rounded z-depth-2"
								style="height: 260px;">
								<img class="img-fluid w-100"
									src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/6.jpg"
									alt="Sample"> <a href="#!">
									<div class="mask">
										<img class="img-fluid w-100"
											src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/6.jpg">
										<div class="mask rgba-black-slight"></div>
									</div>
								</a>
							</div>
							<div class="text-center pt-4">
								<h5>Stripped sweatshirt</h5>
								<p>
									<span class="mr-1"><strong>$32.99</strong></span>
								</p>
								<button type="button" class="btn btn-primary btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-shopping-cart pr-2"></i>Add to cart</button>
								<button type="button" class="btn btn-light btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-info-circle pr-2"></i>Details</button>
							</div>
						</div>
					</div>

					<div class="col-md-4 mb-5">
						<div>
							<div class="view zoom overlay rounded z-depth-2"
								style="height: 260px;">
								<img class="img-fluid w-100"
									src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/2.jpg"
									alt="Sample"> <a href="#!">
									<div class="mask">
										<img class="img-fluid w-100"
											src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/2.jpg">
										<div class="mask rgba-black-slight"></div>
									</div>
								</a>
							</div>
							<div class="text-center pt-4">
								<h5>Ballerina skirt</h5>
								<p>
									<span class="mr-1"><strong>$12.99</strong></span>
								</p>
								<button type="button" class="btn btn-primary btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-shopping-cart pr-2"></i>Add to cart</button>
								<button type="button" class="btn btn-light btn-sm mr-1 mb-2 waves-effect waves-light"><i class="fa fa-info-circle pr-2"></i>Details</button>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		
		<hr/>

		<!--Section: Content-->
		<section class="text-center mt-5">

			<!-- Section heading -->
			<h3 class="text-center mb-4">Why is it so great?</h3>
			<!-- Section description -->
			<p class="text-center w-sm-75 mx-auto mb-5">Lorem ipsum dolor sit
				amet, consectetur adipisicing elit enim ad minima veniam, quis
				nostrum exercitationem ullam. Reprehenderit maiores aperiam
				assumenda deleniti voluptas ratione hic.</p>

			<!-- Grid row -->
			<div class="row">

				<!-- Grid column -->
				<div class="col-md-4 mb-5">

					<i class="fa fa-book fa-3x text-primary" aria-hidden="true"></i>
					<h5 class="my-4">Analytics</h5>
					<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Reprehenderit maiores aperiam minima assumenda
						deleniti hic.</p>

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-4 mb-5">

					<i class="fa fa-book fa-3x text-primary"></i>
					<h5 class="my-4">Tutorials</h5>
					<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Reprehenderit maiores aperiam minima assumenda
						deleniti hic.</p>

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-4 mb-5">

					<i class="fa fa-comments fa-3x text-primary"></i>
					<h5 class="my-4">Support</h5>
					<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Reprehenderit maiores aperiam minima assumenda
						deleniti hic.</p>

				</div>
				<!-- Grid column -->

			</div>
			<!-- Grid row -->

		</section>
		<!--Section: Content-->
	</div>
	<script type="text/javascript">
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : 10,
				visiblePages : 3,
				onPageClick : function(event, page) {
					console.info(page + ' (from options)');
				}
			})
		});
	</script>
</body>
</html>
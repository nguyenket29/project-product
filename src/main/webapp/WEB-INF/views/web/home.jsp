<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url var="apiSort" value="/api/sort?page=1&limit=3&sortBy=price" />
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

<form action="" id="formSubmit" method="get">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<c:if test="${not empty message}">
					<div id="alerts" class="wow fadeInUp alert alert-success">
						<h5>${message}</h5>
					</div>
				</c:if>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-sm-3">
				<h2>Category</h2>

				<div class="panel-group category-products">
					<!--category-productsr-->
					<c:forEach items="${categories}" var="item">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<c:url var="b" value="/category/cateId=${item.id}">
										<c:param name="page">1</c:param>
										<c:param name="limit">6</c:param>
									</c:url>

									<a data-parent="#accordian" href="${b}"> <span
										class="badge pull-right"><i class="fa fa-plus"></i></span>
										${item.name}
									</a>
								</h4>
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- Search -->
				<div class="search">
					<h2>Search</h2>
					<div
						class="md-form md-outline mt-0 d-flex justify-content-between align-items-center mb-5">
						<input type="search" name="key" class="form-control mb-0"
							placeholder="Search..." style="font-size: 12px; outline: none;">
						<c:url var="pr" value="/trang-chu/search">
							<c:param name="page">1</c:param>
							<c:param name="limit">6</c:param>
						</c:url>
						<input type="submit" id="sb" name="" value="       "
							formaction="${pr}"
							style="outline: none; margin-left: 10px; padding: 3px 7px; background: transparent; border: 1px solid #ced4da; border-radius: 3px;"><i
							class="fa fa-search"
							style="position: absolute; color: #636465; right: 15px;"></i></input>
					</div>
				</div>

				<!--brands_products-->
				<div class="brands_products mb-4">
					<h2>Brands</h2>
					<div class="brands-name">
						<ul class="nav nav-pills nav-stacked">
							<li><a href=""> <span class="pull-right">(50)</span>Acne
							</a></li>
							<li><a href=""> <span class="pull-right">(56)</span>Grüne
									Erde
							</a></li>
							<li><a href=""> <span class="pull-right">(27)</span>Albiro
							</a></li>
							<li><a href=""> <span class="pull-right">(32)</span>Ronhill
							</a></li>
							<li><a href=""> <span class="pull-right">(5)</span>Oddmolly
							</a></li>
						</ul>
					</div>
				</div>

				<!-- Order now -->
				<div class="mb-4 order">
					<h2>Brands</h2>
					<img class="img-fluid"
						src="<c:url value='/template/images/shipping.jpg'/>" />
				</div>
			</div>

			<div class="col-12 col-sm-9">
				<div class="row mb-3">
					<div class="col-md-6">
						<ul id="pagination" class="pagination"></ul>
					</div>

					<div class="col-md-6">
						<select id="sortProduct"
							onchange="window.location.href = this.options[this.selectedIndex].value"
							style="padding: 4px 12px; margin-top: 17px; float: right; font-size: 14px; color: #696763; border: 1px solid #696763; border-radius: 4px;">
							<option selected="selected" value="<c:url value="/trang-chu"/>">Default</option>
							<option value="<c:url value="/sorts=asc_price?page=1&limit=6"/>">Price
								increases gradually</option>
							<option value="<c:url value="/sorts=desc_price?page=1&limit=6"/>">Price
								decreased gradually</option>
							<option value="<c:url value="/sorts=asc_az?page=1&limit=6"/>">Product
								names from A to Z</option>
							<option value="<c:url value="/sorts=desc_za?page=1&limit=6"/>">Product
								names from Z to A</option>
						</select>
					</div>
				</div>

				<div class="row" id="products">
					<c:forEach items="${product}" var="item">
						<div class="col-md-4 mb-5">
							<div>
								<div class="view zoom overlay rounded z-depth-2"
									style="height: 260px;">
									<img class="img-fluid w-100 h-100"
										src="<c:url value="/template/images/${item.thumbnail}"/>" alt="Sample">
								</div>
								<div class="text-center pt-4">
									<h5>${ item.name}</h5>
									<p>
										<span class="mr-1"><strong>$ ${item.price}</strong></span>
									</p>
									<a
										href="<c:url value="/cart/add/id=${item.id}/qty=${item.quantity}"/>"
										style="color: #fff; font-size: 12px;"
										class="btn btn-primary btn-sm mr-1 mb-2 waves-effect waves-light addCart">
										<i class="fa fa-shopping-cart pr-2"></i>Add to cart
									</a> <a
										href="<c:url value="/detail/show/id=${item.id}/qty=${item.quantity}"/>"
										style="color: #4f4f4f; font-size: 12px;"
										class="btn btn-light btn-sm mr-1 mb-2 waves-effect waves-light">
										<i class="fa fa-info-circle pr-2"></i> Details
									</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<input type="hidden" value="" id="page" name="page" /> <input
			type="hidden" value="" id="limit" name="limit" />
	</div>
</form>
<script type="text/javascript">
		var totalPages = ${model.totalPage},
		startPage = ${model.page};
		$(function () {
	        window.pagObj = $('#pagination').twbsPagination({
	        	totalPages: totalPages,
		        visiblePages: 10,
		        startPage: startPage,
		        next: '>',
		        prev: '<',
		        onPageClick: function (event, page) {
		        	if (startPage != page) {
	            		$('#limit').val(6);
						$('#page').val(page);
						$('#formSubmit').submit();
					}
		        }
	        });
	        
	        $('.cart').attr('data-before',$('#cartNumber').val());
			
			$('#sb').click(function(event, page){
				$('#limit').val(3);
				$('#page').val(1);
			})
			
			new WOW().init(); 
		})
		
		function sortAscPrice(e){
			e.preventDefault();
			$.ajax({
				type: "GET",
				url: '${apiSort}',
				contentType: 'application/json',
	            data: JSON.stringify(data),
	            dataType: 'json',
	            success: function(e){
	            	console.log("ok ok")
	            },
	            error: function(e){
	            	console.log("ERROR: " + e)
	            }
			})
		}
	</script>
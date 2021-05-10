<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<section id="feature" class="container">
	<hr class="mt-4" style="background: #ded8d863; margin: 0 200px;">
	<h2 class="title text-center mt-4" style="font-weight: bold;">Featured
		Item</h2>
	<p class="text-center mb-5" style="color: #878787; font-size: 14px;">The
		freshest and most exciting news</p>
	<div class="slider">
		<ul id="autoWidth" class="cs-hidden">

			<!--8------------------------------------>
			<c:forEach var="item" items="${product}">
				<li class="item-h">
					<!--box-slider--------------->
					<div class="box">
						<!--img-box---------->
						<div class="slide-img">
							<img alt="8"
								src="<c:url value="/template/images/${item.thumbnail}"/>">
							<!--overlayer---------->
							<div class="overlay">
								<!--buy-btn------>
								<a href="<c:url value="/checkout/product_id=${item.id}"/>" class="buy-btn">Buy Now</a>
							</div>
						</div>
						<!--detail-box--------->
						<div class="detail-box">
							<!--type-------->
							<div class="type">
								<a href="#">${item.name}</a> <span>Noe Arrival</span>
							</div>
							<!--price-------->
							<a href="#" class="price">$ ${item.price}</a>

						</div>

					</div>
				</li>
			</c:forEach>

		</ul>
	</div>
</section>

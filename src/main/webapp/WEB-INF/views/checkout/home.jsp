<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<div class="payment-form">
	<div class="block-heading">
		<h2>Payment</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
			quam urna, dignissim nec auctor in, mattis vitae leo.</p>
	</div>

	<form:form class="mb-5" method="post" modelAttribute="order">
		<div class="products">
			<h3 class="title">Checkout</h3>
			<c:forEach items="${sessionScope.cartItems}" var="item">
				<div class="item">
					<div class="row">
						<div class="thumbnail col-sm-2">
							<img class="img-fluid w-100"
								src="<c:url value="/template/images/${item.value.productDTO.thumbnail}"/>"
								alt="Sample">
						</div>
						<div class="content col-sm-10">
							<span class="price"><b>Price: </b>$ ${item.value.productDTO.price}</span>
							<p class="item-name"><b>Name: </b>${item.value.productDTO.name}</p>
							<p class="item-description"><b>Description: </b>${item.value.productDTO.description}</p>
							<p class="item-description"><b>Quantity: </b>${item.value.productDTO.quantity}</p>
						</div>
					</div>
				</div>
			</c:forEach>
			<div class="total">
				Total<span class="price">$ ${sessionScope.cartTotal}</span>
			</div>
		</div>
		<div class="card-details">
			<h3 class="title">Credit Card Details</h3>
			<div class="row">
				<div class="form-group col-sm-6">
					<form:label path="customerName">Your name:</form:label>
					<form:input path="customerName" type="text" cssClass="form-control"
						placeholder="Your name" />
				</div>

				<div class="form-group col-sm-6">
					<form:label path="customerEmail">Your email:</form:label>
					<form:input type="text" cssClass="form-control" path="customerEmail"
						placeholder="Your email" />
				</div>
			</div>
			<div class="row">
				<div class="form-group col-sm-6">
					<form:label path="customerAddress">Your address:</form:label>
					<form:input type="text" path="customerAddress" cssClass="form-control"
						placeholder="Your address" />
				</div>

				<div class="form-group col-sm-6">
					<form:label path="customerPhone">Your phone:</form:label>
					<form:input type="text" path="customerPhone" cssClass="form-control"
						placeholder="Your address" />
				</div>
			</div>

			<div class="row">
				<div class="form-group col-sm-2">
					<button type="submit" class="btn btn-primary btn-block">Send</button>
				</div>
			</div>
		</div>
	</form:form>

</div>
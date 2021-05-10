<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>

<!-- font -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;1,100;1,200;1,300;1,400;1,500&display=swap"
	rel="stylesheet">

<!-- Bootstrap core CSS -->
<link
	href="<c:url value='/template/web/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/template/detail/css/style.css'/>"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="<c:url value='/template/web/css/small.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/template/web/css/cart.css'/>"
	rel="stylesheet" type="text/css">

<!-- font-awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" />
</head>

<style>
.number-input a {
	color: #6c757d;
	text-decoration: none;
	cursor: pointer;
	-webkit-transition: all .2s ease-in-out;
	transition: all .2s ease-in-out;
}
</style>

<body>
	<!-- Navigation -->
	<%@ include file="/common/web/menu.jsp"%>

	<dec:body />

	<!-- Footer -->
	<%@ include file="/common/web/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value='/template/web/jquery/jquery.min.js'/>"></script>
	<script
		src="<c:url value='/template/web/bootstrap/js/bootstrap.min.js'/>"></script>
	<script type="text/javascript">
		$('.cart').attr('data-before', $('#cartNumber').val());
	</script>
</body>
</html>
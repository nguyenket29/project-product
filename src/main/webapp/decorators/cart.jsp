<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ hàng</title>
<!-- font -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;1,100;1,200;1,300;1,400;1,500&display=swap"
	rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="<c:url value='/template/cart/css/bootstrap.min.css'/>"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="<c:url value='/template/cart/css/index.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/template/web/css/small.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/template/web/css/cart.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/template/web/css/list-product.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/template/detail/css/style.css'/>"
	rel="stylesheet" type="text/css">

<!-- font-awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/c560c025cf.css"
	media="all">
<script src="https://use.fontawesome.com/c560c025cf.js"></script>

</head>
<body>
	<!-- Navigation -->
	<%@ include file="/common/web/menu.jsp"%>

	<dec:body />

	<!-- Footer -->
	<%@ include file="/common/web/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value='/template/cart/js/jquery-1.11.1.min.js'/>"></script>
	<script src="<c:url value='/template/cart/js/bootstrap.min.js'/>"></script>
	<script type="text/javascript">
		$('.cart').attr('data-before', $('#cartNumber').val());
	</script>
</body>
</html>
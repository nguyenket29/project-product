<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="main-content">
	<form action="<c:url value='/quan-tri/san-pham/danh-sach'/>"
		id="formSubmit" method="get">

		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang
							chủ</a></li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<div class="widget-box table-filter">
							<div class="table-btn-controls">
								<div class="pull-right tableTools-container">
									<div class="dt-buttons btn-overlap btn-group">
										<c:url var="create" value="/quan-tri/san-pham/chinh-sua" />
										<a flag="info"
											class="dt-button buttons-colvis btn btn-white btn-primary btn-bold"
											data-toggle="tooltip" title='Thêm bài viết' href='${create}'>
											<span> <i class="fa fa-plus-circle bigger-110 purple"></i>
										</span>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="table-responsive">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Ảnh</th>
												<th>Tên</th>
												<th>Giá</th>
												<th>Số lượng</th>
												<th>Mô tả</th>
												<th>Chỉnh sửa</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${product}">
												<tr>
													<td><img style="width: 120px; height: 120px;"
														src="<c:url value="/template/images/${item.thumbnail}"/>">
													</td>
													<td>${item.name}</td>
													<td>${item.price}</td>
													<td>${item.quantity}</td>
													<td>${item.description}</td>
													<td>
														<c:url var="updateNew"
															value="/quan-tri/san-pham/cap-nhat">
															<c:param name="id" value="${item.id}" />
														</c:url> <a class="btn btn-sm btn-primary btn-edit"
														data-toggle="tooltip" title="Cập nhật bài viết"
														href='${updateNew}'><i class="fa fa-pencil-square-o"
															aria-hidden="true"></i> </a>
														<c:url var="delete" value="/quan-tri/san-pham/xoa?page=1&limit=2&id=${item.id}" />
															<a href="${delete}" data-toggle="tooltip"
																style="width: 39px;height: 33px;"
																class="btn btn-sm btn-white btn-edit"
																title='Xóa bài viết'> <span>
																	<i class="fa fa-trash-o" aria-hidden="true" style="font-size: 14px;margin-top: 3px;"></i>
															</span>
														</a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<ul class="pagination" id="pagination"></ul>
									<input type="hidden" value="" id="page" name="page" /> <input
										type="hidden" value="" id="limit" name="limit" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
<!-- /.main-content -->
<script>
	var totalPages = ${model.totalPage};
	var currentPage = ${model.page};
	$(function() {
		window.pagObj = $('#pagination').twbsPagination({
			totalPages : totalPages,
			visiblePages : 10,
			startPage : currentPage,
			next : '>',
			prev : '<',
			onPageClick : function(event, page) {
				if (currentPage != page) {
					$('#limit').val(2);
					$('#page').val(page);
					$('#formSubmit').submit();
				}
			}
		});
	});
</script>
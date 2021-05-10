<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>

<div class="main-content">
	<div class="main-content-inner">
		<div class="breadcrumbs" id="breadcrumbs">
			<script type="text/javascript">
				try {
					ace.settings.check('breadcrumbs', 'fixed')
				} catch (e) {
				}
			</script>

			<ul class="breadcrumb">
				<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Home</a>
				</li>

				<li><a href="#">Forms</a></li>
				<li class="active">Form Elements</li>
			</ul>
			<!-- /.breadcrumb -->
		</div>
		<div class="page-content">
			<div class="row">
				<div class="col-xs-12">
					<form:form class="form-horizontal" method="POST"
						enctype="multipart/form-data" modelAttribute="model" role="form">
						<div class="form-group">
							<label for="categoryCode"
								class="col-sm-3 control-label no-padding-right">Thể
								loại:</label>
							<div class="col-sm-9">
								<form:select path="categoryCode" id="categoryCode">
									<form:option value="" label="--- Chọn Thể Loại ---" />
									<form:options items="${categories}" />
								</form:select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="title">Tên sản phẩm</label>
							<div class="col-sm-9">
								<form:input path="name" id="title" cssClass="col-xs-10 col-sm-5" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="title">Giá sản phẩm</label>
							<div class="col-sm-9">
								<form:input path="price" id="title"
									cssClass="col-xs-10 col-sm-5" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="title">Số lượng sản phẩm</label>
							<div class="col-sm-9">
								<form:input path="quantity" id="title"
									cssClass="col-xs-10 col-sm-5" />
							</div>
						</div>

						<div class="form-group">
							<label for="shortDescription"
								class="col-sm-3 control-label no-padding-right">Mô tả
								ngắn:</label>
							<div class="col-sm-9">
								<form:textarea path="description" id="description" rows="5"
									cols="10" cssClass="col-xs-10 col-sm-5" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label no-padding-right"
								for="thumbnail">Ảnh đại diện</label>
							<div class="col-sm-9">
								<input type="file" class="col-xs-10 col-sm-5" id="thumbnail"
									name="file" />
							</div>
						</div>

						<div class="clearfix form-actions">
							<div class="col-md-offset-3 col-md-9">
								<button class="btn btn-info" type="submit">
									<i class="ace-icon fa fa-check bigger-110"></i> Thêm sản phẩm
								</button>
								&nbsp; &nbsp; &nbsp;
								<button class="btn" type="reset">
									<i class="ace-icon fa fa-undo bigger-110"></i> Hủy
								</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	
</script>

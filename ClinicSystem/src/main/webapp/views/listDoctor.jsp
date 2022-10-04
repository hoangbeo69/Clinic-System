<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Clinic HomePage</title>
<link rel="stylesheet" href="../vendors/feather/feather.css">
<link rel="stylesheet" href="../vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
<link rel="stylesheet" href="../vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" type="text/css"
	href="../js/select.dataTables.min.css">
<link rel="stylesheet" href="../css/vertical-layout-light/style.css">
<link rel="shortcut icon" href="../images/favicon.png" />
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
<!-- Bootstrap Font Icon CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
</head>
<body>
	<div class="container-scroller">
		<%@include file="../common/header.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_settings-panel.html -->
			<div class="theme-setting-wrapper">
				<div id="settings-trigger">
					<i class="bi bi-gear"></i>
				</div>
				<div id="theme-settings" class="settings-panel">
					<i class="settings-close ti-close"></i>
					<p class="settings-heading">SIDEBAR SKINS</p>
					<div class="sidebar-bg-options selected" id="sidebar-light-theme">
						<div class="img-ss rounded-circle bg-light border mr-3"></div>
						Light
					</div>
					<div class="sidebar-bg-options" id="sidebar-dark-theme">
						<div class="img-ss rounded-circle bg-dark border mr-3"></div>
						Dark
					</div>
					<p class="settings-heading mt-2">HEADER SKINS</p>
					<div class="color-tiles mx-0 px-4">
						<div class="tiles success"></div>
						<div class="tiles warning"></div>
						<div class="tiles danger"></div>
						<div class="tiles info"></div>
						<div class="tiles dark"></div>
						<div class="tiles default"></div>
					</div>
				</div>
			</div>

			<!-- partial -->
			<!-- partial:partials/_sidebar.html -->
			<%@include file="../common/sidebar.jsp"%>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-md-12 grid-margin">
							<div class="row">
								<div class="col-12 col-xl-8 mb-4 mb-xl-0">
									<h3 class="font-weight-bold">Danh sách đặt lịch</h3>
									<div>
										<button style="margin-left: 800px; width: 150px;" type="button"
											class="btn btn-primary">
											<i class="bi bi-plus-circle"></i>Danh sách bác sỹ
										</button>
									</div>
									<table id="example" class="table table-striped"
										style="width: 100%">
										<thead>
											<tr>
												<th>#</th>
												<th>Mã bệnh nhân</th>
												<th>Tên</th>
												<th>Email</th>
												<th>Điện thoại</th>
												<th>Ngày sinh</th>
												<th>Giới tính</th>
												<th>Trạng thái</th>
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Sakura Yamamoto</td>
												<td>Support Engineer</td>
												<td>Tokyo</td>
												<td>37</td>
												<td>2009-08-19</td>
												<td>$139,575</td>
												<td>$139,575</td>
												<td>Đã xách nhận</td>
												<td>
													<a href="" class="btn btn-primary"><i class="bi bi-eye"></i></a>
													<a href="" class="btn btn-warning">Khám</a>
												</td>
											</tr>
											<tr>
												<td>Thor Walton</td>
												<td>Developer</td>
												<td>New York</td>
												<td>61</td>
												<td>2013-08-11</td>
												<td>$98,540</td>
												<td>$139,575</td>
												<td>Đang chờ</td>
												<td>
													<a href="" class="btn btn-primary"><i class="bi bi-eye"></i></a>
													<a href="" class="btn btn-warning">Khám</a>
												</td>
											</tr>
											<tr>
												<td>Finn Camacho</td>
												<td>Support Engineer</td>
												<td>San Francisco</td>
												<td>47</td>
												<td>2009-07-07</td>
												<td>$87,500</td>
												<td>$139,575</td>
												<td>Chưa xác nhận</td>
												<td>
													<a href="" class="btn btn-primary"><i class="bi bi-eye"></i></a>
													<a href="" class="btn btn-warning">Khám</a>
												</td>
											</tr>
										</tbody>
										<tfoot>
											<tr>
												<th>#</th>
												<th>Mã bệnh nhân</th>
												<th>Tên</th>
												<th>Email</th>
												<th>Điện thoại</th>
												<th>Ngày sinh</th>
												<th>Giới tính</th>
												<th>Trạng thái</th>
												<th>Hành động</th>
											</tr>
										</tfoot>
									</table>
									<nav aria-label="Page navigation example">
										<ul class="pagination">
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
													<span class="sr-only">Previous</span>
											</a></li>
											<li class="page-item"><a class="page-link" href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Next"> <span aria-hidden="true">&raquo;</span>
													<span class="sr-only">Next</span>
											</a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="../common/footer.jsp"%>
	</div>
</body>
</html>




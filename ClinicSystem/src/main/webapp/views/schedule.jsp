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
</head>
<style>
body {
	background-color: #fff;
}

table {
	border-collapse: collapse;
}

thead {
	background-color: rgb(62, 118, 192);
}

th, td {
	padding: 10px;
}

select {
	width: 150px;
	max-width: 170px;
	padding: 5px;
}
</style>
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
									<h3 class="font-weight-bold">Lịch làm việc</h3>
								</div>
								<div  style="margin-right: 50px;">
								<table border="1">
										<thead>
											<tr>
												<th rowspan="2"><span class="auto-style1"><strong>Năm</strong></span>
													<select name="ctl00$mainContent$drpYear"
													id="ctl00_mainContent_drpYear">
														<option value="2019">2019</option>
														<option value="2020">2020</option>
														<option value="2021">2021</option>
														<option selected="selected" value="2022">2022</option>
														<option value="2023">2023</option>

												</select> <br /> <br /> Tuần <select
													name="ctl00$mainContent$drpSelectWeek"
													id="ctl00_mainContent_drpSelectWeek">
														<option value="1">03/01 To 09/01</option>
														<option value="2">10/01 To 16/01</option>
														<option value="3">17/01 To 23/01</option>
														<option value="4">24/01 To 30/01</option>
														<option value="5">31/01 To 06/02</option>
														<option value="6">07/02 To 13/02</option>
														<option value="7">14/02 To 20/02</option>
														<option value="8">21/02 To 27/02</option>
														<option value="9">28/02 To 06/03</option>
														<option value="10">07/03 To 13/03</option>
														<option selected="selected" value="11">14/03 To
															20/03</option>
														<option value="12">21/03 To 27/03</option>
														<option value="13">28/03 To 03/04</option>
														<option value="14">04/04 To 10/04</option>
														<option value="15">11/04 To 17/04</option>
														<option value="16">18/04 To 24/04</option>
														<option value="17">25/04 To 01/05</option>
														<option value="18">02/05 To 08/05</option>
														<option value="19">09/05 To 15/05</option>
														<option value="20">16/05 To 22/05</option>
														<option value="21">23/05 To 29/05</option>
														<option value="22">30/05 To 05/06</option>
														<option value="23">06/06 To 12/06</option>
														<option value="24">13/06 To 19/06</option>
														<option value="25">20/06 To 26/06</option>
														<option value="26">27/06 To 03/07</option>
														<option value="27">04/07 To 10/07</option>
														<option value="28">11/07 To 17/07</option>
														<option value="29">18/07 To 24/07</option>
														<option value="30">25/07 To 31/07</option>
														<option value="31">01/08 To 07/08</option>
														<option value="32">08/08 To 14/08</option>
														<option value="33">15/08 To 21/08</option>
														<option value="34">22/08 To 28/08</option>
														<option value="35">29/08 To 04/09</option>
														<option value="36">05/09 To 11/09</option>
														<option value="37">12/09 To 18/09</option>
														<option value="38">19/09 To 25/09</option>
														<option value="39">26/09 To 02/10</option>
														<option value="40">03/10 To 09/10</option>
														<option value="41">10/10 To 16/10</option>
														<option value="42">17/10 To 23/10</option>
														<option value="43">24/10 To 30/10</option>
														<option value="44">31/10 To 06/11</option>
														<option value="45">07/11 To 13/11</option>
														<option value="46">14/11 To 20/11</option>
														<option value="47">21/11 To 27/11</option>
														<option value="48">28/11 To 04/12</option>
														<option value="49">05/12 To 11/12</option>
														<option value="50">12/12 To 18/12</option>
														<option value="51">19/12 To 25/12</option>
														<option value="52">26/12 To 01/01</option>
												</select></th>

												<div id="ctl00_mainContent_divNameDay">
													<th align='center'>Thứ 2</th>
													<th align='center'>Thứ 3</th>
													<th align='center'>Thứ 4</th>
													<th align='center'>Thứ 5</th>
													<th align='center'>Thứ 6</th>
												</div>
											</tr>
											<tr>
												<div id="ctl00_mainContent_divShowDate">
													<th align='center'>14/03</th>
													<th align='center'>15/03</th>
													<th align='center'>16/03</th>
													<th align='center'>17/03</th>
													<th align='center'>18/03</th>
												</div>

											</tr>
										</thead>
										<tbody>
											<div id="ctl00_mainContent_divContent">
												<tr>
													<td>Sáng 7h30 - 11h</td>
													<td><select name="" id="">
															<option value="">NguyễnA</option>
													</select></td>
													<td><select name="" id="">
															<option value="">NguyễnA</option>
													</select></td>
													<td><select name="" id="">
															<option value="">NguyễnA</option>
													</select></td>
													<td><select name="" id="">
															<option value="">NguyễnA</option>
													</select></td>
													<td><select name="" id="">
															<option value="">NguyễnA</option>
													</select></td>

												</tr>
												<tr>
													<td>Chiều 14h - 17h30</td>
													<td><select name="" id="">
															<option value="">NguyễnA</option>
													</select></td>
													<td><select name="" id="">
															<option value="">NguyễnA</option>
													</select></td>
													<td><select name="" id="">
															<option value="">NguyễnA</option>
													</select></td>
													<td><select name="" id="">
															<option value="">NguyễnA</option>
													</select></td>
													<td><select name="" id="">
															<option value="">NguyễnA</option>
													</select></td>
												</tr>
											</div>
										</tbody>
									</table>
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




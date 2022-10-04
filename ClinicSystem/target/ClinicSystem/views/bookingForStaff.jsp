<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đặt lịch khám</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
<style>
.divider-text {
	position: relative;
	text-align: center;
	margin-top: 15px;
	margin-bottom: 15px;
}

.divider-text span {
	padding: 7px;
	font-size: 12px;
	position: relative;
	z-index: 2;
}

.divider-text:after {
	content: "";
	position: absolute;
	width: 100%;
	border-bottom: 1px solid #ddd;
	top: 55%;
	left: 0;
	z-index: 1;
}

.btn-facebook {
	background-color: #405D9D;
	color: #fff;
}

.btn-twitter {
	background-color: #42AEEC;
	color: #fff;
}
</style>
<body>
	<div class="container">
		<h3 style="margin-top: 20px" class="text-center">Đặt Lịch Khám</h3>
		<hr>
		<div class="card bg-light">
			<article class="card-body mx-auto" style="max-width: 700px;">
				<form>
					<!-- <h6>Mã bệnh nhân</h6>
					<div class="form-group input-group">
						<input name="" class="form-control" placeholder=""
							type="text">
					</div> -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-phone"></i>
							</span>
						</div>
						<input name="" class="form-control" placeholder="Số điện thoại(*)"
							type="text">
					</div>
					<div class="form-group input-group">
						<input name="" class="form-control" placeholder="Họ và tên(*)"
							type="text">
					</div>
					<h6>Ngày sinh(*)</h6>
					<div class="form-group input-group">
						<input type="date" name="" class="form-control"
							placeholder="Ngày sinh">
					</div>
					<div class="form-group input-group">
						<select class="form-control">
							<option selected="">Giới tính</option>
							<option>Nam</option>
							<option>Nữ</option>
						</select>
					</div>
					<!-- form-group// -->
					<div class="form-group input-group">
						<input name="" class="form-control" placeholder="Địa chỉ"
							type="email">
					</div>
					<!-- form-group// -->
					<div class="form-group input-group">
						<input name="" class="form-control"
							placeholder="Tên người giám hộ(nếu có)" type="email">
					</div>
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-phone"></i>
							</span>
						</div>
						<input name="" class="form-control"
							placeholder="Số điện thoại giám hộ(nếu có)" type="text">
					</div>
					<div class="form-group input-group">
						<input name="" class="form-control"
							placeholder="Mối quan hệ bệnh nhân(nếu có)" type="text">
					</div>
					<h6>Chọn ngày khám</h6>
					<div class="form-group input-group">
						<input name="" class="form-control" placeholder="Chọn ngày khám"
							type="date">
					</div>
					<!-- form-group// -->
					<div class="form-group input-group">
						<select class="form-control">
							<option selected="">Chọn giờ khám</option>
							<option>Sáng</option>
							<option>Chiều</option>
						</select>
					</div>

					<!-- form-group end.// -->
					<textarea rows="4" cols="70" name="comment" form="usrform">Vấn đề sức khoẻ cần khám...</textarea>
					<div class="form-group input-group">
						<select class="form-control">
							<option selected="">Chọn phòng khám</option>
							<option>P1</option>
							<option>P2</option>
							<option>P3</option>
						</select>
					</div>
					<!-- form-group// -->
					<h6>Trạng thái</h6>
					<div class="form-group input-group">
						<input class="form-control" placeholder="Đang chờ khám"
							type="text">
					</div>
					<!-- form-group// -->
					<button type="submit" class="btn btn-primary">Đặt lịch
						khám</button>
						<button type="submit" class="btn btn-primary">Xác nhận lịch hẹn</button>
					<button type="submit" class="btn btn-success">Tiếp nhận</button>
					<button type="submit" class="btn btn-danger">Huỷ lịch hẹn</button>
					<button type="submit"
						class="btn btn-warning">Quay lại</button>
				</form>
			</article>
		</div>
		<!-- card.// -->

	</div>
	<!--container end.//-->
</body>
</html>
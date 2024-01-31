
		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Bảng điều khiển</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">Bảng điều khiển</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Trang chủ</a>
						</li>
					</ul>
				</div>
				<!-- <a href="#" class="btn-download">
					<i class='bx bxs-cloud-download' ></i>
					<span class="text">Download PDF</span>
				</a> -->
			</div>

			<ul class="box-info">
				<li>
					<i class='bx bxs-calendar-check' ></i>
					<span class="text">
						<h3><?=$countOder['SoDH']?></h3>
						<p>Số đơn hàng</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-group' ></i>
					<span class="text">
						<h3><?=$countUser['SoTK']?></h3>
						<p>Người dùng</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-dollar-circle' ></i>
					<span class="text">
						<h3><?=$SumIncome['DoanhThu']?> ₫</h3>
						<p>Tổng doanh thu</p>
					</span>
				</li>
			</ul>


			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Đơn hàng gần đây</h3>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col" class="text-center">Ngày đặt hàng</th>
								<th scope="col">Mã đơn hàng</th>
								<th scope="col">Tài khoản</th>
								<th scope="col">Tên Người nhận</th>
								<th scope="col">Trạng thái</th>
								<th scope="col">Tổng đơn</th>
							</tr>
						</thead>
						<tbody>
							<?php $i=1; foreach ($Orders as $Order):?>
							<tr>
								<td scope="row"><?=$i?></td>
								<td class="text-center"><?=date("d-m-Y", strtotime ($Order['NgayDat']))?></td>
								<td><?=$Order['Id']?></td>
								<td><?=$Order['TaiKhoan']?></td>
								<td><?=$Order['NguoiNhan']?></td>
								<td><span class="status pending"><?=$Order['TrangThai']?></span></td>
								<td class="text-end pe-3"><?=number_format($Order['TongTien'],0,',','.')?> ₫</td>
							</tr>
							<?php $i++; endforeach; ?>
							<!-- <tr>
								<td scope="row">1</td>
								<td>01-10-2021</td>
								<td>01</td>
								<td>Can</td>
								<td>Can</td>
								<td><span class="status pending">Đang giao hàng</span></td>
								<td>500.000 ₫</td>
							</tr>							
							<tr>
								<td scope="row">1</td>
								<td>01-10-2021</td>
								<td>01</td>
								<td>Can</td>
								<td>Can</td>
								<td><span class="status process">Đang giao hàng</span></td>
								<td>500.000 ₫</td>
							</tr>							
							<tr>
								<td scope="row">1</td>
								<td>01-10-2021</td>
								<td>01</td>
								<td>Can</td>
								<td>Can</td>
								<td><span class="status completed">đã hoàn thành</span></td>
								<td>500.000 ₫</td>
							</tr> -->
						</tbody>
						
						
					</table>
				</div>
				<!-- <div class="todo">
					<div class="head">
						<h3>Todos</h3>
						<i class='bx bx-plus' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<ul class="todo-list">
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="not-completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
						<li class="not-completed">
							<p>Todo List</p>
							<i class='bx bx-dots-vertical-rounded' ></i>
						</li>
					</ul>
				</div> -->
			</div>
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	
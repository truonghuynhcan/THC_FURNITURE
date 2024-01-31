<!-- MAIN -->
<main>
    <div class="head-title">
        <div class="left">
            <h1>Quản lý sách</h1>
            <ul class="breadcrumb">
                <li>
                    <a href="index.php?pg=ad&active=book_management" class="active">Quản lý sách</a>
                </li>
                <li><i class='bx bx-chevron-right'></i></li>
                <li>
                    <a class="" href="#">Cập nhật sách</a>
                </li>
            </ul>
        </div>
        <!-- <a href="#" class="btn-download">
            <i class='bx bxs-cloud-download'></i>
            <span class="text">Download PDF</span>
        </a> -->
    </div>

    <div class="table-data">
        <div class="order">
            <div class="head">
                <h3>Mã sản phẩm
                    <?= $pro['Id'] ?>
                    <span style="font-size: 0.7rem; color:var(--dark)">(Ngày nhập
                        <?= date("d-m-Y", strtotime($pro['NgayNhap'])) ?>)
                    </span>
                </h3>
                <!-- <i class='bx bx-search'></i> -->
                <!-- <i class='bx bx-filter'></i> -->
            </div>
            <form action="<?=APPURL?>ad_products/update/<?=$pro['Id']?>" method="post" class="row">
                <div class="col-lg-8 d-flex flex-column gap-2">
                    <div class="mb-3">
                        <label for="tensp" class="form-label">Tên sản phẩm</label>
                        <input type="text" class="form-control" id="tensp" name="tensp"
                            value="<?= $pro['TenSanPham'] ?>">
                    </div>
                    <div class="mb-3">
                        <label for="LoaiHang" class="form-label">Loại hàng</label>
                        <input type="text" class="form-control" id="LoaiHang" name="LoaiHang"
                            value="<?= $pro['Loai'] ?>">
                    </div>
                    <div class="mb-3">
                        <label for="thuonghieu" class="form-label">Thương hiệu</label>
                        <input type="text" class="form-control" id="thuonghieu" name="thuonghieu"
                            value="<?= $pro['ThuongHieu'] ?>">
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="dongia" class="form-label">Đơn giá (₫)</label>
                            <input type="number" class="form-control" name="dongia" id="dongia"
                                value="<?= $pro['DonGia'] ?>">
                        </div>
                        <div class="col-md-6">
                            <label for="giamgia" class="form-label">Giảm giá (%)</label>
                            <input type="number" class="form-control" name="giamgia" id="giamgia"
                                value="<?= ($pro['GiamGia']!=0)?$pro['GiamGia']:0 ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="kichthuoc" class="form-label">Kích thước</label>
                            <input type="text" class="form-control" name="kichthuoc" id="kichthuoc"
                                value="<?= $pro['KichThuoc'] ?>">
                        </div>
                        <div class="col-md-6">
                            <label for="mausac" class="form-label">Màu sắc</label>
                            <input type="text" class="form-control" name="mausac" id="mausac"
                                value="<?= $pro['MauSac'] ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <label for="tonkho" class="form-label">Tồn kho</label>
                            <input type="number" class="form-control" name="tonkho" id="tonkho"
                                value="<?= $pro['TonKho'] ?>">
                        </div>
                        <!-- <div class="col-md-3">
                            <label for="luotbinhluan" class="form-label">Lượt bình luận</label>
                            <input type="text" class="form-control" name="luotbinhluan" id="luotbinhluan"
                                value="<?= $pro['LuotBinhLuan'] ?>" disabled>
                        </div> -->
                        <div class="col-md-3">
                            <label for="luotban" class="form-label">Lượt bán</label>
                            <input type="text" class="form-control" name="luotban" id="luotban"
                                value="<?= $pro['LuotBan'] ?>" disabled>
                        </div>
                        <!-- <div class="col-md-3">
                            <label for="danhgia" class="form-label">Đánh Giá</label>
                            <input type="text" class="form-control" name="danhgia" id="danhgia"
                                value="<?= $pro['DanhGia'] ?>" disabled>
                        </div> -->
                    </div>
                    <div class="row">
                        <div class="form-floating">
                            <textarea class="form-control" name="mota" id="mota" style="height: 100px"
                                cols="3"><?= $pro['MoTa'] ?></textarea>
                            <label for="mota">Mô tả</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-floating">
                            <textarea class="form-control" name="motact" id="motact"
                                style="height: 200px"><?= $pro['MoTaCT'] ?></textarea>
                            <label for="motact">Mô tả chi tiết</label>
                        </div>
                    </div>
                    <fieldset class="row mb-3">
                        <legend class="col-form-label col-sm-2 pt-0">Trạng thái</legend>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="trangthai" id="an" value="0" <?=$pro['TrangThai']==0?'checked':''?>>
                                <label class="form-check-label" for="an">
                                    Ẩn
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="trangthai" id="hien" value="1" <?=$pro['TrangThai']==1?'checked':''?>>
                                <label class="form-check-label" for="hien">
                                    Hiện
                                </label>
                            </div>
                        </div>
                    </fieldset>
                    <div class="col-auto">
                        <input type="submit" class="btn btn-primary" name="update_pro" value="Cập nhật">
                    </div>
                </div>
                <div class="col-lg-3 d-flex flex-column gap-2">
                    <?php
                    foreach ($listImg as $img):
                        $src = APPURL.'public/upload/products/' . $img['url'];
                        $alt = $img['Id'];
                        ?>
                        <div class="card mb-3" style="width: 100%;">
                            <img src="<?= $src ?>" class="hover-trigger" alt="<?= $alt ?>" width="100%">
                            <div class="card-body  d-none">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">Id ảnh:
                                        <?= $img['Id'] ?>
                                    </li>
                                    <li class="list-group-item">Đường dẫn:
                                        <?= $src ?>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="mb-3">
                                            <label for="formFile" class="form-label">Chọn ảnh thay thế</label>
                                            <input class="form-control" type="file" id="formFile" onchange="validateFile()">
                                            <input type="submit" class="btn btn-primary mt-1" name="saveImg"
                                                value="Lưu Ảnh">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            // Bắt sự kiện hover vào card
            $('.card').hover(
                function () {
                    // Khi hover vào, thêm class 'expanded' và loại bỏ class 'hidden'
                    $(this).find('.card-body').addClass('d-block').removeClass('d-none');
                },
                function () {
                    // Khi rời khỏi, thêm class 'hidden' và loại bỏ class 'expanded'
                    $(this).find('.card-body').addClass('d-none').removeClass('d-block');
                }
            );
        });

        function validateFile() {
            var fileInput = document.getElementById('formFile');
            var filePath = fileInput.value;
            var allowedExtensions = /(\.jpg|\.jpeg|\.png)$/i;

            if (!allowedExtensions.exec(filePath)) {
                alert('Chọn chưa đúng file hình định dạng (chỉ nhận (jpg, jpeg, png)');
                fileInput.value = ''; // Reset the input to clear the invalid file
                return false;
            }
        }
    </script>
</main>
<!-- MAIN -->
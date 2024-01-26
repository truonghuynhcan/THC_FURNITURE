<!-- Breadcrumb star-->
<section class="position-relative mb-3" style="">
    <img src="<?= APPURL ?>upload/banners/breadcrumb.webp" class="w-100" alt="">
    <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
        class="position-absolute top-50 start-50 translate-middle d-flex flex-column align-items-center">
        <h1>Giỏ hàng</h1>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html" class="text-primary">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Library</li>
        </ol>
    </nav>
</section>
<!-- Breadcrumb end-->

<!-- cart star -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-9">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col" colspan="2">Thông tin sản phẩm</th>
                            <th class="text-center" scope="col">Đơn giá</th>
                            <th class="text-center" scope="col">Số lượng</th>
                            <th class="text-center" scope="col">Thành tiền</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($cart as $sp): ?>
                            <tr>
                                <td><img src="<?= APPURL ?>public/upload/products/<?= $sp['AnhSP'] ?>" alt=""
                                        style="height: 60px;"></td>
                                <td>
                                    <?= $sp['TenSP'] ?>
                                </td>
                                <td class="text-primary text-end">
                                    <?= number_format($sp['DonGia'], 0, ',', '.') ?> ₫
                                </td>
                                <td class="text-center">
                                    <?= $sp['SoLuong'] ?>
                                </td>
                                <td class="text-primary text-end">
                                    <?= number_format($sp['ThanhTien'], 0, ',', '.') ?> ₫
                                </td>
                                <td class="text-center"><a href="<?= APPURL ?>product/remoteProduct/<?= $sp['Id'] ?>"
                                        class="btn btn-primary">Xóa</a></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            <div class="col-12 col-lg-3">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">Đơn hàng</h5>
                        <h6 class="card-subtitle mb-2 text-body-secondary">(3 sản phẩm)</h6>
                        <div class="d-flex justify-content-between">
                            <p class="card-text">Tổng đơn</p>
                            <p class="card-text">300.000 VND</p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="card-text">Giảm giá</p>
                            <p class="card-text">- 19.000 VND</p>
                        </div>
                        <div class="d-flex mb-3 justify-content-between">
                            <form action="<?= APPURL ?>order/addVoucher" method="post">
                                <label class="card-text" for="voucher">Mã Giảm Giá</label>
                                <input class="form-control" type="text" name="voucher" id="voucher">
                                <input class="form-control" hidden type="text" name="MaDH" value="<?= $sp['MaDH'] ?>">
                                <button type="submit" name="addVoucher" class="btn border-1">Áp dụng</button>
                            </form>
                        </div>
                        <a href="<?= APPURL ?>product/checkout" class="card-link btn btn-primary container-fluid">Thanh
                            toán</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- cart end -->
<button class="btn-primary"></button>
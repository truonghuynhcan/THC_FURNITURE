<!-- checkout start -->
<style>
    .checkout .form-check-input:checked {
        background-color: var(--bs-cyan);
        border-color: var(--bs-cyan);
    }
</style>
<div class="checkout container">
    <form class="row" action="<?=APPURL?>page/checkout" method="post">
        <div class="col-12 col-md-8 py-3">
            <header class="text-center mb-3">
                <a href="#" class="text-body text-decoration-none h2">THC <span
                        class="text-primary">Furniture</span></a>
            </header>
            <section class="row">
                <div class="col-12 col-lg-6 mb-3">
                    <div class="d-flex align-items-center justify-content-between mb-3">
                        <h2 class="h4">Thông tin nhận hàng</h2>
                        <a href="<?=APPURL?>user/login" class="text-decoration-none text-info <?=(isset($_SESSION['user'])?'d-none':'')?>">
                            <i class="fa-solid fa-user"></i>
                            Đăng nhập
                        </a>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" name="fullname" class="form-control" id="fullname" placeholder="Nguyễn Văn An"  value="<?=(isset($_SESSION['user']['HoVaTen'])?$_SESSION['user']['HoVaTen']:'')?>">
                        <label for="fullname">Họ và tên</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="tel" name="sdt" class="form-control" id="sdt" placeholder="0987654321"  value="<?=(isset($_SESSION['user']['SDT'])?$_SESSION['user']['SDT']:'')?>">
                        <label for="sdt">Số điện thoại</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" name="address" class="form-control" id="address" placeholder="Gò vấp, TP HCM"  value="<?=(isset($_SESSION['user']['DiaChi'])?$_SESSION['user']['DiaChi']:'')?>">
                        <label for="address">Địa chỉ</label>
                    </div>
                    <div class="form-floating">
                        <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2"
                            style="height: 100px"></textarea>
                        <label for="floatingTextarea2">Ghi chú</label>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <!-- <div>
                        <h2 class="h4">Vận chuyển</h2>
                    </div>
                    <div class="mb-3">
                        <input class="form-control" type="text" value="20.000đ" aria-label="Disabled input example"
                            disabled readonly>
                    </div> -->
                    <div>
                        <h2 class="h4">Thanh toán</h2>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="thanhtoan" id="thanhtoan1" checked>
                                <label class="form-check-label" for="thanhtoan1">
                                    Thu hộ (COD)
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="thanhtoan" id="thanhtoan2">
                                <label class="form-check-label" for="thanhtoan2">
                                    Chuyển khoản
                                </label>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <aside class="col-12 col-md-4 bg-light border-start p-0 py-3" style="height: 100vh;">
            <section class="border-bottom p-3">
                <h2 class="h4">Đơn hàng</h2>
            </section>
            <section class=" overflow-auto mx-3 mb-3" style=" max-height: 200px;">
                <table class="table">
                    <tbody>
                        <?php
                        $countPro = 0;
                        $totalPro = 0;
                        // dùng API tính tiền ship
                        $shippingFee = 25000;
                        foreach ($cart as $sp):
                            ?>
                            <tr scope="row" style="height: 70px;">
                                <td class="rounded" style="width: 1px;"><img
                                        src="<?= APPURL ?>public/upload/products/<?= $sp['AnhSP'] ?>" height="60" alt=""></td>
                                <td>
                                    <span class="d-inline-block text-truncate" style="max-width: 150px;">
                                        <?= $sp['TenSP'] ?>
                                    </span>
                                    <br>(<?= $sp['SoLuong'] ?> sản phẩm)
                                </td>
                                <td class="text-end opacity-50">
                                    <?= number_format(($sp['DonGia']*(1-$sp['GiamGiaSP']/100)) * $sp['SoLuong'], 0, ',', '.') ?> ₫
                                </td>
                            </tr>
                            <?php
                            $countPro += $sp['SoLuong'];
                            $totalPro += $sp['SoLuong'] * ($sp['DonGia']*(1-$sp['GiamGiaSP']/100));
                        endforeach;
                        ?>
                            <!-- <tr style="height: 70px;">
                                <td class="rounded" style="width: 1px;"><img
                                        src="../public/upload/products/vn111342077qukwlf0rhzptr4i2ef.webp" height="60"
                                        alt=""></td>
                                <td>name</td>
                                <td class="text-end opacity-50">500.000đ</td>
                            </tr> -->
                    </tbody>
                </table>
            </section>
            <section class="mx-3 border-top border-bottom">
                <div class="input-group py-3 opacity-75">
                    <input type="text" class="form-control" placeholder="Nhập mã giảm giá"
                        aria-label="Recipient's username" aria-describedby="button-addon2">
                    <button class="btn btn-primary" type="button" id="button-addon2">Áp dụng</button>
                </div>
            </section>
            <section class="mx-3 pt-3 opacity-50">
                <div class="border-bottom">
                    <div class="d-flex justify-content-between">
                        <p class="card-text">Tạm tính</p>
                        <p class="card-text"> <?= number_format($totalPro, 0, ',', '.') ?> ₫</p>
                    </div>
                    <div class="d-flex justify-content-between">
                        <p class="card-text">Phí vận chuyển</p>
                        <p class="card-text"> <?= number_format($shippingFee, 0, ',', '.') ?> ₫</p>
                    </div>
                    <div class="d-flex justify-content-between">
                        <p class="card-text">Giảm giá</p>
                        <p class="card-text"> <?= number_format($shippingFee, 0, ',', '.') ?> ₫</p>
                    </div>
                </div>
            </section>
            <section class="mx-3 pt-3">
                <div class="d-flex justify-content-between h4 opacity-75">
                    <p class="card-text">Tổng cộng</p>
                    <input type="hidden" name="countPro" value="<?=$countPro?>">
                    <input type="hidden" name="totalBill" value="<?=$totalPro+$shippingFee?>">
                    <p class="card-text text-info fw-light"><?= number_format($totalPro-$shippingFee, 0, ',', '.') ?> ₫</p>
                </div>
                <div class="d-flex justify-content-between align-items-center gap-3">
                    <a href="<?=APPURL?>products/cart" class="card-text text-info text-decoration-none">
                        <i class="fa-solid fa-chevron-left"></i>
                        Quay về giỏ hàng
                    </a>
                    <button type="submit" name="order" class="card-text btn btn-primary px-4 py-2 text-body text-uppercase fw-medium">Đặt
                        hàng</button>
                </div>
            </section>
        </aside>
    </form>
</div>
<!-- checkout end -->
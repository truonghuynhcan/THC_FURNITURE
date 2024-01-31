<!-- Breadcrumb star-->
<section class="position-relative mb-3">
    <img src="<?= APPURL ?>public/upload/banners/breadcrumb.webp" class="w-100" alt="">
    <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
        class="position-absolute top-50 start-50 translate-middle d-flex flex-column align-items-center">
        <h1 class="text-primary h2">Kệ đựng sách</h1>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html" class="text-body text-decoration-none">Trang Chủ</a>
            </li>
            <li class="breadcrumb-item"><a href="index.html" class="text-body text-decoration-none">Đồ nội thất</a>
            </li>
            <li class="breadcrumb-item active text-primary" aria-current="page">Kệ đựng sách</li>
        </ol>
    </nav>
</section>
<!-- Breadcrumb end-->
<!-- product-detail star-->
<div class="container">
    <section class="row">
        <div id="carouselExampleIndicators" class="carousel slide col-6 d-flex">
            <div class="carousel-indicators position-relative d-flex flex-column ms-1 me-3 top-0 justify-content-start">
                <!-- <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                        class="active" aria-current="true" aria-label="Slide 1">
                        <img src="../public/upload/products/vn111342077qukwlf0rhzptr4i2ef.webp" class="d-block w-100"
                            alt="...">
                    </button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                        aria-label="Slide 2">
                        <img src="../public/upload/products/vn111342077qukwlf0rhzptr4i2ef.webp" class="d-block w-100"
                            alt="...">

                    </button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                        aria-label="Slide 3">
                        <img src="../public/upload/products/vn111342077qukwlf0rhzptr4i2ef.webp" class="d-block w-100"
                            alt="...">

                    </button> -->
            </div>
            <div class="carousel-inner">
                <!-- <div class="carousel-item active">
                        <img src="../public/upload/products/vn111342077qukwlf0rhzptr4i2ef.webp" class="d-block w-100"
                            alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="../public/upload/products/vn111342077qukwlf0rhzptr4i2ef.webp" class="d-block w-100"
                            alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="../public/upload/products/vn111342077qukwlf0rhzptr4i2ef.webp" class="d-block w-100"
                            alt="...">
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button> -->
            </div>
            <!-- truyền ảnh vào đây, tự đổ ra -->
            <script>
                const arrImg = ['<?= $pro['Anh'] ?>'];
                const url = '<?= APPURL ?>public/upload/products/';
                var imgSmall = "";
                var imgMain = "";
                var btn = `
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    `;
                arrImg.map((img, i) => {
                    imgSmall += `
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="${i}"
                            class="active" aria-current="true" aria-label="Slide ${i + 1}">
                                <img src="${url + img}"
                                    class="d-block w-100" alt="...">
                            </button>
                        `;
                    if (i == 0) {
                        imgMain += `
                                <div class="carousel-item active">
                                    <img src="${url + img}" class="d-block w-100"
                                        alt="...">
                                </div>
                            `;
                    } else {
                        imgMain += `
                                <div class="carousel-item">
                                    <img src="${url + img}" class="d-block w-100"
                                        alt="...">
                                </div>
                            `;
                    }
                });

                document.querySelector('.carousel-indicators').innerHTML = imgSmall;
                document.querySelector('.carousel-inner').innerHTML = imgMain + btn;
            </script>
        </div>
        <form method="post" action="<?= APPURL ?>/product/detail/<?= $pro['Id'] ?>" class="col-6 d-flex flex-column">
            <h1 class="h4">
                <?= $pro['TenSanPham'] ?>
            </h1>
            <p>Thương hiệu: <span class="text-primary">
                    <?= $pro['ThuongHieu'] ?>
                </span> | Tình trạng: <span class="text-primary">
                    <?= $pro['TonKho'] > 0 ? 'Còn ' . number_format($pro['TonKho'], 0, ',', '.') . ' sản phẩm' : 'Hết hàng' ?>
                </span>
            </p>
            <div class="bg-light border-top border-bottom px-2 py-3 mb-3">
                <div class="d-flex align-items-center">
                    <span class="h3 me-3 text-danger">
                        <?= $pro['GiamGia'] > 0 ? number_format($pro['DonGia'] * (1 - $pro['GiamGia'] / 100), 0, ',', '.') : number_format($pro['DonGia'], 0, ',', '.') ?>
                        ₫
                    </span>
                    <span class="text-decoration-line-through <?= $pro['GiamGia'] > 0 ? '' : 'd-none' ?>">
                        <?= number_format($pro['DonGia'], 0, ',', '.') ?> ₫
                    </span>
                </div>
                <div class="<?= $pro['GiamGia'] > 0 ? '' : 'd-none' ?>">
                    Tiết kiệm: <span class="text-primary">
                        <?= number_format($pro['DonGia'] * $pro['GiamGia'] / 100, 0, ',', '.') ?> ₫
                    </span>
                </div>
            </div>
            <div class="bg-light border-start border-primary border-3 rounded overflow-hidden px-2 pt-2 mb-3">
                <strong class="h4 me-3">Mô tả</strong>
                <p class="my-2">
                    <?= $pro['MoTa'] ?>
                </p>
            </div>
            <div class="px-2 pt-2 d-flex align-items-center gap-3 mb-3">
                <label for="">Số Lượng</label>
                <div class="buttons_added">
                    <input class="minus is-form" type="button" value="-">
                    <input aria-label="quantity" class="input-qty" max="10" min="1" name="SoLuong" type="number"
                        value="1">
                    <input class="plus is-form" type="button" value="+">
                </div>
            </div>
            <a href="#" class="btn container-fluid text-decoration-none btn-primary mb-3">
                <strong class="fs-5">Mua ngay</strong>
                <br>
                <span class="fs-6 fw-light">Giao hàng tận nơi
                    hoặc nhận tại cửa hàng</span>
            </a>
            <div class="row mb-3">
                <div class="col-6">
                    <button type="submit" class="btn container-fluid btn-outline-primary text-decoration-none py-3">Thêm vào giỏ hàng</button>
                </div>
                <div class="col-6">
                    <a href="#" class="btn container-fluid btn-outline-primary text-decoration-none py-3">Thêm vào giỏ hàng</a>
                </div>
            </div>
            <table class="fs-6 mb-3">
                <tr>
                    <td><span><i class="fa-solid fa-truck-fast text-primary"></i></span> Miễn phí vận chuyển tại TP.HCM</td>
                    <td><span><i class="fa-solid fa-medal text-primary"></i></span> Bảo hành chính hãng toàn quốc
                    </td>
                </tr>
                <tr>
                    <td><span><i class="fa-regular fa-handshake text-primary"></i></span> Cam kết chính hãng 100%
                    </td>
                    <td><span><i class="fa-solid fa-boxes-packing text-primary"></i></span> 1 đổi 1 nếu sản phẩm lỗi
                    </td>
                </tr>
            </table>
        </form>
    </section>

</div>
<!-- product-detail end-->

<!-- product-describe start -->
<div class="container">
    <section class="row">
        <div class="col-8">
            <h3>Mô tả sản phẩm</h3>
            <hr>
            <pre class="text-break" style="White-space:pre-wrap; word-wrap:break-word;">
                <?= $pro['MoTaCT'] ?>
            </pre>
        </div>
        <div class="col-4 d-none">
            <h3>Thông số kỹ thuật</h3>
            <hr>
        </div>
    </section>
</div>
<!-- product-describe end -->

<!-- product-similar start -->
<section class="container">
    <!-- title -->
    <div class="d-flex justify-content-between align-items-center">
        <h3>Sản phẩm liên quan</h3>
        <a href="#" class="text-decoration-none text-primary">Xem thêm >></a>
    </div>
    <!-- products -->
    <div class="row products">
        <div class="col-12 col-sm-6 col-lg-3 p-2 mb-2">
            <div class="card position-relative" style="width: 100%;">
                <div class="position-absolute top-0 start-0 bg-sale">15%</div>
                <img src="../public/upload/products/vn111342077qukwlf0rhzptr4i2ef.webp" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Kệ trang trí decor phòng - kệ vi sóng với nhiều tầng</h5>
                    <p class="card-text"><strong>500.000₫</strong> <span
                            class="text-secondary text-decoration-line-through">730.000₫</span></p>
                    <a href="#" class="btn btn-primary container-fluid">Thêm vào giỏ</a>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-lg-3 p-2 mb-2">
            <div class="card position-relative" style="width: 100%;">
                <div class="position-absolute top-0 start-0 bg-sale">15%</div>
                <img src="../public/upload/products/vn111342077qukwlf0rhzptr4i2ef.webp" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Kệ trang trí decor phòng - kệ vi sóng với nhiều tầng</h5>
                    <p class="card-text"><strong>500.000₫</strong> <span
                            class="text-secondary text-decoration-line-through">730.000₫</span></p>
                    <a href="#" class="btn btn-primary container-fluid">Thêm vào giỏ</a>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-lg-3 p-2 mb-2">
            <div class="card position-relative" style="width: 100%;">
                <div class="position-absolute top-0 start-0 bg-sale">15%</div>
                <img src="../public/upload/products/vn111342077qukwlf0rhzptr4i2ef.webp" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Kệ trang trí decor phòng - kệ vi sóng với nhiều tầng</h5>
                    <p class="card-text"><strong>500.000₫</strong> <span
                            class="text-secondary text-decoration-line-through">730.000₫</span></p>
                    <a href="#" class="btn btn-primary container-fluid">Thêm vào giỏ</a>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-lg-3 p-2 mb-2">
            <div class="card position-relative" style="width: 100%;">
                <div class="position-absolute top-0 start-0 bg-sale">15%</div>
                <img src="../public/upload/products/vn111342077qukwlf0rhzptr4i2ef.webp" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Kệ trang trí decor phòng - kệ vi sóng với nhiều tầng</h5>
                    <p class="card-text"><strong>500.000₫</strong> <span
                            class="text-secondary text-decoration-line-through">730.000₫</span></p>
                    <a href="#" class="btn btn-primary container-fluid">Thêm vào giỏ</a>
                </div>
            </div>
        </div>

    </div>
</section>
<!-- product-similar end -->
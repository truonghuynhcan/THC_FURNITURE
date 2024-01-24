<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>THC Furniture</title>
    <link rel="stylesheet" href="<?= APPURL ?>css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= APPURL ?>css/a_style.css">

    <link rel="stylesheet" href="<?= APPURL ?>fontawesome-free-6.5.1-web/css/all.min.css">
    <!-- thêm jquery chỉnh input:number -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>


    <!-- <script src="https://kit.fontawesome.com/0e14ebdea1.js" crossorigin="anonymous"></script> -->
</head>

<body class="bg-white">
    <header>
        <nav class="navbar navbar-expand-lg bg-light py-2 fixed-top">
            <div class="container">
                <!-- Logo -->
                <a class="navbar-brand fw-bold" href="<?= APPURL ?>page/index">THC <span
                        class="text-primary">Furniture</span></a>
                <!-- Toggle Btn -->
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- SideBar -->
                <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar"
                    aria-labelledby="offcanvasNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">THC <span
                                class="text-primary">Furniture</span></h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav nav-underline justify-content-center flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="<?= APPURL ?>page/index">Trang
                                    chủ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?= APPURL ?>page/contact">Giới thiệu</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                    aria-expanded="false">
                                    Sản phẩm
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Đèn trang trí</a></li>
                                    <li><a class="dropdown-item" href="#">Đồ trang trí</a></li>
                                    <li><a class="dropdown-item" href="#">Đồ nội thất</a></li>
                                    <li><a class="dropdown-item" href="#">Thiết bị vệ sinh</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Hệ thống</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Tin tức</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?= APPURL ?>page/contact">Liên hệ</a>
                            </li>
                        </ul>
                        <!-- Login / Sign up -->
                        <div class="d-flex justify-content-center align-items-center gap-3">
                            <div class="dropdown">
                                <button class="border-0 bg-transparent" type="button" data-bs-toggle="dropdown"
                                    aria-expanded="false">
                                    <i class="fa-regular fa-user"></i>
                                </button>
                                <?php if (!isset($_SESSION['user'])): ?>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li><a class="dropdown-item" href="<?= APPURL ?>user/login">Đăng nhập</a></li>
                                        <li><a class="dropdown-item" href="<?= APPURL ?>user/signup">Đăng ký</a></li>
                                    </ul>
                                <?php else: ?>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li><a class="dropdown-item" href="<?= APPURL ?>user/info">Tài khoản</a></li>
                                        <li><a class="dropdown-item" href="<?= APPURL ?>user/login">Quản lý đơn hàng</a>
                                        </li>
                                        <li class="border-top mt-2 py-1 opacity-75"><a class="dropdown-item"
                                                href="<?= APPURL ?>user/logout">Đăng xuất</a></li>
                                    </ul>
                                <?php endif; ?>
                                <!-- <ul class="dropdown-menu dropdown-menu-end">
                                    <li><a class="dropdown-item" href="?url=user/login">Đăng nhập</a></li>
                                    <li><a class="dropdown-item" href="?url=user/signup">Đăng ký</a></li>
                                </ul> -->
                            </div>
                            <a class="text-decoration-none text-black px-3 py-1 bg-primary rounded-4 text-white"
                                href="<?= APPURL ?>product/cart">
                                <i class="fa-solid fa-bag-shopping"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>
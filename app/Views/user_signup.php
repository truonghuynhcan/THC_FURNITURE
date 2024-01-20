<!-- signup star-->
<div class="container">
    <div class="row">
        <div class="col-0 col-md-1 col-lg-3 col-lg-4">
        <?php checkNoti();?>
        </div>
        <div class="col-12 col-md-10 col-lg-6 col-xl-4">
            <div class="row mb-3">
                <a href="?url=user/login" class="col-6 h6 text-center border-bottom pb-3 text-decoration-none text-body">ĐĂNG
                    NHẬP</a>
                <a href="?url=user/login"
                    class="col-6 h6 text-center border-bottom pb-3 text-decoration-none border-primary text-primary">ĐĂNG
                    KÝ</a>
            </div>
            <p class="fs-5 text-center">ĐĂNG KÝ</p>
            <form method="POST" action="" class="login">
                <div class="form-floating mb-3 border-bottom border-primary">
                    <input type="text" name="fullname" class="form-control" id="fullname" placeholder="Nguyễn Văn An">
                    <label for="fullname">Họ và tên</label>
                </div>
                <div class="form-floating mb-3 border-bottom border-primary">
                    <input type="tel" name="sdt" class="form-control" id="sdt" placeholder="0987654321">
                    <label for="sdt">Số điện thoại</label>
                </div>
                <div class="form-floating mb-3 border-bottom border-primary">
                    <input type="text" name="address" class="form-control" id="address" placeholder="Gò vấp, TP HCM">
                    <label for="address">Địa chỉ</label>
                </div>
                <div class="form-floating mb-3 border-bottom border-primary">
                    <input type="email" name="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">Email</label>
                </div>
                <div class="form-floating mb-3 border-bottom border-primary">
                    <input type="password" name="pass" class="form-control" id="pwd" placeholder="Password">
                    <label for="pwd">Mật khẩu</label>
                </div>
                <div class="form-floating mb-3 border-bottom border-primary">
                    <input type="password" name="repass" class="form-control" id="repwd" placeholder="Password">
                    <label for="repwd">Nhập lại mật khẩu</label>
                </div>
                <div class="d-grid mb-4">
                    <button type="submit" name="signup" class="btn btn-primary">Đăng ký</button>
                </div>
            </form>
            <div class="d-flex flex-column align-items-center gap-3 mb-5">
                <span>Hoặc đăng nhập bằng</span>
                <div>
                    <a class="btn text-white" style="background-color: #0056b3;" href="">Facebook</a>
                    <a class="btn btn-danger text-white " href="">Google</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- signup end-->
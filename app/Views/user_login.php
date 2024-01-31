<!-- login star-->
<div class="container">
    <div class="row">
        <div class="col-0 col-md-1 col-lg-3 col-lg-4"></div>
        <div class="col-12 col-md-10 col-lg-6 col-xl-4">
            <div class="row mb-3">
                <a href="?url=user/login"
                    class="col-6 h6 text-center border-bottom pb-3 text-decoration-none border-primary text-primary">ĐĂNG
                    NHẬP</a>
                <a href="?url=user/signup"
                    class="col-6 h6 text-center border-bottom pb-3 text-decoration-none text-body">ĐĂNG KÝ</a>
            </div>
            <p class="fs-5 text-center">ĐĂNG NHẬP</p>
            <?php checkNoti(); ?>
            <form method="POST" action="<?=APPURL?>user/login" class="login">
                <div class="form-floating mb-3 border-bottom border-primary">
                    <input type="email" name="email" class="form-control" id="floatingInput"
                        placeholder="name@example.com">
                    <label for="floatingInput">Email address</label>
                </div>
                <div class="form-floating mb-3 border-bottom border-primary">
                    <input type="password" name="pass" class="form-control" id="floatingPassword"
                        placeholder="Password">
                    <label for="floatingPassword">Mật khẩu</label>
                </div>
                <div class="d-grid mb-4">
                    <button type="submit" name="login" class="btn btn-primary">Đăng nhập</button>
                </div>
            </form>
            <div class="d-flex flex-column align-items-center gap-3 mb-5">
                <div class="container-fluid accordion accordion-flush" id="accordionFlushExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header text-center">
                            <button class="btn collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#flush-collapseOne" aria-expanded="false"
                                aria-controls="flush-collapseOne">
                                <a href="">Quên mật khẩu</a>
                            </button>
                        </h2>
                        <div id="flush-collapseOne" class="accordion-collapse collapse"
                            data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                <form method="post">
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Nhập Email</label>
                                        <input type="email" name="email" class="form-control" id="exampleInputEmail1"
                                            aria-describedby="emailHelp">
                                    </div>
                                    <button type="submit" name="repass" class="btn btn-primary container-fluid" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal">
                                        Lấy lại mật khẩu
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <span>Hoặc đăng nhập bằng</span>
                <div>
                    <a class="btn text-white" style="background-color: #0056b3;" href="">Facebook</a>
                    <a class="btn btn-danger text-white " href="">Google</a>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- login end-->
<!-- Modal -->
<!-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Lấy lại mật khẩu</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Mật khẩu mới đã được gửi đến Email
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary"  data-bs-dismiss="modal">Đóng</button>
      </div>
    </div>
  </div>
</div> -->
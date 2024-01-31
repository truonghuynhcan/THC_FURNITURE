<?php
use App\Controllers\CoreController;

class UserController extends CoreController
{
    public function cart()
    {
        $this->loadView('user_cart');
    }

    public function signup()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['signup'])) {
            // bắt lỗi
            // Form submitted, process data
            $fullname = $_POST['fullname'];
            $sdt = $_POST['sdt'];
            $address = $_POST['address'];
            $email = $_POST['email'];
            $pass = $_POST['pass'];
            $repass = $_POST['repass'];

            // Validate form fields
            $errors = [];

            // Validate Fullname
            if (empty($fullname)) {
                $errors['fullname'] = 'Họ và tên không được để trống';
            }

            // Validate Phone Number
            if (empty($sdt)) {
                $errors['sdt'] = 'Số điện thoại không được để trống';
            } elseif (!preg_match('/^\d{10,11}$/', $sdt)) {
                $errors['sdt'] = 'Số điện thoại không hợp lệ';
            }

            // Validate Address
            if (empty($address)) {
                $errors['address'] = 'Địa chỉ không được để trống';
            }

            // Validate Email
            if (empty($email)) {
                $errors['email'] = 'Email không được để trống';
            } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $errors['email'] = 'Email không hợp lệ';
            }

            // Validate Password
            if (empty($pass)) {
                $errors['pass'] = 'Mật khẩu không được để trống';
            } elseif (strlen($pass) < 6) {
                $errors['pass'] = 'Mật khẩu phải có ít nhất 6 ký tự';
            }

            // Validate Password Match
            if ($pass !== $repass) {
                $errors['repass'] = 'Mật khẩu không khớp';
            }


            // Instead of JavaScript alerts
            if (!empty($errors)) {
                // Store errors in the session variable
                showNoti($errors, 'danger');
            } else if ($this->checkEmail($email)) {
                // Email already used, display notification
                showNoti("Email đã được sử dụng!", "danger");
            } else {
                $user = $this->loadModel('User');
                $kq_login = $user->signup($fullname, $sdt, $address, $email, $pass);

                if ($kq_login) {
                    // Registration unsuccessful, display notification
                    showNoti("Đăng ký người dùng không thành công!", "danger");
                } else {
                    // Registration successful, perform login
                    showNoti("Đăng ký thành công, bắt đầu đăng nhập", "success");
                    header("Location: " . APPURL . "public/index.php?url=user/login");
                    exit();
                }
            }

        }
        $this->loadView('user_signup');
    }
    public function checkEmail($email)
    {
        $user = $this->loadModel('User');
        return $user->checkEmail($email);
    }

    public function login()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) {
            $user = $this->loadModel('User');
            $kq = $user->login($_POST['email'], $_POST['pass']);
            if ($kq) {
                // Lưu session
                $_SESSION['user'] = $kq;
                // chuyển trang
                header('Location: ' . APPURL);
                exit();
            } else {
                // báo lỗi
                showNoti("Sai email hoặc mật khẩu!", "danger");
            }
        }
        if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['repass'])) {
            $user = $this->loadModel('User');
            if ($this->checkEmail($_POST['email'])) {
                // email có trong db
                $kq = $user->rePass($_POST['email']);
                if ($kq) {
                    showNoti("Mật khẩu mới đã gửi đến email", "success");
                } else {
                    showNoti("Gửi email thất bại", "danger");
                }
            } else {
                showNoti("Email không tồn tại", "warning");
            }
        }

        $this->loadView('user_login');
    }

    public function logout()
    {
        unset($_SESSION['user']);
        header("Location: " . APPURL . "public/index.php?url=user/login");
        exit();
    }
}
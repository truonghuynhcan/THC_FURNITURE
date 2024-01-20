<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class UserModel extends CoreModel
{
    public function rePass($email)
    {
        // Tạo mật khẩu ngẫu nhiên có 8 chữ số
        $pass = mt_rand(10000000, 99999999);

        $isSent = $this->sendPasswordResetEmail($email, $pass);

        if ($isSent) {
            // Mã hóa mật khẩu mới
            $hashedPassword = md5($pass);

            // Cập nhật mật khẩu mới vào cơ sở dữ liệu
            $sql = "UPDATE taikhoan SET MatKhau = ? WHERE taikhoan.Email = ?;";
            $this->db->pdo_execute($sql, $hashedPassword, $email);
            return true;
        } else {
            return false;
        }
    }
    function sendPasswordResetEmail($email, $newPassword)
    {
        $mail = new PHPMailer(true); // True cho phép bắt lỗi

        try {
            // Cấu hình SMTP
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com'; // Thay thế bằng địa chỉ SMTP của bạn
            $mail->SMTPAuth = true;
            $mail->Username = 'truonghuynhcan@gmail.com'; // Thay thế bằng tên đăng nhập SMTP của bạn
            $mail->Password = 'vuqu tohl krhh uwlb'; // Thay thế bằng mật khẩu SMTP của bạn
            $mail->SMTPSecure = 'ssl';
            $mail->Port = 465;

            // Thiết lập thông tin người gửi và địa chỉ email
            $mail->setFrom('truonghuynhcan@gmail.com', 'THC Furniture'); // Thay thế bằng địa chỉ email của bạn và tên của bạn

            // Địa chỉ người nhậnq
            $mail->addAddress($email);

            // Chủ đề email
            $mail->Subject = 'New password';

            // Nội dung email
            $mail->Body = 'Mật khẩu mới của bạn là: ' . $newPassword;

            // Gửi email
            $mail->send();

            return true;
        } catch (Exception $e) {
            return false;
        }
    }


    public function checkEmail($email)
    {
        return $this->db->pdo_query_one("SELECT * FROM taikhoan WHERE Email=?", $email);
    }
    public function signup($fullname, $sdt, $address, $email, $pass)
    {
        $hashedPassword = md5($pass);

        $sql = "INSERT INTO taikhoan (Id, HoVaTen, SDT, DiaChi, Email, MatKhau, Quyen) VALUES (null,?,?,?,?,?,0)";
        return $this->db->pdo_execute($sql, $fullname, $sdt, $address, $email, $hashedPassword);
    }
    public function login($email, $pass)
    {
        $hashedPassword = md5($pass);
        return $this->db->pdo_query_one("SELECT * FROM taikhoan WHERE Email=? AND MatKhau=?", $email, $hashedPassword);
    }
}
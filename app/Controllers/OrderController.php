<?php
use App\Controller\CoreController;

class OrderController extends CoreController
{
    public function addVoucher()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $order = $this->loadModel('Order');
            $voucher = $this->loadModel('Voucher');
            // kiểm tra voucher hợp lệ

            # lấy voucher, người dùng
            $voucherCode = $_POST['voucher'];
            $IdUser = $_SESSION['user']['Id'];

            # truyền vào model check
            try {
                $isValidVoucher = $order->isValidVoucher($voucherCode);
            } catch (\Throwable $th) {
                showNoti("Mã giảm giá không hợp lệ hoặc đơn hàng không đủ điều kiện sử dụng", "warning");
            }

            // nếu hợp lệ -> add vào order
            if (isset($isValidVoucher)) {
                # code...
                print('hi');

            } else {
                # code...
                echo "Lỗi: Mã giảm giá không hợp lệ.";
            }


            // Nếu ko hợp lệ -> ko add và thông báo
        }
    }
}
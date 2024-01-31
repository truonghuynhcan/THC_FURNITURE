<?php
use App\Controllers\CoreController;

class OrderController extends CoreController
{
    public function addVoucher()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $order = $this->loadModel('Order');
            $voucher = $this->loadModel('Voucher');

            # lấy voucher, người dùng
            $voucherCode = $_POST['voucherCode'];
            $MaDH = $_POST['MaDH'];
            
            // kiểm tra voucher hợp lệ
            $checkVoucher = $voucher->checkVoucher($voucherCode);

            if($checkVoucher){
                $order->addVoucher($MaDH, $voucherCode);        
            }else{
                showNoti("Mã giảm giá không hợp lệ", "warning");
            }
            //tính số tiền được giảm dựa trên voucher
            header('Location:'.APPURL.'product/cart');
            // Nếu ko hợp lệ -> ko add và thông báo
        }
    }

   
}
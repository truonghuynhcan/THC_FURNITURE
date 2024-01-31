<?php
use App\Controllers\CoreController;

include_once 'CoreController.php';
class PageController extends CoreController
{
    public function checkout()
    {
        if (isset($_SESSION['user'])) {
            // xử lý đặt hàng
            if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['order'])) {
                // lấy thông tin người dùng
                $SoLuongSP = $_POST['countPro'];
                $TongTien =  $_POST['totalBill'];
                $NguoiNhan = $_POST['fullname'];
                $SDT = $_POST['sdt'];
                $DiaChiGiaoHang = $_POST['address'];
                $MaTK = $_SESSION['user']['Id'];
                //lấy thông tin sản phẩm

                // cập nhật giỏ hàng
                $order = $this->loadModel("order"); //load model
                $order->orderById($SoLuongSP, $TongTien, $NguoiNhan, $SDT, $DiaChiGiaoHang, $MaTK);
                showNoti('Bạn đã đặt hàng thành công', 'info');
                header('location: '.APPURL.'page/index');
            }

            // load view
            # ĐÃ đăng nhập
            $oder = $this->loadModel("cart"); //load model
            $cart = $oder->getProductInCart($_SESSION['user']['Id']); //lấy danh sách
            $data['cart'] = $cart;
        } else {
            # CHƯA đăng nhập
            //lấy danh sách từ session
            // $cart = $_SESSION['cart'];
            // $data['cart'] = $cart;
        }

        $this->loadView('page_checkout', $data);
    }
    public function index()
    {
        //load model
        $product = $this->loadModel('Product'); //load trong core controller
        $data['dsSP'] = $product->getAll();
        //load view
        $this->loadView('page_index', $data);
    }

    public function contact()
    {
        //load model

        //load view
        $this->loadView('page_contact');

    }

    public function about()
    {
        //load model

        //load view
    }
}
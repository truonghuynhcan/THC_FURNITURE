<?php
use App\Controllers\CoreController;

class ProductController extends CoreController
{
    public function detail($IdPro)
    {
        $oder = $this->loadModel("product");
        $data['pro'] = $oder->getOneProductById($IdPro);
        $this->loadView('product_detail', $data);
    }
    
    public function remoteProduct($IdSP)
    {
        $oder = $this->loadModel("cart");
        $oder->remoteProduct($IdSP, $_SESSION['user']['Id']);
        header("Location:" . APPURL . 'product/cart');
    }
    public function addToCart($MaSP)
    {
        // echo "Them san pham" . $MaSP;
        if (isset($_SESSION['user'])) {
            $MaTK = $_SESSION['user']['Id'];
            // da dang nhap -> luu db
            $order = $this->loadModel('Order');
            $cart = $order->getCartbyUser($MaTK);

            if (!$cart) {
                // chưa có giỏ hàng?
                #tạo giỏ hàng
                $order->addCart($MaTK);
                $cart = $order->getCartbyUser($MaTK);
            }
            #thêm sp vào giỏ
            $order->addProduct($cart['Id'], $MaSP);
        } else {
            /* chua dang nhap --> lưu vào session
            // có giỏ hàng chưa
            // chưa thì tạo giỏ hàng
            if (!isset($_SESSION['cart'])) {
                $_SESSION['cart'] = [];
            }

            $timthay = false;
            $i = 0;

            foreach ($_SESSION['cart'] as $sp) {
                if ($sp['Id'] == $MaSP) {
                    //đã có sp trong cart
                    $_SESSION['cart'][$i]['SoLuong']++;
                    $timthay = true;
                    break;
                }
                $i++;
            }
            if (!$timthay) {
                //Chưa có trong giỏ
                array_push($_SESSION['cart'], [
                    "Id" => $MaSP,
                    "SoLuong" => 1,
                ]);
            }
            */
        }

        // echo `<pre>`;
        // print_r($_SESSION['cart']);
        // echo `</pre>`;

        header("Location:" . APPURL . 'product/cart');
        // $this->cart();
    }

    public function cart()
    {
        if (isset($_SESSION['user'])) {
            $oder = $this->loadModel("cart");

            $cart = $oder->getProductInCart($_SESSION['user']['Id']);
            // print_r($cart);

            $data['cart'] = $cart;
            $this->loadView('product_cart', $data);
        } else {
            showNoti('Cần đăng nhập để thực hiện chức năng', 'info');
            header('Location: ' . APPURL . 'user/login');
        }

    }

    public function cartItem($MaDH, $MaSP, $type)
    {
        $order = $this->loadModel('order');
        if ($type == "increase") {
            $order->increaseItem($MaDH, $MaSP);
        } else {         
            $order->decreaseItem($MaDH, $MaSP);
        }
        header('Location: ' . APPURL . 'product/cart');
    }
}
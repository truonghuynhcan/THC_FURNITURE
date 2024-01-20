<?php
use App\Controller\CoreController;

class ProductController extends CoreController
{
    public function addToCart($MaSP)
    {
        echo "Them san pham" . $MaSP;
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
            // chua dang nhap --> lưu vào session
            // có giỏ hàng chưa
            // chưa thì tạo giỏ hàng
            if(!isset($_SESSION['cart'])){
                $_SESSION['cart'] = [];
            }

            $timthay = false;
            $i=0;

            foreach($_SESSION['cart'] as $sp){
                if($sp['Id']==$MaSP){
                    //đã có sp trong cart
                    $_SESSION['cart'][$i]['SoLuong']++;
                    $timthay=true;
                    break;
                }
                $i++;
            }
            if(!$timthay){
                //Chưa có trong giỏ
                array_push($_SESSION['cart'],[
                    "Id" => $MaSP,
                    "SoLuong" => 1,
                ]);
            }
        }

        echo `<pre>`;
        print_r($_SESSION['cart']);
        echo `</pre>`;

        // header("Location:".APPURL);
    }

    public function cart(){
        $oder= $this->loadModel("cart");

        // đã đăng nhập -> load cart từ db
        if(isset($_SESSION['user'])){
            $cart = $oder->getProductInCart($_SESSION['user']['Id']);
            print_r($cart);
        }

        $data['cart']= $cart;
        // Chưa đăng nhập -> load cảt từ sesion và db
        $this->loadView('product_cart',$data['cart']);
    }
}
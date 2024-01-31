<?php
use App\Controllers\CoreController;
class ad_dashboardController extends CoreController{
    public function index(){
        //load model
        // $product = $this->loadModel('Product'); //load trong core controller
        $dashboard = $this->loadModel('ad_dashboard'); //load trong core controller

        $data['countOder'] = $dashboard->countOrder();
        $data['countUser'] = $dashboard->countUser();
        $data['SumIncome'] = $dashboard->SumIncome();
        $data['Orders'] = $dashboard->getOrderAll();
        // $data['dsSP'] = $product->getAll();
        //load view
        $this->loadViewAdmin('dashboard', $data);
    }
}

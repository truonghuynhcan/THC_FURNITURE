<?php
use App\Controller\CoreController;
include_once 'CoreController.php';
class PageController extends CoreController
{
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
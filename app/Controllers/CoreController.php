<?php
namespace App\Controllers;

class CoreController
{
    public function loadViewAdmin($viewName, $data = [])
    {
        // $data['dsSP']
        extract($data);
        // $dsSP
        include_once '../app/Views/ad_layout_header.php';
        include_once '../app/Views/ad_' . $viewName . '.php';
        include_once '../app/Views/ad_layout_footer.php';
    }

    public function loadView($viewName, $data = [])
    {
        // $data['dsSP']
        extract($data);
        // $dsSP
        include_once '../app/Views/layout_header.php';
        include_once '../app/Views/' . $viewName . '.php';
        include_once '../app/Views/layout_footer.php';
    }

    public function loadModel($modelName)
    {
        /*
            $modelName = 'User';
            $model = UserModel
            new UserModel()
        */
        $model = $modelName . 'Model';
        return new $model();
        // return new $model($modelName.'Model');

    }

}
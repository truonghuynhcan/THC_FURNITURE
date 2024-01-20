<?php
// namespace Libraries;
class Core{
    protected $controller = 'Page';
    protected $method = 'index';
    protected $params = [];

    public function __construct(){
        include_once '../app/Controllers/PageController.php';

        if(isset($_GET['url'])){
            // print_r($_GET['url']);
            $url = explode('/', $_GET['url']);
            // print_r($url);
            $this->controller = $url[0];
            unset($url[0]);
            $this->method = $url[1];
            unset($url[1]);

            $this->params = array_values($url);
        }


        spl_autoload_register(function($class){
            // echo '<u>'.$class.'</u>';
           $controllerPath="../app/Controllers/".$class.".php";
           $modelPath="../app/Models/".$class.".php";
           $libPath="../app/Libraries/".$class.".php";
           if(file_exists($controllerPath)){
                include_once $controllerPath;
           }
           if(file_exists($modelPath)){
                include_once $modelPath;
           }
           if(file_exists($libPath)){
                include_once $libPath;
           }
        });

        $controller = $this->controller.'Controller';
        $ctrl = new $controller();

        //                  $ctrl       ->index     ($params);
        call_user_func_array([$ctrl, $this->method],$this->params);
        
    }
}
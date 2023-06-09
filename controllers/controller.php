<?php
    require_once ("models/model.php");
    session_start();

    class Controller
    {
        public $model;

        public function __construct()
        {
            $this->model = new Model();
        }
        public function invoke()
        {

            if (isset($_SESSION['username']))
            {
                //Tổng số sản phẩm
                $numberrow = $this->model->getnumberrow();
                
                if (isset($_GET["search"])) {
                    $cars = $this->model->Search($_GET["search"]);
                    include "views/carsearch.php";
                    return;
                }
				if(isset($_GET["dklt"]))
				{
                    $listcars = $this->model->getallcarlist();
					// $tinhthanhpholist = $this->model->getalltinhthanhpholist();
					// $dailylist=$this->model->getalldailylist();
                    include "views/dangkylaithu.php";
					return;
                }
				if(isset($_POST["hovaten"])&&isset($_POST["sodienthoai"])&&isset($_POST["tenxe"])&&isset($_POST["ngaydukien"]))
				{
					//$ttp =$this->model->gettinhthanhpho($_POST['tinhthanhpho']);
					$this->model->insert_dklt($_POST["hovaten"],$_POST["tenxe"],$_POST["sodienthoai"],$_POST["ngaydukien"],$_SESSION['username'] );
					$car = $this->model->getCar($_POST["tenxe"]);
					//$daily=$this->model->getdaily($_POST['daily']);
					include"views/dangkylaithusubmit.php";
					return;
                }
                if(!isset($_GET["carid"])){
                    $cars = $this->model->getcarlistbypage();
                    include"views/home.php";
                }
                else
                {
                    $_SESSION['carid']=$_GET['carid'];
                    $car = $this->model->getCar($_GET["carid"]);
                    $numberrow = $this->model->getnumberrow();
                    $a = rand(1, $numberrow);
                    $b = rand(1, $numberrow);
                    for( ; ; ){
                        if($a != $b && $a != $_GET["carid"] && $b != $_GET["carid"]){
                            $cartempt1 = $this->model->getCar("$a");
                            $cartempt2 = $this->model->getCar("$b");
                            break;
                        }else{
                            $a = rand(1, $numberrow);
                            $b = rand(1, $numberrow);
                        }
                    }
                    if (isset($_POST['submit'])) {
                        $name = $_SESSION['username'];  
                        $comment = $_POST['comment'];
                        $carid = $_SESSION['carid'];
                  Model::addComment($name,$carid,$comment);
                      }
                    $comments = $this->model->getListComment($_SESSION['carid']);
                  
                    include "views/viewcar.php";
                }
				
            }   
        }

        //Hàm đăng nhập
        public function Login($username, $password)
        {
            $a = $this->model->Login($username, $password);
            if ($a == 1) {
                $_SESSION['username'] = $username;
                $_SESSION['password'] = $password;
            }
        }

        //Hàm đăng ký
        public  function Register($username, $password)
        {
            return $this->model->Register($username, $password);
        }
        
        //Hàm thao tác trong admin
        public function invokeadmin()
        {
            if (isset($_SESSION['username']))
            {
                if (isset($_GET["search"])) {
                    $cars = $this->model->Search($_GET["search"]);
                    include "views/admin.php";
                    return;
                }

                if(!isset($_GET["carid"])){
                    $cars = $this->model->getcarlistbypage();
                    include "views/admin.php";
                }
                else{
                    $car = $this->model->getCar($_GET["carid"]);
                    $carname = ""; $cartitle = ""; $carprice = ""; $carimage = ""; $carimage1 = ""; $carimage2 = ""; $cardescription = ""; $carnumberofseats = ""; $carstyle = ""; $carfuel = ""; $carorigin = ""; $cargear = "";
                    include "views/updatecar.php";
                    $this->model->getupdatecar($carname, $cartitle, $carprice, $carimage, $carimage1, $carimage2, $cardescription, $carnumberofseats, $carstyle, $carfuel, $carorigin, $cargear, $_GET["carid"]);
                }
            }
        }
    }
?>
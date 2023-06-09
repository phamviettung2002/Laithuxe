<?php
    require_once("models/car.php");
	require_once("models/dangkylaithu.php");
    require_once("models/db_module.php");
    require_once("models/danhsach.php");
    require_once("models/tatcadanhsach.php");
    require_once('models/comment.php');
    class Model 
    {
        public function getproductofpage(){
            $productofpage = 3;
            return $productofpage;
        }
        public function getpage(){
            $page = isset($_GET['page'])?$_GET['page']:1;
            $page = is_numeric($page)?$page:1;
            return $page;
        }
        public function getfrom(){
            $page = $this->getpage();
            $productofpage = $this->getproductofpage();
            $from = ($page - 1)*$productofpage;
            return $from;
        }

        // Lấy danh sách xe theo trang sản phẩm
        public function getcarlistbypage()
        {
            $link = null;
            taoKetNoi($link);
            $from = $this->getfrom();
            $productofpage = $this->getproductofpage();

            if(isset($_GET['dm'])){
                $result = chayTruyVanTraVeDL($link, "select * from tbl_car where id=".$_GET['dm']." limit ".$from.", ".$productofpage);
            }else{
                $result = chayTruyVanTraVeDL ($link, "select * from tbl_car limit ".$from.", ".$productofpage);
            }
            
            $data = array ();
            while ($rows = mysqli_fetch_assoc($result)){
                $car = new Car ($rows["id"], $rows["name"], $rows["title"], $rows["price"], $rows["color"], $rows["image"], $rows["image1"], $rows["image2"], $rows["description"], $rows["numberofseats"], $rows["style"], $rows["fuel"], $rows["origin"], $rows["gear"]);
                array_push($data, $car);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }

        // Lấy danh sách tất cả các xe
        public function getallcarlist()
        {
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL ($link, "select * from tbl_car");
            $data = array ();
            while ($rows = mysqli_fetch_assoc($result)){
                $car = new Car ($rows["id"], $rows["name"], $rows["title"], $rows["price"], $rows["color"], $rows["image"], $rows["image1"], $rows["image2"], $rows["description"], $rows["numberofseats"], $rows["style"], $rows["fuel"], $rows["origin"], $rows["gear"]);
                array_push($data, $car);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }

        //Lấy danh sách xe đã đăng ký theo tên
        public function getcarsub ($username)
        {
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL ($link, "SELECT tbl_car.name, tbl_dangkylaithu.ngaydukien FROM (tbl_car INNER JOIN tbl_dangkylaithu ON tbl_car.id = tbl_dangkylaithu.id_car) WHERE tbl_dangkylaithu.username ="."'$username'");
            $data = array ();
            while ($rows = mysqli_fetch_assoc($result)){
                $car = new danhsach ($rows["name"], $rows["ngaydukien"]);
                array_push($data, $car);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }

        //admin lấy danh sách xe đã đăng ký 
        public function getallcarsub ()
        {
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL ($link, "SELECT tbl_car.name, tbl_car.price, tbl_dangkylaithu.ngaydukien, tbl_dangkylaithu.hovaten, tbl_dangkylaithu.sodienthoai FROM (tbl_car INNER JOIN tbl_dangkylaithu ON tbl_car.id = tbl_dangkylaithu.id_car) ");
            $data = array ();
            while ($rows = mysqli_fetch_assoc($result)){
                $car = new tatcadanhsach ($rows["name"], $rows["price"], $rows["hovaten"], $rows["sodienthoai"], $rows["ngaydukien"] );
                array_push($data, $car);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }
        // Lấy xe theo id
        public function getcar($id)
        {
            $allcars = $this->getallcarlist();
            foreach($allcars as $car){
                if ($car->getid()===$id){
                    return $car;
                }
            }
            return null;   
        }

        //Lấy tổng số sản phẩm
        public function getnumberrow(){
            $link = null;
            taoKetNoi($link);
            if(isset($_GET['dm'])){
                $result = chayTruyVanTraVeDL($link, "select count(*) from tbl_car where id = ".$_GET["dm"]);
            }else{
                $result = chayTruyVanTraVeDL ($link, "select count(*) from tbl_car");
            }
            $numberrow = mysqli_fetch_row($result);
            giaiPhongBoNho($link, $result);
            return $numberrow[0];
        }

        // Hàm đăng nhập
        public function Login($username, $password)
        {
            $link = null;
            taoKetNoi($link);
            $cautruyvan = "select * from tbl_user  where username = '$username' AND password='$password'";
            $result = chayTruyVanTraVeDL($link, $cautruyvan);
        
            $count = mysqli_num_rows($result);
            giaiPhongBoNho($link, $result);
            
            return $count;
        }

        // Hàm tìm kiếm
        public function Search($keyword)
        {
            $link = null;
            taoKetNoi($link);
            $from = $this->getfrom();
            $productofpage = $this->getproductofpage();
        
            $result = chayTruyVanTraVeDL($link, "select * from tbl_car where name like '%$keyword%'");
            $data = array();
            while ($rows = mysqli_fetch_assoc($result)) {
                $car = new Car($rows["id"], $rows["name"], $rows["title"], $rows["price"], $rows["color"], $rows["image"], $rows["image1"], $rows["image2"], $rows["description"], $rows["numberofseats"], $rows["style"], $rows["fuel"], $rows["origin"], $rows["gear"]);
                array_push($data, $car);
            }
            giaiPhongBoNho($link, $result);
            return $data;
        }

        // Hàm đăng ký
        public function Register($username, $password)
        {
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanKhongTraVeDL($link, "INSERT INTO tbl_user (username, password) VALUES ('$username','$password')");
        
        }
		

		//thêm dữ liệu trên bảng đăng ký lái thử
		 public function insert_dklt($hovaten,$id_car,$sodienthoai,$ngaydukien, $username)
        {
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanKhongTraVeDL($link, "INSERT INTO tbl_dangkylaithu VALUES ('$hovaten','$id_car','$sodienthoai','$ngaydukien','$username')");
        }
        //Thêm bình luận
        public static function addComment($name,$carid,$comment){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanKhongTraVeDL($link, "INSERT INTO comments (username,carid, comment) VALUES ('$name','$carid', '$comment')");
        }
        //lấy bình luận
        public function getListComment($carid){
            $link = null;
            taoKetNoi($link);
            $result = chayTruyVanTraVeDL($link, "SELECT * FROM comments WHERE carid=$carid ORDER BY created_at DESC");
            $data = array ();
            while ($row = mysqli_fetch_assoc($result)) {
              $comment = new comment($row["username"],$row["comment"],$row["created_at"]);
              array_push($data,$comment);
                }
            return $data;
        }
		
    }
?>
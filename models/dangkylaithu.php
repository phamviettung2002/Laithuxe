<?php
class dangkylaithu
{
	private $hovaten;
	private $id_car;
	private $sodienthoai;
	private $ten_tinhthanhpho;
	private $ngaydukien;
	private $username;
	
	public function gethovaten(){return $this->hovaten;}
	public function getid_car(){return $this->id_car;}
	//public function getid_daily(){return $this->id_daily;}
	public function getsodienthoai(){return $this->sodienthoai;}
	public function getngaydukien(){return $this->ngaydukien;}
	public function getusername(){return $this->username;}

	function __construct($_hovaten,$_id_car,$_sodienthoai,$_ngaydukien, $_username){
		$this->hovaten = $_hovaten;
		$this->id_car = $_id_car;
		$this->sodienthoai = $_sodienthoai;
		$this->ngaydukien = $_ngaydukien;
		$this->username = $_username;
	}
}
?>
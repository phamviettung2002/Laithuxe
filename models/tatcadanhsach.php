<?php
class tatcadanhsach
{
	private $ten_xe;
    private $price;
    private $hovaten;
    private $sodienthoai;
	private $thoigianlai;
	
	public function getten_xe(){return $this->ten_xe;}
    public function getprice(){return $this->price;}
    public function gethovaten(){return $this->hovaten;}
    public function getsodienthoai(){return $this->sodienthoai;}
	public function getthoigianlai(){return $this->thoigianlai;}
	
	function __construct($ten_xe, $price, $hovaten, $sodienthoai,  $thoigianlai){
		$this->ten_xe = $ten_xe;
		$this->price = $price;
        $this->hovaten = $hovaten;
        $this->sodienthoai = $sodienthoai;
		$this->thoigianlai = $thoigianlai;
	}
}
?>
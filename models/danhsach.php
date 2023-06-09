<?php
class danhsach
{
	private $ten_xe;

	private $thoigianlai;
	
	public function getten_xe(){return $this->ten_xe;}

	public function getthoigianlai(){return $this->thoigianlai;}
	
	function __construct($ten_xe, $thoigianlai){
		$this->ten_xe = $ten_xe;
		
		$this->thoigianlai = $thoigianlai;
	}
}
?>
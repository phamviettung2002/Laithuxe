<?php
class comment{
    private $name;
    private $comment;
    private $date;
    
    public function getName(){return $this->name;}
    public function getComment(){return $this->comment;}
    public function getDate(){return $this->date;}
    public function __construct($name,$comment,$date)
    {
        $this->name=$name;
        $this->comment= $comment;
        $this->date=$date;

    }

}
  
?>
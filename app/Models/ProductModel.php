<?php
class ProductModel extends CoreModel{
    public function getAll(){
        return $this->db->pdo_query("SELECT * FROM sanpham");
    }
}
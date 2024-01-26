<?php
class ProductModel extends CoreModel
{
    public function getProLimit($limit){
        return $this->db->pdo_query("SELECT * FROM sanpham LIMIT ?",$limit);
    }
    public function getOneProductById($IdPro)
    {
        return $this->db->pdo_query_one("SELECT * FROM sanpham sp WHERE Id = ?", $IdPro);
    }
    public function getAll()
    {
        return $this->db->pdo_query("SELECT * FROM sanpham");
    }
}
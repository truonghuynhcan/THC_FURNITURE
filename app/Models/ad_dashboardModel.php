<?php
class ad_dashboardModel extends CoreModel
{
    public function SumIncome()
    {
        return $this->db->pdo_query_one("SELECT SUM('ThanhTien') AS DoanhThu FROM donhang");
    }
    public function countOrder()
    {
        return $this->db->pdo_query_one("SELECT COUNT(*) AS SoDH FROM donhang");
    }
    public function countUser()
    {
        return $this->db->pdo_query_one("SELECT COUNT(*) AS SoTK FROM taikhoan");
    }
    public function getOrderAll()
    {
        return $this->db->pdo_query(
            "SELECT 
                dh.*,
                tk.HoVaTen AS 'TaiKhoan'
            FROM 
                donhang dh
            JOIN 
                taikhoan tk ON dh.MaTK = tk.Id;
        ");
    }


}

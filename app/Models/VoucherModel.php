<?php
class Voucher extends CoreModel
{
    public function chechVoucher($MaGG)
    {
        //voucher có tồn tại
        $voucher = $this->db->pdo_query_one("SELECT * FROM magiamgia WHERE MaGG = ?", $MaGG);
        if (!$voucher) {
            return false;
        }

        // check còn lượt sử dụng
        if ($voucher['SoLuong'] <= 0)
            return false;

        // voucher còn hạn
        $now = new DateTime();
        if (!(new DateTime($voucher['NgayBatDau']) <= $now || $now <= new DateTime($voucher['NgayKetThuc'])))
            return false;



    }
}
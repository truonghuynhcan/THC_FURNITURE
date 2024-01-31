<?php
class OrderModel extends CoreModel
{
    // tăng giảm số lượng sp
    public function increaseItem($MaDH, $MaSP)
    {
        return $this->db->pdo_execute("UPDATE chitietdonhang 
        SET SoLuong = SoLuong+1
        WHERE MaSP =? AND MaDH =? ", $MaSP, $MaDH);
    }
    public function decreaseItem($MaDH, $MaSP)
    {
        return $this->db->pdo_execute("UPDATE chitietdonhang 
        SET SoLuong = SoLuong-1
        WHERE MaSP =? AND MaDH =? ", $MaSP, $MaDH);
    }

    
    // sử lý voucher
    public function addVoucher($MaDH, $voucher)
    {
        return $this->db->pdo_execute("UPDATE donhang SET MaGG =? WHERE Id =?", $voucher, $MaDH);
    }
    public function isValidVoucher($voucher)
    {
        return $this->db->pdo_query_one("SELECT * FROM magiamgia WHERE MaGG =?", $voucher);
    }



    public function getProductInCart()
    {
        return $this->db->pdo_query("SELECT * FROM chitietdonhang ctdh
        INNER JOIN sanpham sp ON ctsp.MaSP = sp.Id");
    }
    public function getCartbyUser($MaTK)
    { // kiểm tra lại
        return $this->db->pdo_query_one("SELECT * FROM donhang WHERE MaTK =? AND TrangThai='gio-hang'", $MaTK);
    }

    public function addCart($MaTK)
    {
        return $this->db->pdo_execute("INSERT INTO donhang (`MaTK`) VALUES(?)", $MaTK);
    }

    public function addProduct($MaDH, $MaSP)
    {
        $kq = $this->hasCart($MaDH, $MaSP);
        // Chưa có sp trong cart
        if ($kq) {
            // có sp trong cart
            #tăng số lượng sp
            return $this->db->pdo_execute("UPDATE chitietdonhang SET SoLuong = SoLuong+1 WHERE MaDH =? AND MaSP =?", $MaDH, $MaSP);
        } else {
            // KO sp trong cart
            #thêm sp vào
            return $this->db->pdo_execute("INSERT INTO chitietdonhang (`MaDH`, `MaSP`) VALUES(?,?)", $MaDH, $MaSP);
        }
    }

    // kiểm tra sp có trong cart chưa
    public function hasCart($MaDH, $MaSP)
    {
        return $this->db->pdo_query_one("SELECT * FROM chitietdonhang WHERE MaDH =? AND MaSP =?", $MaDH, $MaSP);
    }
}
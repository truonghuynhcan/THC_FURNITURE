<?php
class CartModel extends CoreModel
{
    public function remoteProduct($IdSP, $IdUser)
    {
        return $this->db->pdo_execute("DELETE FROM chitietdonhang 
        WHERE MaDH IN (SELECT Id FROM donhang WHERE MaTK = ?) 
        AND MaSP = ?", $IdUser, $IdSP);
    }
    public function getProductInCart($IdUser)
    {
        return $this->db->pdo_query("SELECT 
        sp.Id,
        sp.Anh AS AnhSP,
        sp.TenSanPham AS TenSP,
        sp.DonGia,
        sp.TonKho,
        ctdh.SoLuong,
        dh.Id as MaDH
    FROM 
        donhang dh
    JOIN 
        chitietdonhang ctdh ON dh.Id = ctdh.MaDH
    JOIN 
        sanpham sp ON ctdh.MaSP = sp.Id
    JOIN 
        taikhoan tk ON dh.MaTK = tk.Id

    WHERE 
        tk.Id = ?", $IdUser);
    }
}
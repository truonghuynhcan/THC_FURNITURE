<?php
class ad_productsModel extends CoreModel
{
    public function updateProduct($IdSP, $TenSP, $ThuonHieu, $DonGia, $GiamGia, $KichThuoc, $MauSac, $TonKho, $MoTa, $MoTaCT, $TrangThai){
        return $this->db->pdo_execute("UPDATE sanpham
        SET
            TenSanPham = ?,
            ThuongHieu = ?,
            DonGia = ?,
            GiamGia = ?,
            KichThuoc = ?,
            MauSac = ?,
            TonKho = ?,
            MoTa = ?,
            MoTaCT = ?,
            TrangThai = ?
        WHERE Id= ?",$TenSP, $ThuonHieu, $DonGia, $GiamGia, $KichThuoc, $MauSac, $TonKho, $MoTa, $MoTaCT, $TrangThai, $IdSP);

    }
    public function showProUpdate_img($IdSP){
        return $this->db->pdo_query("SELECT 
            a.*
            FROM anhsp a
        WHERE IdSP = ?
        ", $IdSP);
    }
    public function showProUpdate($IdSP){
        return $this->db->pdo_query_one("SELECT 
            sp.*,
            dm.Ten AS 'Loai',
            IFNULL(COUNT(ctdh.MaSP), 0) AS 'LuotBan'
        FROM 
            sanpham sp
        JOIN danhmuc dm ON sp.IdDM = dm.Id
        LEFT JOIN 
            chitietdonhang ctdh ON sp.Id = ctdh.MaSP
        LEFT JOIN 
            donhang dh ON ctdh.MaDH = dh.Id
        WHERE sp.Id = ?
        ", $IdSP);
    }
    public function showProAll()
    {
        return $this->db->pdo_query("SELECT 
            sp.*,
            dm.Ten AS 'Loai',
            IFNULL(COUNT(ctdh.MaSP), 0) AS 'LuotBan'
        FROM 
            sanpham sp
        JOIN danhmuc dm ON sp.IdDM = dm.Id
        LEFT JOIN 
            chitietdonhang ctdh ON sp.Id = ctdh.MaSP
        LEFT JOIN 
            donhang dh ON ctdh.MaDH = dh.Id
        GROUP BY
            sp.Id
        ",);
    }
}

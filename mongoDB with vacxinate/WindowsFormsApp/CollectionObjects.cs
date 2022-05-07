using MongoDB.Bson;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GUI
{
    class CollectionObjects
    {

    }
    public class VacXin
    {
        public ObjectId _id { get; set; }
        public string MaVX { get; set; }
        public string TenVX { get; set; }
        public string PhongBenh { get; set; }
        public int GiaBan { get; set; }
        public int SoLuong { get; set; }
        public string MaLoai { get; set; }
        public string NuocSX { get; set; }
    }
    public class MatHang
    {
        public ObjectId _id { get; set; }
        public string MaMH { get; set; }
        public string TenMH { get; set; }
        public string DonVi { get; set; }
        public int GiaBan { get; set; }
        public int SoLuong { get; set; }
        public string MaLH { get; set; }
        public object Anh { get; set; }
    }

    public class LoaiHang
    {
        public ObjectId _id { get; set; }
        public string MaLH { get; set; }
        public string TenLH { get; set; }
    }
    public class MatHangLoaiHang
    {
        public ObjectId _id { get; set; }
        public string MaMH { get; set; }
        public string TenMH { get; set; }
        public string DonVi { get; set; }
        public int GiaBan { get; set; }
        public int SoLuong { get; set; }
        public string MaLH { get; set; }
        public object Anh { get; set; }
        public string TenLH { get; set; }
    }

    public class NhaCungCap
    {
        public ObjectId _id { get; set; }
        public string MaNCC { get; set; }
        public string TenNCC { get; set; }
        public string DiaChi { get; set; }
        public string SDT { get; set; }
        public string Email { get; set; }
    }

    public class HoaDon
    {
        public ObjectId _id { get; set; }
        public string MaHD { get; set; }
        public string MaKH { get; set; }
        public DateTime NgayTao { get; set; }
        public string MaNV { get; set; }
        public int TongTien { get; set; }
    }

    public class ChiTietHD
    {
        public ObjectId _id { get; set; }
        public string MaHD { get; set; }
        public string MaMH { get; set; }
        public int SoLuong { get; set; }
        public double DonGia { get; set; }
    }

    public class PhieuNhap
    {
        public ObjectId _id { get; set; }
        public string MaPN { get; set; }
        public string MaNCC { get; set; }
        public DateTime NgayNhap { get; set; }
        public string MaNV { get; set; }
    }
    public class ChiTietPN
    {
        public ObjectId _id { get; set; }
        public string MaPN { get; set; }
        public string MaMH { get; set; }
        public int SoLuong { get; set; }
        public double DonGia { get; set; }
    }
}

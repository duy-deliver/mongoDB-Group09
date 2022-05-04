using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace connect_mongo
{
    class CollectionObjects
    {
    }
    public class VacXin
    {
        public string _id { get; set; }
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
        public string _id { get; set; }
        public string MaMH { get; set; }
        public string TenMH { get; set; }
        public string DonVi { get; set; }
        public int GiaBan { get; set; }
        public int SoLuong { get; set; }
        public string MaLH { get; set; }
        public object Anh { get; set; }
    }

    public class ChiTietPN
    {
        public string MaPN { get; set; }
        public string MaMH { get; set; }
        public int SoLuong { get; set; }
        public double DonGia { get; set; }
    }

    public class LoaiHang
    {
        public string _id { get; set; }
        public string MaLH { get; set; }
        public string TenLH { get; set; }
    }
    public class MatHangLoaiHang
    {
        public string _id { get; set; }
        public string MaMH { get; set; }
        public string TenMH { get; set; }
        public string DonVi { get; set; }
        public int GiaBan { get; set; }
        public int SoLuong { get; set; }
        public string MaLH { get; set; }
        public object Anh { get; set; }
        public string TenLH { get; set; }
    }
}

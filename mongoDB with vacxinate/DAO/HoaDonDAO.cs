using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;
using DTO;
using WindowsFormsApp;
using MongoDB.Driver;

namespace DAO
{
    public class HoaDonDAO
    {
        private static HoaDonDAO instance;

        public HoaDonDAO()
        {
        }

        public static HoaDonDAO Intance
        {
            get { if (instance == null) instance = new HoaDonDAO(); return instance; }
            set => instance = value;
        }

        public string LoadMaDHMoi() // no used
        {
            string madh = "";

            madh = "DH" + DateTime.Now.Day.ToString("00") + DateTime.Now.Month.ToString("00") + DateTime.Now.Year.ToString("0000");

            string query = String.Format("SELECT dbo.fn_Get_MaDonHang_Next( @MaHD )");

            object madh_next = DataProvider.Instance.ExecuteScalar(query, new object[] { madh });

            if (madh_next.ToString() == "")
            {
                madh_next = madh + "001";
            }
            return madh_next.ToString();
        }



        public bool LuuDonHang(HoaDonDTO dh)  //no used
        {
            // Convert datetime to date SQL Server 
            string query = String.Format("insert into HoaDon values('{0}','{1}','{2}','{3}','{4}')", dh.MaHD, dh.MaKH, dh.NgayTao, dh.MaNV, dh.TongTien);
            int result = DataProvider.Instance.ExecuteNonQuery(query);
            return result > 0;
        }



        public DataTable LoadDanhSachDonHangTheoKH(string MaKH) //no used
        {
            string query = "select * from HoaDon where MaKH ='" + MaKH + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            return data;
        }



        // CHÍ

        public DataTable TKHoaDon(DateTime ngaybd, DateTime ngaykt)  //prio pending
        {
            string query = "select HoaDon.MaHD as [Mã hóa đơn],KhachHang.TenKH as [Tên khách hàng],NgayTao as [Ngày tạo],TongTien[Tổng tiền],TenHienThi as [Nhân viên tạo] from HoaDon inner join KhachHang on HoaDon.MaKH = KhachHang.MaKH inner join NhanVien on NhanVien.MaNV = HoaDon.MaNV where  NgayTao between '" + ngaybd + "' and '" + ngaykt + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            return data;
        }


        public DataTable TongTienHoaDon()
        {
            //string query = "select sum(Tongtien) as [Tổng tiền hóa đơn]from Hoadon";
            //DataTable data = DataProvider.Instance.ExecuteQuery(query);

            var collection = MongoConnect.Instance.database.GetCollection<HoaDon>("HoaDon");
            var query = collection.Aggregate()
                                .Group(
                                        doc => doc.TongTien,
                                        group => new
                                        {
                                            Total = group.Sum(y => y.TongTien)
                                        }
                                ).ToList();
            Console.WriteLine(query.First().ToString());
            var data = MongoConnect.toDataTable(query);

            data.Columns["Total"].ColumnName = "Tổng tiền hóa đơn";

            return data;
        }


        public DataTable TongTienTheoNgay(DateTime ngaybd, DateTime ngaykt)
        {
            string query =  "select sum(Tongtien) as [Tổng tiền hóa đơn]from Hoadon where NgayTao between '" + ngaybd + "' and '" + ngaykt + "'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            return data;
        }






    }
}

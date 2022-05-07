using DTO;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WindowsFormsApp;

namespace DAO
{
    public class LoaiHangDAO
    {
        private static LoaiHangDAO instance;

        public LoaiHangDAO()
        {
        }

        public static LoaiHangDAO Intance
        {
            get { if (instance == null) instance = new LoaiHangDAO(); return instance; }
            set => instance = value;
        }


        public List<LoaiHangDTO> getListLoaiHang()
        {
            List<LoaiHangDTO> list = new List<LoaiHangDTO>();

            //DataTable data = DataProvider.Instance.ExecuteQuery("select * from LoaiHang");

            var collection = MongoConnect.Instance.database.GetCollection<LoaiHang>("LoaiHang");
            var query = collection.AsQueryable()
                                   .Select(p => p)
                                   .ToList();
            var data = MongoConnect.toDataTable(query);

            foreach (DataRow item in data.Rows)
            {
                LoaiHangDTO loaihang = new LoaiHangDTO(item);
                list.Add(loaihang);
            }
            return list;
        }


        public DataTable TimKiemTenMH(string tenLH)  //pending
        {
            string query = "select TenMH from MatHang inner join LoaiHang on MatHang.MaLH = LoaiHang.MaLH where TenLH = N'"+ tenLH +"'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query, new object[] { tenLH });
            return data;
        }



        public DataTable TimKiemMaMH(string tenLH)  // ???
        {
            //string query = "select MaMH,GiaBan from MatHang  where TenMH = N'" + tenLH + "'";
            //DataTable data = DataProvider.Instance.ExecuteQuery(query);

            var collection = MongoConnect.Instance.database.GetCollection<MatHang>("MatHang");
            var query = collection.AsQueryable()
                                   .Where(p => p.TenMH == tenLH)
                                   .Select(p => new { p.MaMH, p.GiaBan })
                                   .ToList();
            var data = MongoConnect.toDataTable(query);

            return data;
        }


        public DataTable TimKiemMaMH1 (string tenMH)
        {
            //string query = "select MaMH from MatHang  where TenMH = N'" + tenMH + "'";
            //DataTable data = DataProvider.Instance.ExecuteQuery(query, new object[] { tenMH });

            var collection = MongoConnect.Instance.database.GetCollection<MatHang>("MatHang");
            var query = collection.AsQueryable()
                                   .Where(p => p.TenMH == tenMH)
                                   .Select(p => p.TenMH)
                                   .ToList();
            var data = MongoConnect.toDataTable(query);

            return data;
        }



        public DataTable  DemMaLH () // no used
        {
            string query = "select MaLH from LoaiHang";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            return data;
        }


        public bool ThemLH (string maLH, string tenLH)
        {
            string query = String.Format("insert into LoaiHang(MaLH,TenLH) values ('{0}',N'{1}')", maLH,tenLH);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            var collection = MongoConnect.Instance.database.GetCollection<LoaiHang>("LoaiHang");

            var document = new LoaiHang();
            document.MaLH = maLH;
            document.TenLH = tenLH;

            collection.InsertOneAsync(document);

            return true;
        }
    }
}

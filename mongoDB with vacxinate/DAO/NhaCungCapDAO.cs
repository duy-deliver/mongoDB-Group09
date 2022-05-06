using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using MongoDB.Driver;
using WindowsFormsApp;

namespace DAO
{
    public class NhaCungCapDAO
    {
        private static NhaCungCapDAO instance;

        public NhaCungCapDAO()
        {
        }

        public static NhaCungCapDAO Intance
        {
            get { if (instance == null) instance = new NhaCungCapDAO(); return instance; }
            set => instance = value;
        }

        public List<NhaCungCapDTO> getListNCC()
        {
            List<NhaCungCapDTO> list = new List<NhaCungCapDTO>();
            //string query = "select * from NhaCungCap";
            //DataTable data = DataProvider.Instance.ExecuteQuery(query);

            var collection = MongoConnect.Instance.database.GetCollection<NhaCungCap>("NhaCungCap");
            var query = collection.AsQueryable()
                                   .Select(p => p)
                                   .ToList();
            var data = MongoConnect.toDataTable(query);

            foreach (DataRow item in data.Rows)
            {
                NhaCungCapDTO hangHoa = new NhaCungCapDTO(item);
                list.Add(hangHoa);
            }
            return list;
        }


        public DataTable HienThi()
        {
            //string query = "select MaNCC as [Mã nhà cung cấp], TenNCC as [Tên nhà cung cấp], SDT  as [Số điện thoại], DiaChi as [Địa chỉ], Email from NhaCungCap";
            //DataTable dt = DataProvider.Instance.ExecuteQuery(query);

            var collection = MongoConnect.Instance.database.GetCollection<NhaCungCap>("NhaCungCap");
            var query = collection.AsQueryable()
                                   .Select(p => new 
                                   {
                                       p.MaNCC, p.TenNCC, p.SDT, p.DiaChi, p.Email
                                   })
                                   .ToList();

            var data = MongoConnect.toDataTable(query);

            data.Columns["MaNCC"].ColumnName = "Mã nhà cung cấp";
            data.Columns["TenNCC"].ColumnName = "Tên nhà cung cấp";
            data.Columns["SDT"].ColumnName = "Số điện thoại";
            data.Columns["DiaChi"].ColumnName = "Địa chỉ";

            return data;

        }

        public bool themNCC(string mancc, string tenncc, string diachi, string sdt, string email)
        {
            //string query = String.Format("insert into NhaCungCap(MaNCC, TenNCC, DiaChi, SDT, Email) values ('{0}', N'{1}', N'{2}', N'{3}', N'{4}')", mancc,tenncc,diachi,sdt,email);
            //int result = DataProvider.Instance.ExecuteNonQuery(query);

            var collection = MongoConnect.Instance.database.GetCollection<NhaCungCap>("NhaCungCap");

            var document = new NhaCungCap();
            document.MaNCC = mancc;
            document.TenNCC = tenncc;
            document.DiaChi = diachi;
            document.SDT = sdt;
            document.Email = email;

            collection.InsertOneAsync(document);

            return true;
        }

        public bool suaNCC(string mancc, string tenncc, string diachi, string sdt, string email)
        {
            //string query = String.Format("update NhaCungCap set TenNCC = N'"+tenncc+"', DiaChi = N'"+diachi+"', SDT = '"+sdt+"', Email = '"+email+"' where MaNCC = '"+mancc+"'");
            //int result = DataProvider.Instance.ExecuteNonQuery(query);

            var collection = MongoConnect.Instance.database.GetCollection<NhaCungCap>("NhaCungCap");

            var result = collection.UpdateOneAsync(
                filter: w => w.MaNCC == mancc,
                update: Builders<NhaCungCap>.Update.Set(m => m.TenNCC, tenncc)
                                                .Set(m => m.DiaChi, diachi)
                                                .Set(m => m.SDT, sdt)
                                                .Set(m => m.Email, email)
                                                );

            return true;
        }

        public bool xoaNCC(string maKH) //pending
        {
            string query = String.Format("delete from NhaCungCap where MaNCC = '{0}'", maKH);
            int result = DataProvider.Instance.ExecuteNonQuery(query);
            return result > 0;
        }

        public string loadMaNCC() // no used
        {
            string maKHnext = "NCC001";
            string query = "select top 1 MaNCC from NhaCungCap order by MaNCC desc";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            if (data.Rows.Count > 0)
            {
                DataRow data2 = data.Rows[0];
                string maKH = data2["MaNCC"].ToString();
                maKHnext = maKH.Substring(3);
                int i = Convert.ToInt32(maKHnext);
                i = i + 1;
                if (i < 100 && i > 9)
                {
                    maKHnext = "NCC0" + i;
                }
                else if (i < 10) maKHnext = "NCC00" + (i);
                else
                {
                    maKHnext = "NCC" + i;
                }
            }

            return maKHnext;
        }

        public DataTable TimKiemNCC(string maPN) //pending
        {
            string query = "select MaNCC as [Mã nhà cung cấp], TenNCC as [Tên nhà cung cấp], SDT  as [Số điện thoại], DiaChi as [Địa chỉ], Email from NhaCungCap where MaNCC like N'%"+maPN+ "%' or TenNCC like N'%" + maPN + "%'";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            return data;
        }

    }
}

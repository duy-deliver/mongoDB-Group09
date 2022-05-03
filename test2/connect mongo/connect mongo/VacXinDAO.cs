using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace connect_mongo
{
    class VacXinDAO
    {
        public DataTable getListSanPham()
        {
            var collection = MongoConnect.Instance.database.GetCollection<VacXin>("VacXin");

            var query = collection.AsQueryable()
                                   .Select(p => p)
                                   .ToList();

            Console.WriteLine(query.ToJson());

            return MongoConnect.toDataTable(query);
        }

        public bool LuuHH(string mh, string tenh, string madv, int sl, int dg, string maLH)
        {
            // Convert datetime to date SQL Server 
            //string query = String.Format(" insert into MatHang (MaMH,TenMH,DonVi,SoLuong,GiaBan,MaLH)  values('{0}',N'{1}',N'{2}','{3}','{4}','{5}')", mh, tenh, madv, sl, dg, maLH);
            //var collection = MongoConnect.Instance.database.GetCollection<VacXin>("VacXin");
            //DataProvider.Instance.ExecuteQuery(query);

            var collection = MongoConnect.Instance.database.GetCollection<MatHang>("MatHang");

            var document = new MatHang();
            document.MaMH = mh;
            document.TenMH = tenh;
            document.DonVi = madv;
            document.SoLuong = sl;
            document.GiaBan = dg;
            document.MaLH = maLH;

            collection.InsertOneAsync(document);

            return true;
        }
        public bool UpdateSoLuongMH(string mahh, int sl)
        {
            // Convert datetime to date SQL Server 
            var collection = MongoConnect.Instance.database.GetCollection<MatHang>("MatHang");

            var result = collection.UpdateOneAsync(
                filter: w => w.MaMH == mahh,
                update: Builders<MatHang>.Update.Set(m => m.SoLuong, sl));

            Console.WriteLine(result);
            return true;
        }
        public bool UpdateSoLuongMHSauNhap(string mahh, int sl)
        {
            // Convert datetime to date SQL Server 
            var collection = MongoConnect.Instance.database.GetCollection<MatHang>("MatHang");

            var slcur = collection.AsQueryable()
                .Where(w => w.MaMH == mahh)
                .Select(w => w.SoLuong)
                .FirstOrDefault();
                
            var result = collection.UpdateOneAsync(
                filter: w => w.MaMH == mahh,
                update: Builders<MatHang>.Update.Set(m => m.SoLuong, slcur + sl));

            Console.WriteLine(result);
            return true;
        }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace connect_mongo
{
    class ChiTietPNDAO
    {
        public bool LuuChitietPN(string mapn, string mahh, int sl, int dongia)
        {
            // Convert datetime to date SQL Server 
            var collection = MongoConnect.Instance.database.GetCollection<ChiTietPN>("ChiTietPN");

            var document = new ChiTietPN();
            document.MaPN = mapn;
            document.MaMH = mahh;
            document.SoLuong = sl;
            document.DonGia = dongia;

            collection.InsertOneAsync(document);
            return true;
        }
    }
}

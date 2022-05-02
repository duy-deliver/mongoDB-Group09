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
    }
}

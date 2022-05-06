using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MongoDB.Driver;
using MongoDB.Bson;
using System.IO;
using MongoDB.Bson.IO;
using MongoDB.Bson.Serialization;
using Newtonsoft.Json;
using System.Data;
using FastMember;
using System.Reflection;

namespace DAO
{
    class MongoConnect
    {
        private static MongoConnect instance; // Ctrl + R + E
        public IMongoDatabase database;

        public static MongoConnect Instance
        {

            get
            {
                if (instance == null)
                {
                    instance = new MongoConnect();
                }
                return MongoConnect.instance;
            }
            private set { MongoConnect.instance = value; }
        }

        public MongoConnect()
        {
            MongoClient dbClient = new MongoClient("mongodb://sa:root@localhost:27017");
            database = dbClient.GetDatabase("HeThongTiemChung");
            //col = collection.Find("hello");
        }

        [Obsolete]
        public static string ToJson(BsonDocument bson)
        {
            using (var stream = new MemoryStream())
            {
                using (var writer = new BsonBinaryWriter(stream))
                {
                    BsonSerializer.Serialize(writer, typeof(BsonDocument), bson);
                }
                stream.Seek(0, SeekOrigin.Begin);
                using (var reader = new Newtonsoft.Json.Bson.BsonReader(stream))
                {
                    var sb = new StringBuilder();
                    var sw = new StringWriter(sb);
                    using (var jWriter = new JsonTextWriter(sw))
                    {
                        jWriter.DateTimeZoneHandling = DateTimeZoneHandling.Utc;
                        jWriter.WriteToken(reader);
                    }
                    return sb.ToString();
                }
            }
        }

        private static DataTable ReverseDataTableColumns(DataTable sourceDataTable)
        {
            if (sourceDataTable.Rows.Count > 0)
            {
                DataTable dtReversed = new DataTable();
                var se = sourceDataTable.Columns.Cast<DataColumn>().Reverse().ToArray();
                dtReversed.Columns.AddRange(sourceDataTable.Columns.Cast<DataColumn>().Reverse().Select(x => new DataColumn(x.ColumnName)).ToArray());
                for (int j = 0; j < sourceDataTable.Rows.Cast<DataRow>().Select(x => x.ItemArray.Reverse()).Count(); j++)
                {
                    dtReversed.Rows.Add();
                    var row = sourceDataTable.Rows.Cast<DataRow>().Select(x => x.ItemArray.Reverse()).ElementAt(j);
                    for (int k = 0; k < row.Count(); k++)
                    {
                        dtReversed.Rows[j][k] = row.ElementAt(k);
                    }
                }
                return dtReversed;
            }
            else
            {
                return sourceDataTable;
            }
        }

        //public static DataTable toDataTable<T>(List<T> data)
        //{
        //    DataTable table = new DataTable();
        //    using (var reader = ObjectReader.Create(data))
        //    {
        //        table.Load(reader);
        //    }
        //    return table;
        //}

        public static DataTable toDataTable<T>(List<T> items)
        {
            DataTable dataTable = new DataTable(typeof(T).Name);

            //Get all the properties
            PropertyInfo[] Props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);
            foreach (PropertyInfo prop in Props)
            {
                //Setting column names as Property names
                dataTable.Columns.Add(prop.Name);
            }
            foreach (T item in items)
            {
                var values = new object[Props.Length];
                for (int i = 0; i < Props.Length; i++)
                {
                    //inserting property values to datatable rows
                    values[i] = Props[i].GetValue(item, null);
                }
                dataTable.Rows.Add(values);
            }
            //put a breakpoint here and check datatable
            return dataTable;
        }
    }
}
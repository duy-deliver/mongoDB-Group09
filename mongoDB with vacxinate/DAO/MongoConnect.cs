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
using System.ComponentModel;

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

        public static DataTable toDataTable<T>(IList<T> data)
        {
            PropertyDescriptorCollection properties =
                TypeDescriptor.GetProperties(typeof(T));
            DataTable table = new DataTable();
            foreach (PropertyDescriptor prop in properties)
                table.Columns.Add(prop.Name, Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType);
            foreach (T item in data)
            {
                DataRow row = table.NewRow();
                foreach (PropertyDescriptor prop in properties)
                    row[prop.Name] = prop.GetValue(item) ?? DBNull.Value;
                table.Rows.Add(row);
            }
            return table;
        }
    }
}
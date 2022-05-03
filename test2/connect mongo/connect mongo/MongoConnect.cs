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

    public static DataTable toDataTable<T>(List<T> data)
    {
        DataTable table = new DataTable();
        using (var reader = ObjectReader.Create(data))
        {
            table.Load(reader);
        }
        return table;
    }
}

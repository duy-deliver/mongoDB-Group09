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

namespace connect_mongo
{
    public class Event
    {
        public string _id { get; set; }
        public string MaCLV { get; set; }
        public string Ca { get; set; }

    }

    class Program
    {
        static string ToJson(BsonDocument bson)
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
        static void Main(string[] args)
        {
            MongoClient dbClient = new MongoClient("mongodb://sa:root@localhost:27017");

            var dbList = dbClient.ListDatabases().ToList();

            Console.WriteLine("The list of databases on this server is: ");
            foreach (var db in dbList)
            {
                Console.WriteLine(db);
            }

            var database = dbClient.GetDatabase("test");
            var collection = database.GetCollection<BsonDocument>("NhanVien");

            var builder = Builders<BsonDocument>.Filter;

            var userName = "phuong";
            var passWord = "123";

            var filter = builder.Eq("TenDangNhap", userName) & builder.Eq("MatKhau", passWord);

            //var firstDocument = collection.Find($"{{TenDangNhap : {userName}, MatKhau : {passWord} }}").ToList();
            //var firstDocument = collection.Find($"{{ MaCLV: '{userName}'}}").ToList();
            //var firstDocument = collection.Find(x => x.MaCLV == userName && x.Ca == passWord).ToList();
            var firstDocument = collection.Find(filter).ToList();

            foreach (BsonDocument doc in firstDocument)
            {
                Console.WriteLine(doc);
            }

            Console.WriteLine(ToJson(firstDocument[0]));

            //Console.WriteLine(firstDocument.ToString());

            //var command = "";

            //var firstDocument = database.RunCommand<BsonDocument>(command);

            Console.ReadKey();
        }
    }
}

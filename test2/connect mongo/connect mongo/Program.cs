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
using System.Data.SqlClient;
using System.ComponentModel;
using System.Reflection;

namespace connect_mongo
{
    public class Event
    {
        public string _id { get; set; }
        public string MaCLV { get; set; }
        public string Ca { get; set; }

    }
    public class MyClass
    {
        public Version MyVersion { get; set; }
    }
    public class DataTableConverter
    {
        public DataTable ToDataTable<T>(List<T> items)
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





    class Program
    {
        
        public static DataTable GetDataTableFromMongoCursor(MongoCursor cursor)
        {
            if (cursor != null && cursor.Count() > 0)
            {

                DataTable dt = new DataTable(cursor.ToString());
                foreach (BsonDocument doc in cursor)
                {

                    foreach (BsonElement elm in doc.Elements)
                    {
                        if (!dt.Columns.Contains(elm.Name))
                        {
                            dt.Columns.Add(new DataColumn(elm.Name));
                        }

                    }
                    DataRow dr = dt.NewRow();
                    foreach (BsonElement elm in doc.Elements)
                    {
                        dr[elm.Name] = elm.Value;

                    }
                    dt.Rows.Add(dr);
                }
                return dt;

            }
            return null;
        }
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

        static void MongoC()
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

            var myObj = BsonSerializer.Deserialize<MyClass>(firstDocument[0]);

            //DataTableConverter converter = new DataTableConverter();
            //var result = converter.ToDataTable(firstDocument);

            //foreach (BsonDocument doc in firstDocument)
            //{
            //    Console.WriteLine(doc);
            //    Console.WriteLine(doc["MatKhau"]);

            //    DataTable dt = new DataTable();
            //    dt.Clear();
            //    dt.Columns.Add("MaNV");
            //    dt.Columns.Add("TenHienThi");
            //    dt.Columns.Add("GioiTinh");
            //    dt.Columns.Add("DiaChi");
            //    dt.Columns.Add("SDT");
            //    dt.Columns.Add("Quyen");
            //    dt.Columns.Add("TenDangNhap");
            //    dt.Columns.Add("MatKhau");
            //    dt.Columns.Add("Email");
            //    DataRow _ravi = dt.NewRow();
            //    _ravi["MaNV"] = doc["MaNV"];
            //    _ravi["TenHienThi"] = doc["TenHienThi"];
            //    _ravi["GioiTinh"] = doc["GioiTinh"];
            //    _ravi["DiaChi"] = doc["DiaChi"];
            //    _ravi["SDT"] = doc["SDT"];
            //    _ravi["Quyen"] = doc["Quyen"];
            //    _ravi["TenDangNhap"] = doc["TenDangNhap"];
            //    _ravi["MatKhau"] = doc["MatKhau"];
            //    _ravi["Email"] = doc["Email"];
            //    dt.Rows.Add(_ravi);
            //}


            //Console.WriteLine(ToJson(firstDocument[0]));

            //Console.WriteLine(result.Rows[0]);

            //var command = "";

            //var firstDocument = database.RunCommand<BsonDocument>(command);
        }


        //-----------------------sql Zone---------------------------------------
        static SqlConnection sqlConnection()
        {
            var str = @"Data Source=.;Initial Catalog=HeThongTiemChung;Integrated Security=True";

            return new SqlConnection(str);
        }
        static DataTable ExecuteQuery(string query, object[] parameter = null)
        {

            DataTable data = new DataTable();

            using (SqlConnection connection = sqlConnection())
            {
                connection.Open();

                SqlCommand command = new SqlCommand(query, connection);

                if (parameter != null)
                {
                    string[] listPara = query.Split(' ');
                    int i = 0;
                    foreach (string item in listPara)
                    {
                        if (item.Contains('@'))
                        {
                            command.Parameters.AddWithValue(item, parameter[i]);
                            i++;
                        }
                    }
                }

                SqlDataAdapter adapter = new SqlDataAdapter(command);

                adapter.Fill(data);

                connection.Close();
            }

            return data;
        }

        static void SqlLike()
        {
            var userName = "phuong";
            var passWord = "123";
            string query = "SELECT * FROM NhanVien WHERE TenDangNhap = N'" + userName + "' AND MatKhau = N'" + passWord + "'";

            DataTable result = ExecuteQuery(query);

            //Console.WriteLine(result.Rows[0]);

            foreach (DataRow row in result.Rows)
            {
                string tk = row["TenDangNhap"].ToString();
                string pass = row["MatKhau"].ToString();
                string addrs = row["DiaChi"].ToString();
                Console.WriteLine(tk + " " + pass + " " + addrs);
            }
        }

        //-----------------------sql Zone---------------------------------------

        static void Main(string[] args)
        {

            //MongoC();
            //SqlLike();

            VacXinDAO vx = new VacXinDAO();
            //vx.getListSanPham();
            //vx.LuuHH("VX034", "Vtra 0.5ml", "lọ ", 5, 4, "LH002");
            vx.UpdateSoLuongMHSauNhap("VX002", 69);

            ChiTietPNDAO ctpn = new ChiTietPNDAO();
            //ctpn.LuuChitietPN("PN009", "VX007", 3, 135000);

            Console.ReadKey();
        }
    }
}

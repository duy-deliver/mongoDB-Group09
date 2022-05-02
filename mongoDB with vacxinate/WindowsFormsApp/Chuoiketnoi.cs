using System.Data.SqlClient;

namespace WindowsFormsApp
{
    class Chuoiketnoi
    {
        string str;
        public Chuoiketnoi()
        {
            str = @"Data Source=minhho;Initial Catalog=[HeThongTiemChung];Integrated Security=True";
        }

        public SqlConnection sqlConnection()
        {
            return new SqlConnection(str);
        }
    }
}

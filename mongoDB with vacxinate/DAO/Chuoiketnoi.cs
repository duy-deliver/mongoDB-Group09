using System.Data.SqlClient;

namespace DAO
{
    public class Chuoiketnoi
    {
        string str;
        public Chuoiketnoi()
        {
            str = @"Data Source=.;Initial Catalog=HeThongTiemChung;Integrated Security=True";
        }

        public SqlConnection sqlConnection()
        {
            return new SqlConnection(str);
        }
    }
}

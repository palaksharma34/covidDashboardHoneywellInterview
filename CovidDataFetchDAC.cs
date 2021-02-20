using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;

namespace DataAccessLayer
{
    public class CovidDataFetchDAC
    {
        static void Main()
        {

        }
        public DataTable getCovidData()
        {
            DataTable dtData = new DataTable();
            string connetionString;
            SqlConnection con;

            connetionString = @"Data Source=WIN-50GP30FGO75;Initial Catalog=Demodb;User ID=palak_Sharma;Password=demol23";
            con = new SqlConnection(connetionString);
            con.Open();
            try
            {
                dtData = (SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "spCovidData")).Tables[0];

                return dtData;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
    }
}

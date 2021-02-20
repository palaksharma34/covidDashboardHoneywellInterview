using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DataAccessLayer;

namespace BusinessLayer
{
    public class CovidDataFetchBIZ
    {
        DataAccessLayer.CovidDataFetchDAC covidDataFetchDAC = new CovidDataFetchDAC();
        static void Main()
        {

        }
        public DataTable getCovidData()
        {
            DataTable dtData = new DataTable();
            try
            {
                dtData = covidDataFetchDAC.getCovidData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dtData;
        }
    }
}

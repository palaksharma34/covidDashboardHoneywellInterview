using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
using System.Data;

namespace CovidDashboardHoneyWell.ASPX
{
    public partial class DashBoard : System.Web.UI.Page
    {
        CovidDataFetchBIZ covidDataFetchBIZ = new CovidDataFetchBIZ();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtCovidData = new DataTable();
            dtCovidData = covidDataFetchBIZ.getCovidData();

            grdCovidData.DataSource= dtCovidData;
            grdCovidData.DataBind();


        }
    }
}
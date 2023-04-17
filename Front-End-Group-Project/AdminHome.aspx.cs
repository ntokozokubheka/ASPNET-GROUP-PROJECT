using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class AdminHome : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            TotalUsers.Text = Convert.ToString(client.Reports(5));

            ActiveUsrs.Text = Convert.ToString(client.Reports(3));

            TotalProd.Text = Convert.ToString(client.Reports(2));

 
            FewStock.Text= Convert.ToString(client.Reports(3));

            totalOrd.Text = Convert.ToString(client.Reports(4));
            TotalPendingOrd.Text = Convert.ToString(1+client.Reports(1)- client.Reports(4));
            
        }
    }
}
using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            int b = Convert.ToInt32(Session["UserID"]);

            dashi.Visible = false;
            //int a = client.NumberItemsIncart(b);



                if (Session["Username"] == null)
            {
                Log_out.Visible = false;
                EditU.Visible = false;
                Username.Visible = false;
                invoice.Visible = false;
             
            }

            if (Session["Username"] != null)
            {


                Username.InnerHtml = Convert.ToString(Session["Username"]);
                Reg.Visible = false;
                EditU.Visible = true;
                Log_in.Visible = false;
                Log_out.Visible = true;
                invoice.Visible = true;

                //  Cart.Text = Convert.ToString(a);

            }

            if (Convert.ToString(Session["Username"]) == "MA" )
            {
                dashi.Visible = true;


            }


        }


    }


            
}
  
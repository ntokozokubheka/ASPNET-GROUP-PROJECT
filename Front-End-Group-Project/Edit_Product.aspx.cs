using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class Edit_Product : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["Username"] == null)
            {

                
            }


            int IdP = Convert.ToInt32(Request.QueryString["ID"]);

            var SingleProduct = client.GetProduct(Convert.ToInt32(Request.QueryString["ID"]));



            P_name.Text = SingleProduct.P_name;
            P_price.Text = SingleProduct.P_price;
            P_descri.Text = SingleProduct.P_description_;






        }

        protected void Button1_Click(object sender, EventArgs e)
        { /*
            int IdP = Convert.ToInt32(Request.QueryString["ID"]);
            bool editBook = client.EditProduct(IdP, P_name.Text, P_price.Text, P_descri.Text,Convert.ToInt32( P_quantity.Text ));


            if (editBook == true)
            {

                Response.Redirect("Home.aspx");
            }
            */
        }
    }
}
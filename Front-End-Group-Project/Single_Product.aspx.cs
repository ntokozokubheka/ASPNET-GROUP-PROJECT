using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class Single_Product : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)

        {

            if (Session["Username"] == null)
            {

                TextBox1.Visible = false;
                Button1.Visible = false;
            }


            var SingleProduct = client.GetProduct(Convert.ToInt32(Request.QueryString["ID"]));


            if (SingleProduct == null)
            {

                Response.Redirect("Home.aspx ");
            }
            else
            {
                string display = "";


                display += "<div>";

                display += " <img src=' images/" + SingleProduct.P_Img + "'height ='200px' width ='200px' > ";
                display += "<div>";
                display += "<ul>";
                display += "  <li> <i>Name :</i>" + SingleProduct.P_name + "</li>";

                display += "  <li> <i> Price :<i/> R" + SingleProduct.P_price + " </li>";

                display += "  <li> <i>description  : </i> <p> " + SingleProduct.P_description_ + "  <p> </li>";
                display += "</div> </div>";

                display += "     </div>";

                ProductLoad.InnerHtml = display;



            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            int UserId = Convert.ToInt32(Session["UserID"]);


            bool checkS = client.CheckCart(UserId, Convert.ToInt32(Request.QueryString["ID"]));

            if (checkS == true)
            {
                Response.Redirect("Cart.aspx");
            }
            else
            {

                bool addTocartBase = client.AddToCart(UserId, Convert.ToInt32(Request.QueryString["ID"]), Convert.ToInt32(TextBox1.Text));

                Response.Redirect("Home.aspx");
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Spark_Fiddle.ServiceReference1;

namespace S215046165_P05_NH_KUNHEKA
{
    public partial class ChangeQuantity : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
           



        }

        protected void Button1_Click(object sender, EventArgs e)
        {


           int UserId = Convert.ToInt32(Session["UserID"]);


            int PId = Convert.ToInt32(Request.QueryString["ProductId"]);


            bool ChangeQ = client.EditCart(UserId, PId, Convert.ToInt32(ChangQuantity.Value));

            Response.Redirect("Cart.aspx");



        }
    }
}
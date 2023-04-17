using Spark_Fiddle.ServiceReference1;
using System;

namespace Spark_Fiddle
{
    public partial class CheckOut : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {



            if (Session["UserID"] == null)
            {
                Response.Redirect("Home.aspx");
            }

            Points.Text = Convert.ToString(Session["UsernamePoints"]);

            var UserCartList = client.GetCARTList(Convert.ToInt32(Session["UserID"]));

            string display = "";

            display += "<h4> Cart";
            display += "<span class='price' style='color: black'>";
            display += "<i class='fa fa-shopping-cart'></i>";
            display += " <b></b> ";
            display += "</span></h4> ";



            foreach (SHOPPING_CART sc in UserCartList)
            {


                var qua = sc.Order_Quantity;
                var item = client.GetProduct(sc.Product_ID);
                display +="<p><a href='#'>"+ item.P_name +"</a><span class='price'>R"+ item.P_price +"</span></p>";

            }



            display += "<hr>";
            display += "<p>Total<span class='price' style='color:black'><b> R "+ Convert.ToString(Session["Total"]) +"</b></span></p>";
            ProdoList.InnerHtml = display;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            string InvD = "2020-10-15";

            string InvA = "2020-10-22";
            string VAT = ccnum.Value;
            int ShippingCost = 0;
            int a = 3;
           string status ="100";
            string usedPoits = "100";
            string _discount = "100";

            bool addInvoice =client.CreateInvoice(Convert.ToInt32(Session["UserID"]),a,usedPoits, Convert.ToString(Session["Total"]), InvD, InvA, city.Value, state.Value, zip.Value,status, ShippingCost,VAT,_discount);


            var UserCartist = client.GetCARTList(Convert.ToInt32(Session["UserID"]));


            foreach (SHOPPING_CART s in UserCartist)
            {



                int UserId = Convert.ToInt32(Session["UserID"]);
                
                bool RemoveItemDatabase = client.RemoveItemCart(UserId, s.Product_ID);

                // bool ChangeQuantityOfStock = client.Checkout(s.Product_ID, s.Order_Quantity);


            }

            

            
           



            Response.Redirect("InvoicePage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            decimal a = Convert.ToDecimal(Session["Total"]);
            decimal b = Convert.ToDecimal(Session["UsernamePoints"]);

            decimal c = a - b;

            Session["Total"] = Convert.ToString(Math.Round(c, 2));

            Response.Redirect("Checkout.aspx");

        }
    }
}






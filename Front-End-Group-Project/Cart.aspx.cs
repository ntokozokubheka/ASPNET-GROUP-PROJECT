using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            var Userz = client.GetUserList();


            var UserCartList = client.GetCARTList(Convert.ToInt32(Session["UserID"]));

            string display = "";


            decimal total = 0;
            decimal totalperItem = 0;

            display += "<div class='table-responsive'>";
            display += "<table class='table table'>";
            display += "<thead>";
            display += " <tr>";
            display += " <th scope ='col'>Image</th>";
            display += " <th scope='col'>Name</th>";
            display += "  <th scope = 'col' >Price</th>";

            display += "  <th scope = 'col' > Quantinty</th>";

            display += "  <th scope ='col'>Total</th>";
            display += "  <th scope ='col'>changeQuantity</th>";

            display += "  <th scope ='col'>Remove</th>";

            display += "  </tr>";
            display += " </thead>";
            display += " <tbody>";

            int UserId = Convert.ToInt32(Session["UserID"]);
            string a = "3";
            foreach (SHOPPING_CART sc in UserCartList)

            {
                
                var qua = sc.Order_Quantity;
                var item = client.GetProduct(sc.Product_ID);

                totalperItem = Convert.ToDecimal(Convert.ToInt32(item.P_price)*qua);


                display += " <tr>";
                display += "<td> < img src ='images/"+item.P_Img +"'width='47' height='47'/></td>";
                  
                 display += "<td>" + item.P_name + "</td>";

                display += "<td>" + Convert.ToDecimal(item.P_price) + "</td>";

                display += "<td>" + sc.Order_Quantity +"</td>";

                display += "<td>" + Math.Round(totalperItem,2) + "</td>";
                display += "<td><a href ='RemoveCart.aspx?ID='"+item.Id+ "'class='remove_cart'>Remove</a></td>";

                display += "<td><a href ='RemoveCart.aspx?ID="+item.Id +"'class='remove_cart'>Remove</a></td>";

                display += "</tr>";

                total += totalperItem;

             
           

                bool orderlist = client.addOrder(UserId,item.P_price,a,sc.Order_Quantity,item.P_name);


            }


            display += "  </table></div>";

            tableS.InnerHtml = display;
          

            total = total - 100; 
            decimal vat =  Math.Round(total * Convert.ToDecimal(0.15), 2);


            VAT.Text =Convert.ToString(vat);
           

            Session["Total"]=Convert.ToString( Math.Round(total, 2));

            TOTAL.Text = Convert.ToString(Math.Round(total, 2));
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {


            var UserC = client.GetCARTList(Convert.ToInt32(Session["UserID"]));


            foreach (SHOPPING_CART s in UserC)

            {
                

            }

            Response.Redirect("Checkout.aspx");

        }
    }
}
     


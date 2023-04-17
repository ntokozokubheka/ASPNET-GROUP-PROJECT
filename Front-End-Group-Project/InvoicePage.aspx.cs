using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class InvoicePage : System.Web.UI.Page
    {   Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            APPROVE.Visible = false;

            int a = 3;
            var GetInv = client.GetInv(Convert.ToInt32(Session["UserID"]), a);
            var GetOrders = client.GetOderLIst(a);

            int b = GetInv.Status;

            if (GetInv.Status == 0)
            {

                Approved.Visible = false;
            }
            else
            {
                PENDING.Visible = false;
            }


            if (Convert.ToString(Session["UserType"])!= "CU")
            {

                APPROVE.Visible = true;

            }


            if (Request.QueryString["ID"] != null)
            {
                
                
                 GetInv = client.GetInv(73,Convert.ToInt32(Request.QueryString["ID"]));


                GetOrders = client.GetOderLIst(Convert.ToInt32(GetInv.Order_ID));
            }
            
          

                
          

             string display = "";

            Acc.Text = GetInv.VAT;
            UserName.Text = Convert.ToString(Session["Username"]);
            Adress11.Text = GetInv.Adressline_1;
            Adress12.Text = GetInv.Adressline_2;
            Adress12.Text = GetInv.Adressline_3;
            InvID.Text =Convert.ToString(GetInv.Id);
            total.Text = GetInv.Total;
            PointsUsed.Text = GetInv.PointsUsed;
            display += "<table class='table table-striped'>";
            display += "<thead>";
            display += " <tr>";
            display += " <th scope ='col'> Quantity</th>";
            display += " <th scope='col'>Product Name</th>";
         
            display += "  <th scope = 'col' > subtotal Cost</th>";
           
            display += "  </tr>";
            display += " </thead>";
            display += " <tbody>";


            foreach (PurchaseInfo u in GetOrders)

            {


                display += " <tr>";
                display += "<td>"+u.Order_ID+"</td>";
                display += " <td"+u.ProductName+"></td>";

                display += "<td>"+u.ProductCost+"</td>";
              
                display += "</tr>";


            }


            display += "</table></div>";

            tableS.InnerHtml = display;

           

        }

        protected void APPROVE_Click(object sender, EventArgs e)
        {

            var appr = client.EditInvoice(Convert.ToInt32(Request.QueryString["ID"]));

            Response.Redirect("InvoicePage.aspx?ID="+Convert.ToInt32(Request.QueryString["InvID"]));
        }
    }
}
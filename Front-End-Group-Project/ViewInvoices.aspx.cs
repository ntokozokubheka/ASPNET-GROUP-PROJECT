﻿using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class ViewInvoices : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            int a = 1;
            var GetInvList = client.GetPendingOrdersOrInvoice(Convert.ToInt32(Session["UserID"]),a);

            string display = "";
            
            display += "<table class='table table-striped table-sm'>";
            display += "<thead>";
            display += " <tr>";
            display += " <th scope ='col'> Order ID</th>";
            
            display += "  <th scope = 'col'>Cost</th>";

            display += "  <th scope = 'col'>Date</th>";

            display += "  <th scope ='col'>status</th>";
            display += "  </tr>";
            display += " </thead>";
            display += " <tbody>";


            foreach (Invoice i in GetInvList)

            {

                display += " <tr>";
                display += "<td>"+i.Order_ID+"</td>";

                display += "<td>"+i.Total+"</td>";

                display += " <td>"+i.InvoiceDate+"</td>";

                display += "<td><a href ='InvoicePage.aspx?ID="+i.Order_ID+"'>View</a></td>";

                display += "</tr>";


            }

            display += "  </table>";

            tableS.InnerHtml = display;


        }
    }
}
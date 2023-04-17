using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class AdminProdutcts : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            var prodo = client.GetProductList();

            string display = "";


           display +="<div class='table-responsive'>";
            display +="<table class='table table-striped table-sm'>";
            display += "<thead>";
            display += " <tr>";
            display += " <th scope ='col'> ID#</th>";
             display += " <th scope='col'>Book Name</th>";
            display += "  <th scope = 'col' > Price </th>";

            display += "  <th scope = 'col' > Quantity </th>";

            display += "  <th scope ='col'>Link</th>";
            display += "  </tr>";
            display += " </thead>";
            display += " <tbody>";
        

            foreach (Product P in prodo)
            {


                display += " <tr>";
                 display += "<td>"+P.Id+"</td>";

                display += "<td>"+P.P_name+"</td>";

                display += " <td>"+P.P_price+"</td>";

                display += "<td>"+P.P_Quantity+"</td>";

                display += "<td><a href ='AdminEditProduct.aspx?ID="+P.Id+"'>view</a></td>";

                display += "</tr>";


        }


            display += "  </table></div>";

            tableS.InnerHtml = display;


            }
    }
}
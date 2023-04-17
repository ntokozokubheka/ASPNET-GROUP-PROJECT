using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class Categories : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {




			var prodo = client.GetProductList();

			string display = "";

			foreach (Product P in prodo)
			{
				display += " <div class='col-md-6 col-lg-3'>";

				display += " <h1><a href ='Single.aspx?ID=" + P.Id + "'>" + P.P_name + "</a></h1 >";
				display += " <img src=' images/" + P.P_Img + "'height ='100px' width ='100px' > ";
				display += " <p>By :  " + P.P_AuthorName + "</p>";
				display += " <p class= 'price'>R" + P.P_price + " </p>";
				display += " <p><button>Buy</button></p>";
				display += " <a href ='AdminEditProduct.aspx?ID=" + P.Id + "'> Edit Product </a>";
				display += "  </div>";

			}

			Product_stuff.InnerHtml = display;
	



		}
	}
}
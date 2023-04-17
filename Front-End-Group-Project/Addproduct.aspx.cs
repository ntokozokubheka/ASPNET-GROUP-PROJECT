using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class Addproduct : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        { 

        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            FileUpload1.SaveAs(Server.MapPath("images") + "/" + FileUpload1.FileName);
            string path = "/images/" + FileUpload1.FileName;

       
        }
    }
}
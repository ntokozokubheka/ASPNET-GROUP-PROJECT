using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S215046165_P05_NH_KUNHEKA
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["UserType"] = null;
            Session["UserID"] = null;
            Session["Username"] = null;





            Response.Redirect("Home.aspx");


        }
    }
}
using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class Login : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] != null)
            {
                Response.Redirect("Home.aspx");
            }
        }


        protected void Login_Click(object sender, EventArgs e)
        {


        }

        protected void _Login_Click(object sender, EventArgs e)
        {


            var Loguser = client.Login(email.Value, psw.Value);

            if (Loguser != null)
            {

                Session["UserType"] = Loguser.U_type;
                Session["UserID"] = Loguser.Id;
                Session["Username"] = Loguser.Username;
                Session["UsernamePoints"] = Loguser.U_PointsValue;

                /*
                var UserCartList = client.GetCARTList(Loguser.Id);

                */

                Response.Redirect("Home.aspx");

            }
        }
    }
}

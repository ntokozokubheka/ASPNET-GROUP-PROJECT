using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class AdminEditUser : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            var GetU = client.GetUser(Convert.ToInt32(Request.QueryString["ID"]));



            UserId.Text = Convert.ToString(GetU.Id);
            UserName.Text = GetU.Username;
            Name.Text = GetU.U_name;
            surname.Text = GetU.U_surname;
            dob.Text = Convert.ToString(GetU.U_dob);
            Email.Text = GetU.U_email;
            Points.Text = GetU.U_PointsValue;
            UserT.Text = GetU.U_type;


        }
    }
}
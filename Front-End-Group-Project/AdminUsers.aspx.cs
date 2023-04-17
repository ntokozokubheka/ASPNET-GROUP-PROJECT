using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class AdminUsers : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            var Userz = client.GetUserList();

            string display = "";

            display += "<div class='table-responsive'>";
            display += "<table class='table table-striped table-sm'>";
            display += "<thead>";
            display += " <tr>";
            display += " <th scope ='col'> ID#</th>";
            display += " <th scope='col'>Name</th>";
            display += "  <th scope = 'col' > Surname </th>";
            display += "  <th scope = 'col' > Usertype</th>";
            display += "  <th scope ='col'>View all details</th>";
            display += "  </tr>";
            display += " </thead>";
            display += " <tbody>";


            foreach (User u in Userz)

            {

                display += " <tr>";
                display += "<td>"+u.Id+"</td>";

                display += "<td>"+u.U_name+"</td>";

                display += " <td>"+u.U_email+"</td>";

                display += "<td>"+u.U_type+"</td>";

                display += "<td><a href ='AdminEditUser.aspx?ID="+u.Id+"'>View</a></td>";

                display += "</tr>";


            }


            display += "  </table></div>";

            tableS.InnerHtml = display;


        }
    }
}
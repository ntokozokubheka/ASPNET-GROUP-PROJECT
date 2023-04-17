using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class Register : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["UserType"] != null)
            {
                Register_Button.Text = "Edit";

                if (Session["UserType"].ToString() != "Customer")
                {

                    
                    var checkQs = Request.QueryString["NewUser"];

                    if (checkQs == null)
                    {
                        EditUser();

                    }
                }
                else
                {
                    EditUser();

                }

            }
            else
            {

               

            }

        }



        protected void Register_Button_Click(object sender, EventArgs e)
        {

            if (Session["UserType"]== null)
            {
               
                bool IsUserRegis = client.IsRegUser(
                    username.Value,
                    name.Value,
                    lastname.Value,
                    dob.Value,
                    email.Value,
                    psw.Value

                    );

                if (IsUserRegis == true)
                {
                    Response.Redirect("Login.aspx");

                }


            }
            else
            {

                int Id = Convert.ToInt32(Session["UserID"].ToString());

                bool IsEdit = client.EditUser(Id, username.Value, name.Value, email.Value, dob.Value);



                if (IsEdit == true)
                {
                    Response.Redirect("Home.aspx");

                }


            }




        }



        private void EditUser()
        {

            if (!IsPostBack)
            {

                psw.Visible = false;
                int UId = Convert.ToInt32(Session["UserID"].ToString());

                var changeDetails = client.GetUser(UId);

                username.Value = changeDetails.Username;
                name.Value = changeDetails.U_name;
                email.Value = changeDetails.U_email;
                lastname.Value = changeDetails.U_surname;

                if (changeDetails.U_dob != null)
                {

                    dob.Value = changeDetails.U_dob.ToString();
                }

            }



        }





    }
}
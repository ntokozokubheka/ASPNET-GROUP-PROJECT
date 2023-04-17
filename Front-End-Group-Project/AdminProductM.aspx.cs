using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class AdminProductM : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            FileUpload1.SaveAs(Server.MapPath("images")+"/"+FileUpload1.FileName);
            string imgpath = FileUpload1.FileName;

            bool NewBook = client.AddBook(BookName.Text, Price.Text, description.Text, Convert.ToInt32(quantinty.Text), dop.Text, AuthorName.Text, imgpath, Category.SelectedValue, Language.SelectedValue);
              
            if (NewBook == true)
            {
                Response.Redirect("AdminHome.aspx");
            }
        }
    }
}
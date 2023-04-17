using Spark_Fiddle.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spark_Fiddle
{
    public partial class AdminEditProduct : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();


        protected void Page_Load(object sender, EventArgs e)
        {




            var P = client.GetProduct(Convert.ToInt32(Request.QueryString["ID"]));


            BookName.Text = P.P_price;
            BookId.Text = Convert.ToString(P.Id);
            AuthorName.Text = P.P_name;
            Price.Text = P.P_price;
            Category.SelectedValue = P.P_category;
            Language.SelectedValue = P.P_Language;
            description.Text = P.P_description_;
            Publisher.SelectedValue = P.P_publisher;
            quantity.Text =Convert.ToString( P.P_Quantity);
   
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var P = client.GetProduct(Convert.ToInt32(Request.QueryString["ID"]));
            FileUpload1.SaveAs(Server.MapPath("images") + "/" + FileUpload1.FileName);
            string imgpath = FileUpload1.FileName;
            if (imgpath == null)
            {

                imgpath = P.P_Img;
            }
            int a = Convert.ToInt32(Request.QueryString["ID"]);

            bool NewBook = client.EditProduct(a,BookName.Text, Price.Text, description.Text, Convert.ToInt32(quantity.Text), dop.Text, AuthorName.Text, imgpath);


            if (NewBook==true )
            {

                Response.Redirect("AdminHome.aspx");
            } 

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(Request.QueryString["ID"]);
            bool removeBook = client.RemoveBook(a);
            Response.Redirect("AdminHome.aspx");

        }
    }
}
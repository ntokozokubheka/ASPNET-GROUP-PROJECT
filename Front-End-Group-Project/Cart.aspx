<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Spark_Fiddle.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/Cart.css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div id="tableS" runat="server">



    </div>




    <div id="table2" runat="server">  



    </div>
    
    <hr>
  <div class="container-md">


    <hr>

   
      
    <div><asp:Label ID="Label1" runat="server" Text="Shipping Cost: R100"></asp:Label> </div>

 
    <div>  <asp:Label ID="Label2" runat="server" Text="VAT :"></asp:Label><asp:Label ID="VAT" runat="server" Text="VAT"></asp:Label> </div>
      <div> <asp:Label ID="Label3" runat="server" Text="TOTAL :R"></asp:Label><asp:Label ID="TOTAL" runat="server" Text="Label"></asp:Label></div>
    <!-- End Cart -->
      </div>

    <asp:Button ID="Button1" runat="server" Text="Check out" OnClick="Button1_Click1" />


</asp:Content>

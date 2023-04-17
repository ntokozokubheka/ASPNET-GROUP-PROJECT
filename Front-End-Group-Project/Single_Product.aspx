<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Single_Product.aspx.cs" Inherits="Spark_Fiddle.Single_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


  
   
    <div class="SingleProduct">
        <div>
        <h1> About Product </h1>

    </div>


    <div>
    <div class="container" Id="ProductLoad"  runat="server"    >

        
        </div>

     </div>
     


    <div> 
        <asp:Label ID="Label1" runat="server" Text="Enter Only numerical values"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="ENTER" OnClick="Button1_Click" />
        </div>

        </div>
    

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Single.aspx.cs" Inherits="Spark_Fiddle.Single" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     
    
    <div class="container-md" >

    

    <div>
    <div class="container" Id="ProductLoad"  runat="server"    >

        
        </div>

     </div>
     


    <div class="container-lg"> 
        <asp:Label ID="Label2" runat="server" Text="Quantity"></asp:Label>
       
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="ENTER" OnClick="Button1_Click" />
        </div>

        </div>

</asp:Content>

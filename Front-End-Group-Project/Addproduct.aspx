<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPageM.Master" AutoEventWireup="true" CodeBehind="Addproduct.aspx.cs" Inherits="Spark_Fiddle.Addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
    <asp:FileUpload ID="FileUpload1" runat="server" />


    
    <div>
    <asp:Label ID="name1" runat="server" Text="name"></asp:Label>
    <asp:TextBox ID="name2" runat="server"></asp:TextBox>
 
    </div>
    
    <div> 
    <asp:Label ID="price1" runat="server" Text="price"></asp:Label>

    <asp:TextBox ID="price2" runat="server"></asp:TextBox>
    </div>
    
    <div>  
    <asp:Label ID="descrip" runat="server" Text="description"></asp:Label>

    <asp:TextBox ID="desci" runat="server"></asp:TextBox>
    </div>

    <div>
    <asp:Label ID="Quantity1" runat="server" Text="Quantity"></asp:Label>
    <asp:TextBox ID="quantit" runat="server"></asp:TextBox>
        </div>
    
    <div> 
    <asp:Label ID="manufacture1" runat="server" Text="manufacture"></asp:Label>
    <asp:TextBox ID="manufactu" runat="server"></asp:TextBox>
    </div> 
    
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>

</asp:Content>

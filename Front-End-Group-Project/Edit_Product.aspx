<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit_Product.aspx.cs" Inherits="Spark_Fiddle.Edit_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <div>
    <asp:Label ID="ProductName" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="P_name" runat="server"></asp:TextBox>
  
   </div>

    
    <div>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="P_price" runat="server"></asp:TextBox>
  
   </div>

    
    <div>
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="P_descri" runat="server"></asp:TextBox>
  
   </div>

    <div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="P_quantity" runat="server"></asp:TextBox>
  
   </div>
  <div> 

      <asp:Button ID="Button1" runat="server" Text="ENTER" OnClick="Button1_Click" />
      </div>
      
        
    

</asp:Content>

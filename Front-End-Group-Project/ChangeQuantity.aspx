<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangeQuantity.aspx.cs" Inherits="S215046165_P05_NH_KUNHEKA.ChangeQuantity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container" >

        <h1> CHANGE QUANTITY OF SELETED PRODUCT</h1>

    </div>


    <div class="container">
        
    <div> 



     <div>  
    <label for="email"><b>Change Quantity of Product :Enter ony numerical values</b></label>
    <input type="text" runat="server" id="ChangQuantity"/>
    </div>
    </div>

        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    </div>

</asp:Content>

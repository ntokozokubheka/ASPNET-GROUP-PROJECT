<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="Spark_Fiddle.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="Buttons-Caregories">

        <button type="button"  style="margin:7px" class="btn btn-outline-info">Romance</button> 
        <button type="button" style="margin:7px"  class ="btn btn-outline-info">Fiction</button>
        <button type="button" style="margin:7px"   class="btn btn-outline-info">Sci</button>
        <button type="button" style="margin:7px"  class="btn btn-outline-info">Fantasy</button>
        <button type="button" style="margin:7px" class="btn btn-outline-info">Info</button>
        <button type="button" style="margin:7px" class ="btn btn-outline-info">Adventure</button>
        <button type="button" style="margin:7px"  class ="btn btn-outline-info">History</button>
        <button type="button" style="margin:7px"  class ="btn btn-outline-info">biographies</button>

    </div>       
</div>

 <hr style="color:white;">
  

    <div class="container">
        <div class="row" id="Product_stuff" runat="server" >
        
        
        </div></div>




</asp:Content>

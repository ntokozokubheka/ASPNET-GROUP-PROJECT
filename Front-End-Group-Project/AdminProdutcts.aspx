<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPageM.Master" AutoEventWireup="true" CodeBehind="AdminProdutcts.aspx.cs" Inherits="Spark_Fiddle.AdminProdutcts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-md" id="tableS" runat="server">
      <div class="table-responsive" >
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">ID#</th>
              <th scope="col">Book Name</th>
              <th scope="col">Price</th>
              <th scope="col">Quantity</th>
              <th scope="col">book link</th>
            </tr>
          </thead>

            
        </table>
      </div>

        </div>




</asp:Content>

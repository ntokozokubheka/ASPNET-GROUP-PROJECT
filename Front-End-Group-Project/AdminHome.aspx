<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPageM.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Spark_Fiddle.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Dashboard</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            This week
          </button>
        </div>
      </div>

         <h2>Reports</h2>

        <hr>
       <h2>Users</h2>
     <div>
     <img src="images/UsersIcon.jpg" width="100" height="100" />

         <p> Total users : <asp:Label ID="TotalUsers" runat="server" Text="Label"></asp:Label> </p>

         <p> Active users : <asp:Label ID="ActiveUsrs" runat="server" Text="Label"></asp:Label> </p>
         <p> Users that have signed up Today: <asp:Label ID="Signed_up" runat="server" Text="3"></asp:Label> </p>
         </div>

         <hr>
       <h2>Products</h2>
        <div> 
        <img src="images/Books%20Icon.jpg" width="100" height="100" />
            <p> Total Products : <asp:Label ID="TotalProd" runat="server" Text="Label"></asp:Label> </p>
            <p> Products with less than 100 in stock : <asp:Label ID="FewStock" runat="server" Text="Label"></asp:Label> </p>


            </div>
         <hr>

       <h2>Orders </h2>
        <div> 
        <img src="images/Invoice%20Icon.jpg" width="100" height="100" />
            <p>Total Orders Proccessed : <asp:Label ID="totalOrd" runat="server" Text="Label"></asp:Label>
                
                
            </p>
            <p> Total Pending Orders : <asp:Label ID="TotalPendingOrd" runat="server" Text="Label"></asp:Label> </p>


     </div>
      
    </main>


</asp:Content>

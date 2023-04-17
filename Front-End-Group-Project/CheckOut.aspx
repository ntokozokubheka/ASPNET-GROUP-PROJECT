<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Spark_Fiddle.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/CheckOut.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">
  <div class="col-75">

      
    <div class="container">
        <div class="row">
          <div class="col-50" >
            <h3>Billing Address</h3>
            
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" runat="server" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" runat="server" name="address" placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" runat="server" name="city" placeholder="Johhanesburg">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" runat="server" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" runat="server" name="zip" placeholder="10001">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
   
            <label for="ccnum">Card number</label>
            <input type="text" id="ccnum" runat="server"  placeholder="1111-2222-3333-4444">
            

          </div>

        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        
        <asp:Button class="btn"  ID="Button1" runat="server" Text="Chekcout" OnClick="Button1_Click" />
    </div>
          
  </div>

  <div class="col-25">
    <div class="container1" id="ProdoList" runat="server">



     </div>
      
      <asp:Label ID="Label1" runat="server" Text="Use Points :"></asp:Label><asp:Label ID="Points" runat="server" Text="P"></asp:Label>
    <div> <asp:Button ID="Button2" runat="server" Text="Deduct" OnClick="Button2_Click" /></div>
  </div>
</div>

  

</asp:Content>

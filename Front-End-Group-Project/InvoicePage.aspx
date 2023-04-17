<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InvoicePage.aspx.cs" Inherits="Spark_Fiddle.InvoicePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Invoice.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content content_content" style="width: 70%; margin: auto;">
                    <div class="invoice">
                        <!-- title row -->
                        <div class="row">
                            <div class="col-xs-12">
                                <h2 class="page-header" >
                                    <i class="fa fa-globe"></i> Ubuntu.
                                    <small class="pull-right">Date: 2021/10/15</small>
                                </h2>
                            </div><!-- /.col -->
                        </div>
                        <!-- info row -->
                        <div class="row invoice-info">
                            <div class="col-sm-4 invoice-col" >
                                


                            </div><!-- /.col -->
                            <div class="col-sm-4 invoice-col" >
                                To
                                <address>
                                    <strong>
                                      <asp:Label ID="UserName" runat="server" Text="Label"></asp:Label>      </strong>
                                    <br>
                                    Address:<asp:Label ID="Adress11" runat="server" Text="Label"></asp:Label>
                                    <asp:Label ID="Adress12" runat="server" Text="Label"></asp:Label>                                  <br>
                                    Phone:<asp:Label ID="Adress13" runat="server" Text="Label"></asp:Label>
                                                                     <br>
                                                              </address>
                            </div><!-- /.col -->
                            <div class="col-sm-4 invoice-col">
                                <b>Invoice :<asp:Label ID="InvID" runat="server" Text="Label"></asp:Label> </b><br>
                                <br>
                                <b>Order ID: <asp:Label ID="OrderId" runat="server" Text="3"></asp:Label> </b><br>
                                
                                <b>Account:</b><asp:Label ID="Acc" runat="server" Text="Label"></asp:Label>
                            </div><!-- /.col -->
                        </div><!-- /.row -->

                        <!-- Table row -->
                        <div class="row">
                            <div class="col-xs-12 table-responsive" id="tableS" runat="server" >
                                



                            </div><!-- /.col -->
                        </div><!-- /.row -->

                        <div class="row">
                            <!-- accepted payments column -->
                            <div class="col-md-12">
                                <p class="lead">Amount Due 10/24/2021</p>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <th>Shipping Costs:</th>
                                                <td><asp:Label ID="ShippingCost" runat="server" Text="R100.00"></asp:Label></td>
                                            </tr>

                                            <tr>
                                                <th>Amount Redeemed using points :</th>
                                                <td><asp:Label ID="PointsUsed" runat="server" Text="Label"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <th>Total:</th>
                                                <td><asp:Label ID="total" runat="server" Text="Label"></asp:Label></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <asp:Label ID="PENDING" runat="server" Text="PENDING"></asp:Label>
                                    <asp:Label ID="Approved" runat="server" Text="APPROVED"></asp:Label>

                                        

                                </div>
                            </div><!-- /.col -->
                        </div><!-- /.row -->

                        <!-- this row will not appear when printing -->
                        
                </div>
        </div>
  
    <asp:Button ID="APPROVE" runat="server" Text="Approve" OnClick="APPROVE_Click" />
    
</asp:Content>

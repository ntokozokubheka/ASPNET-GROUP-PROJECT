<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPageM.Master" AutoEventWireup="true" CodeBehind="AdminEditUser.aspx.cs" Inherits="Spark_Fiddle.AdminEditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div class="Book" >
      <div class="row">
         <div class="col-9">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                      
                           <h4>User Details</h4>
                      
                     </div>
                  </div>
                 
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-md-4">
                        <label>User ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="UserId" runat="server"  ></asp:TextBox>
                              

                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>User Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="UserName" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Usertype : </label>
                         <asp:Label ID="UserT" runat="server" Text="Label"></asp:Label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="Usertype" runat="server">
                              <asp:ListItem Text="Customer" Value="CU" />
                              <asp:ListItem Text="Employee" Value="EM" />
                              <asp:ListItem Text="Manager" Value="MA" />
                              
                           </asp:DropDownList>
                        </div>
                     
                        
                        </div>
                     
                     <div class="col-md-4">
                        <label>Name</label>
                        <div class="form-group">

                            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                        </div>
                         <label>Surname</label>
                        <div class="form-group">
                            <asp:TextBox ID="surname" runat="server"></asp:TextBox>
                        </div>
                        <label>Birth date</label>
                        <div class="form-group">
                          
                         <asp:TextBox ID="dob" runat="server"></asp:TextBox>
                        </div>
                     </div>
                     
                     </div>
                  
                  <div class="row">
                     <div class="col-md-4">
                        <label>Active</label>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="active" runat="server">
                              <asp:ListItem Text="Active" Value="1" />
                              <asp:ListItem Text="Inactive" Value="0" />
                              
                      
                           </asp:DropDownList>
                        </div>
                     </div>
                  
                     <div class="col-md-4">
                        <label>Loyaly Points</label>
                        <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="Points" runat="server" placeholder="Points"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                   
                        
                    
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <label>Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="Email" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">

                     

                     </div>
                     <div class="col-4">
                      
                     </div>
                     <div class="col-4">
                        
                     </div>
                  </div>
              
            </div>
            <a href="AdminHome.aspx"><< Back to Home</a><br>
            <br>
         </div>
      </div>
   </div>


</asp:Content>

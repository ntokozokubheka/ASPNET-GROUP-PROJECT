<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPageM.Master" AutoEventWireup="true" CodeBehind="AdminEditProduct.aspx.cs" Inherits="Spark_Fiddle.AdminEditProduct" %>
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
                      
                           <h4> Edit Book Details</h4>
                      
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                      <!-- image -->
                       
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Book ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="BookId" runat="server" placeholder="Book ID"></asp:TextBox>
                              

                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Book Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="BookName" runat="server" placeholder="Book Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Language</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="Language" runat="server">
                              <asp:ListItem Text="English" Value="English" />
                              <asp:ListItem Text="Hindi" Value="Hindi" />
                              <asp:ListItem Text="Marathi" Value="Marathi" />
                              <asp:ListItem Text="French" Value="French" />
                              <asp:ListItem Text="German" Value="German" />
                              <asp:ListItem Text="Urdu" Value="Urdu" />
                           </asp:DropDownList>
                        </div>
                        <label>Publisher Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="Publisher" runat="server">
                              <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                              <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                               <asp:ListItem Text="Publisher 2" Value="Publisher 3" />
                               <asp:ListItem Text="Publisher 2" Value="Publisher 4" />

                               <asp:ListItem Text="Publisher 2" Value="Publisher 5" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Author Name</label>
                        <div class="form-group">

                            <asp:TextBox ID="AuthorName" runat="server"></asp:TextBox>
                        </div>
                        <label>Publish Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="dop" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Genre</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="Category" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Action" Value="Action" />
                              <asp:ListItem Text="Adventure" Value="Adventure" />
                              <asp:ListItem Text="Comic Book" Value="Comic Book" />
                              <asp:ListItem Text="Self Help" Value="Self Help" />
                              <asp:ListItem Text="Motivation" Value="Motivation" />
                              <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                              <asp:ListItem Text="Wellness" Value="Wellness" />
                              <asp:ListItem Text="Crime" Value="Crime" />
                              <asp:ListItem Text="Drama" Value="Drama" />
                              <asp:ListItem Text="Fantasy" Value="Fantasy" />
                              <asp:ListItem Text="Horror" Value="Horror" />
                              <asp:ListItem Text="Poetry" Value="Poetry" />
                              <asp:ListItem Text="Personal Development" Value="Personal Development" />
                              <asp:ListItem Text="Romance" Value="Romance" />
                              <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                              <asp:ListItem Text="Suspense" Value="Suspense" />
                              <asp:ListItem Text="Thriller" Value="Thriller" />
                              <asp:ListItem Text="Art" Value="Art" />
                              <asp:ListItem Text="Autobiography" Value="Autobiography" />
                              <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                              <asp:ListItem Text="Health" Value="Health" />
                              <asp:ListItem Text="History" Value="History" />
                              <asp:ListItem Text="Math" Value="Math" />
                              <asp:ListItem Text="Textbook" Value="Textbook" />
                              <asp:ListItem Text="Science" Value="Science" />
                              <asp:ListItem Text="Travel" Value="Travel" />
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                
                     <div class="col-md-4">
                        <label>Book Price</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="Price" runat="server" placeholder="Book Cost(per unit)" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                    
                   <div class="row">
                       <div class="col-md-4">
                           <label>Quantity</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="quantity" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                           </div>
                       </div>
                       
     
                   </div>
                  <div class="row">
                     <div class="col-12">
                        <label>Book Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="description" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                         <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" />

                         <asp:Button ID="Button2" runat="server" Text="Remove" OnClick="Button2_Click"/>
                     </div>
                     <div class="col-4">
                      
                     </div>
                     <div class="col-4">
                        
                     </div>
                  </div>
               </div>
            </div>
            
            <br>
         </div>
      </div>
   </div>


</asp:Content>

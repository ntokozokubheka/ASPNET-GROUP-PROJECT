<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Spark_Fiddle.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/Register.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-md">
    
        <div class="signup-form">
    
		<p class="hint-text">Create your account. It's free and only takes a minute.</p>
        <div class="form-group">
			<div class="row">
				<div class="col"><input type="text" id="name" runat="server" class="form-control" name="first_name" placeholder="First Name" required="required"></div>
				<div class="col"><input type="text" id="lastname" runat="server" class  ="form-control" name="last_name" placeholder="Last Name" required="required"></div>
			</div>        	
        </div>
        <div class="form-group">

           <input  class="form-control " id="username" runat="server" type="text" placeholder="username" required="required" />
        </div>

        <div class="form-group">
             <input  class="form-control " id="email" runat="server" type="text" placeholder="Email" required="required" />
        	
        </div>

        <div class="form-group">
        
        	 <input  class="form-control " id="dob" runat="server" type="date" required="required" />

		<div class="form-group">

    
            <input type="password" id="psw" runat="server" class="form-control" name="password" placeholder="Password" required="required">
        </div>
		       
       
		<div class="form-group">


            
             <asp:Button class="btn btn-success btn-lg btn-block"  ID="Register_Button" runat="server" Text="Register Now" OnClick="Register_Button_Click" />


        </div>

          
</div>

        </div>


        </div>



</asp:Content>

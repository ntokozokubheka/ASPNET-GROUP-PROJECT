<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Spark_Fiddle.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   

	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">
				<div class="avatar">
                    <img src="images/avatarIcon.png" />
				</div>				
				<h4 class="modal-title">Member Login</h4>	
                
			</div>
			<div class="modal-body">
					<div class="form-group">
						<input type="text" id="email" runat="server" class="form-control"  placeholder="email" required="required">		
					</div>
					<div class="form-group">
						<input type="password"  id="psw" runat="server" class="form-control" name="password" placeholder="Password" required="required">	
					</div>        
					<div class="form-group">

                   

                        <asp:Button class="btn btn-primary btn-lg btn-block login-btn" ID="_Login" runat="server" Text="Sign in" OnClick="_Login_Click" />
					</div>
			</div>
			<div class="modal-footer">
				<a href="#">Forgot Password?</a>
			</div>
		</div>
	</div>
     

</asp:Content>

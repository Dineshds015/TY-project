<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html>

<html lang="en" class="no-js">
    <head>
<link href="Content/bootstrap.min.css" rel="stylesheet" />

    </head>
    <body>
        <form id="form1" runat="server">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <div class="collapse navbar-collapse" id="myNavbar">
      <table><tr>
        <td><asp:ImageButton ID="btn_logo" runat="server" src="Content/Design%20Images/rent_logo.png" height="70" Width="110"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_home" runat="server" Text="Home" class="btn btn-secondary transparent-style mr-3" Onclick="btn_home_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_about" runat="server" Text="About" class="btn btn-secondary transparent-style mr-3 " Onclick="btn_about_Click" />&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_contact" runat="server" Text="Contact" class="btn btn-secondary transparent-style mr-3" Onclick="btn_contact_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_project" runat="server" Text="Project" class="btn btn-secondary transparent-style mr-3" Onclick="btn_project_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:TextBox ID="txt_search" runat="server" Height="30" Width="400"></asp:TextBox>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_search" runat="server" Text="Search" class="btn btn-secondary transparent-style mr-3" Onclick="btn_search_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:ImageButton ID="btn_img_location" runat="server" src="Content/Design%20Images/loc.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_register" runat="server" Text="Register" class="btn btn-secondary transparent-style mr-3" Onclick="btn_register_Click" />&nbsp&nbsp&nbsp</td>
      </tr></table>
    </div>
  </div>
</nav>
           

  <div class="container ">
          <div class="container  ">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">User <small>login</small></h3>
			 			</div>
			 			<div class="panel-body mx-auto" style="width: 200px;">
			    		</div>
			    			
			    			
			    					<div class="form-group">
			              
                                        <asp:TextBox class="form-control input-sm" placeholder="Username" ID="txt_c_email" runat="server"></asp:TextBox>
			    					</div>
			    				

                                     <div class="form-group">
			                            <asp:TextBox class="form-control input-sm" placeholder="Password" ID="txt_c_password" runat="server" TextMode="Password"></asp:TextBox>
			    					</div>
			    			        <div class="form-group">
                                        <asp:CheckBox ID="rememberme" runat="server"/>&nbsp Remember me
                                    </div>
			    		   		    <asp:Button ID="btn_login" runat="server" class="btn btn-info btn-block" Text="Login" OnClick="Login_Click" />
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
</form>
<p> &nbsp;</p>

</body>
</html>
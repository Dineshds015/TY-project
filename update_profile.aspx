<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update_profile.aspx.cs" Inherits="update_profile" %>

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
        <td><asp:ImageButton ID="img_logo" runat="server" src="Content/Design%20Images/rent_logo.png" height="70" Width="110"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_home" runat="server" Text="Home" class="btn btn-secondary transparent-style mr-3" Onclick="btn_home_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_about" runat="server" Text="About" class="btn btn-secondary transparent-style mr-3 " Onclick="btn_about_Click" />&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_contact" runat="server" Text="Contact" class="btn btn-secondary transparent-style mr-3" Onclick="btn_contact_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_project" runat="server" Text="Project" class="btn btn-secondary transparent-style mr-3" Onclick="btn_project_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:TextBox ID="txt_search" runat="server" Height="30" Width="400"></asp:TextBox>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_search" runat="server" Text="Search" class="btn btn-secondary transparent-style mr-3" Onclick="btn_search_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:ImageButton ID="btn_img_location" runat="server" src="Content/Design%20Images/loc.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><Button ID="btn_profile"class="btn btn-secondary transparent-style mr-3" Onclick="btn_profile_Click"><%Response.Write(Session["a"]); %></Button>&nbsp</td>
        <td><asp:Button ID="btn_post" runat="server" Text="Post" class="btn btn-secondary transparent-style mr-3" Onclick="btn_post_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:ImageButton ID="btn_img_noti" runat="server" src="Content/Design%20Images/notification.jpg" Height="30" Width="25" Onclick="btn_img_noti_Click"/> &nbsp&nbsp&nbsp</td>
      </tr></table>
    </div>
  </div>
</nav>
           

  <div class="container ">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">User <small>Setting</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		</div>
			    			
			    					<div class="form-group">
                                        <asp:TextBox class="form-control input-sm" placeholder="Name" ID="txt_c_name" runat="server"></asp:TextBox>
			    					</div>
			    					<div class="form-group">
                                        <asp:TextBox class="form-control input-sm" placeholder="Phone" ID="txt_c_phone" runat="server"></asp:TextBox>
			    					</div>
			    			    	<div class="form-group">
			                            <asp:TextBox class="form-control input-sm" placeholder="Pincode" ID="txt_c_pin" runat="server"></asp:TextBox>
			    					</div>
                                    <div class="form-group">
			                           <asp:DropDownList class="btn btn-light dropdown-toggle" ID="ddl_c_city" runat="server" Height="42px" style="margin-left: 0; margin-top: 25px" Width="321px" OnSelectedIndexChanged="ddl_c_city_SelectedIndexChanged" >
                                         <asp:ListItem Selected="True">City</asp:ListItem>
                                           <asp:ListItem>Delhi</asp:ListItem>
                                           <asp:ListItem>Mumbai</asp:ListItem>
                                           <asp:ListItem>Ahmedabad</asp:ListItem>
                                           <asp:ListItem>Kolkata</asp:ListItem>
                                           <asp:ListItem>Chennai</asp:ListItem>
                                           <asp:ListItem>Surat</asp:ListItem>
                                           <asp:ListItem>Jaipur</asp:ListItem>
                                           <asp:ListItem>Jodhpur</asp:ListItem>
                                           <asp:ListItem>Banglore</asp:ListItem>
                                           <asp:ListItem>Chandigarh</asp:ListItem>
                                        </asp:DropDownList>
			    					</div>
                                    <asp:Button ID="btn_update" runat="server" Text="Update" class="btn btn-info btn-block" OnClick="btn_update_Click"/>
			    	</div>
	    		</div>
    		</div>
      </div>
            <div class="container">
                <asp:Button ID="btn_delete" runat="server" Text="Delete" class="btn btn-secondary btn-lg btn-block transparent-style" OnClick="btn_delete_Click" />
            </div> 

</form>
<p> &nbsp;</p>
</body>
</html>
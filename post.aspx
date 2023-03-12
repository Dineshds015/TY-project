<%@ Page Language="C#" AutoEventWireup="true" CodeFile="post.aspx.cs" Inherits="post" %>
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

        <td><Button ID="btn_profile"class="btn btn-secondary transparent-style mr-3" Onclick="btn_profile_Click"><%Response.Write(Session["a"]); %></Button>&nbsp</td>
        <td><asp:ImageButton ID="btn_img_setting" runat="server" src="Content/Design%20Images/setting.png" Height="30" Width="30" Onclick="btn_img_setting_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:ImageButton ID="btn_img_noti" runat="server" src="Content/Design%20Images/notification.jpg" Height="30" Width="25"/> &nbsp&nbsp&nbsp</td>
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
			    		<h3 class="panel-title">Post <small>and Earn</small></h3>
			 			</div>
			 			<div class="panel-body mx-auto" style="width: 200px;">
			    		</div>
   	    			    <div class="form-group">
 			                <asp:DropDownList class="btn btn-light dropdown-toggle" ID="ddl_property" runat="server" Height="42px" style="margin-left: 0; margin-top: 25px" Width="321px" >
                                <asp:ListItem Selected="True">---Property---</asp:ListItem>
                                <asp:ListItem>House</asp:ListItem>
                                <asp:ListItem>Shop</asp:ListItem>
                                <asp:ListItem>Car</asp:ListItem>
                                <asp:ListItem>Bicycle</asp:ListItem>
                                <asp:ListItem>Bike</asp:ListItem>
                                <asp:ListItem>Farm House</asp:ListItem>
                                <asp:ListItem>Hostel</asp:ListItem>
                                <asp:ListItem>Cloths</asp:ListItem>
                                <asp:ListItem>Books</asp:ListItem>
                                <asp:ListItem>Hall</asp:ListItem>
                                <asp:ListItem>Machine</asp:ListItem>
                                <asp:ListItem>Party Plot</asp:ListItem>
                            </asp:DropDownList>
			    		</div>
   	    			    <div class="form-group">
                                <asp:TextBox class="form-control input-sm" placeholder="Address" ID="txt_address" runat="server"></asp:TextBox>
			    		</div>
			    		<div class="form-group">
                                <asp:TextBox class="form-control input-sm" placeholder="Pincode" ID="txt_pin" runat="server"></asp:TextBox>
			    		</div>
                        <div class="form-group">
			                <asp:DropDownList class="btn btn-light dropdown-toggle" ID="ddl_c_city" runat="server" Height="42px" style="margin-left: 0; margin-top: 25px" Width="321px" >
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
                        <div class="form-group">
                                <asp:FileUpload class="form-control input-sm" ID="fu_image" runat="server" />
			    		</div>
                        <div class="form-group">
                            <table><tr>
                            <td><asp:TextBox class="form-control input-sm" placeholder="Price" ID="txt_price" runat="server" width="100%"></asp:TextBox></td>
                            <td>&nbsp&nbsp&nbsp/&nbsp&nbsp&nbsp</td>
                            <td><asp:DropDownList class="btn btn-light dropdown-toggle" ID="ddl_duration" runat="server" >
                                <asp:ListItem Selected="True">--Duration--</asp:ListItem>
                                <asp:ListItem>Hour</asp:ListItem>
                                <asp:ListItem>Day</asp:ListItem>
                                <asp:ListItem>Week</asp:ListItem>
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>Annum(year)</asp:ListItem>
                                </asp:DropDownList></td></tr>
                            </table>
			    		</div>
                        
                        <div class="form-group">
			                    <asp:TextBox class="form-control input-sm"  TextMode="MultiLine" placeholder="Feature" ID="txt_feature" runat="server"></asp:TextBox>
			    		</div>
			            <asp:Button ID="btn_post" runat="server" class="btn btn-info btn-block" Text="Post" OnClick="btn_post_Click" />
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>

</form>
<p> &nbsp;</p>
 </body>
</html>

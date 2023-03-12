<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cu_management.aspx.cs" Inherits="contactus" %>
<!DOCTYPE html>

<html lang="en" class="no-js">
    <head>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="app_theme.css" rel="stylesheet" />
    </head>
    <body ><div class="">
        <form id="form1" runat="server">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <div class="collapse navbar-collapse" id="myNavbar">
      <table><tr>
        <td><asp:ImageButton ID="btn_logo" runat="server" src="Content/Design%20Images/rent_logo.png" height="70" Width="110" OnClick="btn_home_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_home" runat="server" Text="Home" class="btn btn-secondary transparent-style mr-3" Onclick="btn_home_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_about" runat="server" Text="About" class="btn btn-secondary transparent-style mr-3 " Onclick="btn_about_Click" />&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_contact" runat="server" Text="Contact" class="btn btn-secondary transparent-style mr-3" Onclick="btn_contact_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Label ID="Label1" runat="server" Text="Label" style="font-variant: small-caps; text-shadow:0px 0px 15px black"><h1>Administrator</h1></asp:Label></td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><Button ID="btn_profile"class="btn btn-secondary transparent-style mr-3"><%Response.Write(Session["b"]); %></Button>&nbsp</td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_usersite" runat="server" Text="User Site" class="btn btn-secondary transparent-style mr-3" Onclick="btn_usersite_Click" Width="200" style="font-variant: small-caps; text-shadow:0px 0px 8px black"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_logout" runat="server" Text="Logout" class="btn btn-secondary transparent-style mr-3" Onclick="btn_logout_Click"/>&nbsp&nbsp&nbsp</td>

      </tr></table>
    </div>
  </div>
</nav>

<div class="container text-center">
  <h3>Contact us</h3></br>
</div>
<div class="container text-center">
  <asp:Label ID="lbl_cu_number" runat="server" Text="Friendly folks, standing by..." Font-Names="brush script mt" BorderStyle="None" Font-Size="XX-Large" ForeColor="Maroon" Font-Bold="True"></asp:Label>
</div></br>
<div class="container" >
    <div class="row ">
        <div class="col-sm">
            <asp:DataList ID="dlc" runat="server" RepeatColumns="1" OnCancelCommand="dlc_CancelCommand" OnEditCommand="dlc_EditCommand" OnItemCommand="dlc_ItemCommand">

                <ItemTemplate>
                    <table >
                        <tr>
                            <td>
                                <asp:Label ID="lbl_cu_id" runat="server" Text='<%#Eval("cu_id") %>' Visible="False"></asp:Label></td>
                        </tr>
                        <tr style="line-height:4">
                            <td><img src="Content/Design%20Images/contact.png" Height="30" Width="30"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
                            <td><asp:Label ID="lbl_cu_number" runat="server" Text='<%#Eval("cu_number") %>' Font-Names="Arial" Font-Size="Large"></asp:Label></td>
                        </tr>
                        <tr style="line-height:4">
                            <td><img src="Content/Design%20Images/email2.png" Height="30" Width="30"/></td>
                            <td><asp:Label ID="lbl_cu_email" runat="server" Text='<%#Eval("cu_email") %>'  Font-Names="Arial" Font-Size="Large"></asp:Label></td>
                        </tr>
                        <tr style="line-height:4">
                            <td><img src="Content/Design%20Images/loc.png" Height="30" Width="30"/></td>
                            <td><asp:Label ID="lbl_cu_address" runat="server" Text='<%#Eval("cu_address") %>' Font-Names="Arial" Font-Size="Large" Font-Bold="True"></asp:Label></td>
                        </tr>
                        <caption>
                            <br></br>
                        </caption>
                        <tr style="line-height:10">
                            <td>
                                <asp:Button ID="btn_edit" runat="server" Text="Edit" class="btn btn-secondary transparent-style mr-3" CommandName="edit" />&nbsp&nbsp&nbsp</td>
                        </tr>
                        <caption>
                            <br></br>
                        </caption>
                    </table>
                </ItemTemplate>
                <EditItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="cu_id" runat="server" Text='<%# Eval("cu_id") %>' Visible="False"></asp:Label>
                            </td>
                            <tr>
                            </tr>
                        <tr style="line-height:4">
                            <td>
                                <asp:Label ID="lbl_c_num" runat="server" Text=" Contact: "></asp:Label>+



                            </td>
                            <td>
                                <asp:TextBox ID="txt_cu_number" runat="server" Text='<%# Eval("cu_number") %>' Font-Names="Arial" BorderStyle="None" Font-Size="XX-Large"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="line-height:4">
                            <td>
                                <asp:Label ID="lbl_c_email" runat="server" Text=" Email: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_cu_email" runat="server" Text='<%# Eval("cu_email") %>'  Font-Names="Arial" Font-Size="XX-Large"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="line-height:4">
                            <td>
                                <asp:Label ID="lbl_c_address" runat="server" Text=" Address: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_cu_address" runat="server" Text='<%# Eval("cu_address") %>' Font-Names="Arial" Font-Size="X-Large" Font-Bold="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btn_update" runat="server" Text="Update" class="btn btn-secondary transparent-style mr-3" CommandName="update" />&nbsp&nbsp&nbsp
                            </td>
                            <td>
                                <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-secondary transparent-style mr-3" CommandName="cancel" />
                            </td>
                        </tr>
                        <caption>
                            <br>
                                <br></br>
                                <br></br>
                            </br>
                        </caption>
                    </table>
                </EditItemTemplate>
            </asp:DataList>
        </div>
        <div class="col-sm">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Contact <small> we stands for you...</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		</div>
			    			
			    					<div class="form-group">
                                        <asp:TextBox class="form-control input-sm" placeholder="Name" ID="txt_q_name" runat="server"></asp:TextBox>
			    					</div>
			    					<div class="form-group">
                                        <asp:TextBox class="form-control input-sm" placeholder="Phone" ID="txt_q_phone" runat="server"></asp:TextBox>
			    					</div>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control input-sm" placeholder="email" ID="txt_q_email" runat="server"></asp:TextBox>
			    					</div>
			    			    	<div class="form-group">
			                            <asp:TextBox class="form-control input-sm" placeholder="What to ask..." TextMode="MultiLine" ID="txt_q_query" runat="server" Height="100"></asp:TextBox>
			    					</div>
                                    <%--<div class="form-group">
                                        <textarea class="form-control input-sm" placeholder="What to ask..." ID="txt_q_query" rows="10"></textarea>
			    					</div>--%>
                                    
                                    <asp:Button ID="btn_query" runat="server" Text="Send Query" class="btn btn-info btn-block" OnClick="btn_query_Click" />

			    	</div>
        </div>
    </div>
</div>

</form>
<p> &nbsp;</p>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wishlist.aspx.cs" Inherits="wishlist" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="app_theme.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 312px;
        }
    </style>
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
        <td><asp:ImageButton ID="btn_img_setting" runat="server" src="Content/Design%20Images/setting.png" Height="30" Width="30" Onclick="btn_img_setting_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_post" runat="server" Text="Post" class="btn btn-secondary transparent-style mr-3" Onclick="btn_post_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:ImageButton ID="btn_img_noti" runat="server" src="Content/Design%20Images/notification.jpg" Height="30" Width="25" Onclick="btn_img_noti_Click"/> &nbsp&nbsp&nbsp</td>
      </tr></table>
    </div>
  </div>
</nav>
    
<div class="container text-center">
  <asp:Label ID="lbl" runat="server" Text="Pay For You" Font-Names="Exotc350 Bd BT" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
</div>
    <br />
<div class="container">
    <asp:DataList ID="dlc" runat="server" RepeatColumns="1" CellPadding="4" ForeColor="#333333" OnItemCommand="dlc_ItemCommand" width="100%">
        
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        
        <ItemTemplate>
                <table>
                <tr>
                    <td rowspan="7"><asp:Image ID="img_p_image" runat="server" ImageUrl='<%#Eval("e_image") %>' Type="String" Height="150px" Width="300px"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
                    <%--<td><asp:Label ID="lbl_email" runat="server" Text='<%#Eval("p_owner") %>' Visible="False"></asp:Label></td>--%>
                    <td><asp:Label ID="lbl_enq_id" runat="server" Text='<%# Eval("enq_id") %>' Visible="False"></asp:Label></td>
                </tr>
                <tr><td>Property Type</td><td>:&nbsp</td>  <td><asp:Label ID="lbl_e_cat" runat="server" Text='<%#Eval("e_cat") %>'></asp:Label>  </td></tr>
                <tr><td>Address</td><td>:&nbsp</td><td><asp:Label ID="lbl_e_address" runat="server" Text='<%#Eval("e_address") %>'></asp:Label></td></tr>
                <tr><td>Pincode</td><td>:&nbsp</td><td><asp:Label ID="lbl_e_pin" runat="server" Text='<%#Eval("e_pin") %>'></asp:Label></td></tr>
                <tr><td>City</td><td>:&nbsp</td><td><asp:Label ID="lbl_city" runat="server" Text='<%#Eval("e_city") %>'></asp:Label></td></tr>
                <tr><td>Feature</td><td>:&nbsp</td><td><asp:Label ID="lbl_e_features" runat="server" Text='<%#Eval("e_features") %>' Width="300"></asp:Label></td></tr>
                <tr><td><h3>Price</h3></td>
                    <td>:&nbsp</td>
                    <td>
                        <table>
                            <tr><td><h4><asp:Label ID="lbl_e_pricing" runat="server" Text='<%#Eval("e_pricing")%>' ></asp:Label></h4></td>
                                <td>&nbsp / &nbsp</td>
                                <td><asp:Label ID="lbl_e_duration" runat="server" Text='<%#Eval("e_duration")%>' ></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr><td ><asp:Button ID="btn_delete" runat="server" Text="Delete" class="btn btn-secondary transparent-style mr-3" CommandName="delete" /></td>
                    <td><asp:Label ID="lbl_c_date" runat="server" style="color:#8e8e8e" Text='<%#Eval("e_time","{0:dd/MM/yyyy | hh:mm:ss}") %>'></asp:Label>  </td>
                </tr>
            </table>
            <table class="text-center" width="100%">
                <tr>
                    <td><asp:Label ID="lbl_status" runat="server" style="background:bisque" Font-Names="Exotc350 Bd BT" Font-Size="XX-Large" Font-Bold="True" Text='<%#Eval("e_status")%>'></asp:Label></td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</div>  
</br></br>

<footer class="container-fluid text-center">
  <asp:ImageButton ID="btn_img_facebook" runat="server" src="Content/Design%20Images/facebook.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_twitter" runat="server" src="Content/Design%20Images/twitter.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_insta" runat="server" src="Content/Design%20Images/insta.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_email" runat="server" src="Content/Design%20Images/email.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_feed" runat="server" src="Content/Design%20Images/feed.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br /><br />
<p>RENT is optimized for rent and fulfill requirements for who wants something for a while.<br />
Example might be simplified and improve reading,drving,living,riding,bussiness,enjoying and examples are constantly avoid brockers.<br />
While using RENT,you agree to have read and accepted our terms and use,cookie and privacy and policy.<br /><br />

@Copyright 2020-2021 by asp.Data. All Rights Reserved.<br />
RENT is powered by <b>rentaladda@Dinesh</b></p>
</footer>
</form>
</body>
</html>
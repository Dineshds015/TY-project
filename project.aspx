<%@ Page Language="C#" AutoEventWireup="true" CodeFile="project.aspx.cs" Inherits="project" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="app_theme.css" rel="stylesheet" />
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
    </br></br>
</div>
    <asp:DataList ID="dlc" runat="server" RepeatColumns="1" CellPadding="3" ItemStyle-BorderWidth="50" ItemStyle-BorderColor="White" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal">

        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BorderColor="White" BorderWidth="50px" BackColor="#E7E7FF" ForeColor="#4A3C8C"></ItemStyle>

        <ItemTemplate>
            <table>
                <tr>
                    <td rowspan="7">
                        <asp:Image ID="img_pro_image" runat="server" ImageUrl='<%#Eval("pro_image") %>' Type="String" Height="150px" Width="300px" /></td>
                    <td>
                        <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("pro_name") %>' Font-Size="X-Large" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_pro_detail" runat="server" Text='<%#Eval("pro_detail") %>' Width="500"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_pro_time" runat="server" Text='<%#Eval("pro_time","{0:dd/MM/yyyy}") %>' ForeColor="#999999"></asp:Label>
                        |  
                        <asp:Label ID="lbl_pro_city" runat="server" Text='<%#Eval("pro_city") %>'></asp:Label></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="www.google.co.in" Style="text-align: right" Width="200">Read more...</asp:HyperLink></td>
                </tr>
                <%--<tr><td><asp:Button ID="btn_enquiry" runat="server" Text="Enquiry Now" class="btn btn-success" height="40" Width="300" Font-Bold="True" Font-Size="Medium" CommandName="enquiry" /></td></tr>--%>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
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

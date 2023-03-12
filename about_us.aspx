<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about_us.aspx.cs" Inherits="au_management" %>

<!DOCTYPE html>

<html lang="en" class="no-js">
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
        <td><asp:ImageButton ID="btn_logo" runat="server" src="Content/Design%20Images/rent_logo.png" height="70" Width="110" Onclick="btn_home_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_home" runat="server" Text="Home" class="btn btn-secondary transparent-style mr-3" Onclick="btn_home_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_about" runat="server" Text="About" class="btn btn-secondary transparent-style mr-3 " Onclick="btn_about_Click" />&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_contact" runat="server" Text="Contact" class="btn btn-secondary transparent-style mr-3" Onclick="btn_contact_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_project" runat="server" Text="Project" class="btn btn-secondary transparent-style mr-3" Onclick="btn_project_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:TextBox ID="txt_search" runat="server" Height="30" Width="400"></asp:TextBox>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_search" runat="server" Text="Search" class="btn btn-secondary transparent-style mr-3" Onclick="btn_search_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:ImageButton ID="btn_img_location" runat="server" src="Content/Design%20Images/loc.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_login" runat="server" Text="Login" class="btn btn-secondary transparent-style mr-3" Onclick="btn_login_Click" /></td>
      </tr></table>
    </div>
  </div>
</nav>
</br>
<center><asp:Label ID="lbl" runat="server" Text="About Us" Font-Names="Exotc350 Bd BT" Font-Size="XX-Large" Font-Bold="True"></asp:Label></center>
<div class="container" style="background-color:#efeeee">
    <div class="container col-lg-6" style="margin-top:5%; margin-left:5%; margin-bottom:5%;" >
        <p Font-Names="Exotc350 Bd BT">&nbsp "RENT is optimized for rent and fulfill requirements for who wants something for a while.
            Example might be simplified and improve reading, driving, living, riding, bussiness, enjoying and examples are constantly avoid brockers.
            While using RENT,you agree to have read and accepted our terms and use,cookie and privacy and policy. RENT is optimized for rent and fulfill requirements for who wants something for a while.
            Example might be simplified and improve reading, driving, living, riding, bussiness, enjoying and examples are constantly avoid brockers.
            While using RENT,you agree to have read and accepted our terms and use,cookie and privacy and policy.RENT is optimized for rent and fulfill requirements for who wants something for a while.
            Example might be simplified and improve reading, driving, living, riding, bussiness, enjoying and examples are constantly avoid brockers.
            While using RENT,you agree to have read and accepted our terms and use,cookie and privacy and policy. RENT is optimized for rent and fulfill requirements for who wants something for a while.
            Example might be simplified and improve reading, driving, living, riding, bussiness, enjoying and examples are constantly avoid brockers.
            While using RENT,you agree to have read and accepted our terms and use,cookie and privacy and policy.RENT is optimized for rent and fulfill requirements for who wants something for a while.
            Example might be simplified and improve reading, driving, living, riding, bussiness, enjoying and examples are constantly avoid brockers.
            While using RENT,you agree to have read and accepted our terms and use,cookie and privacy and policy. RENT is optimized for rent and fulfill requirements for who wants something for a while.
            Example might be simplified and improve reading, driving, living, riding, bussiness, enjoying and examples are constantly avoid brockers.
            While using RENT,you agree to have read and accepted our terms and use,cookie and privacy and policy.

            @Copyright 2020-2021 by asp.Data. All Rights Reserved.<br />
            RENT is powered by <b>rentaladda@Dinesh"</b></p>
    </div>
    <div class="container " style="margin-top:10%;"><center>
        <table class="text-center">
            <tr>
                <td><img class="circleabout" src="Content/Design%20Images/dbs.jpg" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lbl_name" runat="server" Text="Dinesh B. Suthar" Font-Names="Exotc350 Bd BT" Font-Size="XX-Large" Font-Bold="True"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="lbl_ceo" runat="server" Text="C.E.O. @rentaladda" Font-Names="Arial" Font-Size="Small" Font-Bold="True"></asp:Label></td>
            </tr>
        </table></center>
    </div>
</div>
<div class="container text-center" style="background-color:#84fffd;">
    <asp:Label ID="lbl_www" runat="server" Text="How We Work" Font-Names="elephant" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
</div>
<div class="container text-center" style="background-color:#84fffd">
    <div class="container col-lg-3" style="margin-top:5%; margin-left:5%; margin-bottom:5%;" >
        <table>
            <tr>
                <td><img src="Content/Design%20Images/meeting.png" height="170" width="230"/></td>
            </tr>
            <tr>
                <td><asp:Label ID="lbl_brief" runat="server" Text="Briefing" Font-Names="Brush Script MT" Font-Size="XX-Large" ></asp:Label></td>
            </tr>
        </table>
    </div>
    <div class="container col-lg-3" style="margin-top:5%; margin-left:5%; margin-bottom:5%;" >
        <table>
            <tr>
                <td><img src="Content/Design%20Images/hand_shake.png" height="170" width="230"/></td>
            </tr>
            <tr>
                <td><asp:Label ID="lbl_production" runat="server" Text="Production" Font-Names="Brush Script MT" Font-Size="XX-Large" ></asp:Label></td>
            </tr>
        </table>
    </div>
    <div class="container col-lg-3" style="margin-top:5%; margin-left:5%; margin-bottom:5%;" >
        <table>
            <tr>
                <td><img src="Content/Design%20Images/sitting.png" height="170" width="250"/></td>
            </tr>
            <tr>
                <td><asp:Label ID="lbl_completion" runat="server" Text="Completion" Font-Names="Brush Script MT" Font-Size="XX-Large" ></asp:Label></td>
            </tr>
        </table>
    </div>
</div>
<div class="container " style="background-color:#000000;">
    <div class="container col-lg-5" style="margin-top:5%; margin-left:5%; margin-bottom:5%;" >
        <table>
            <tr>
                <td><asp:Label class="fontall" ID="Label1" runat="server" Text="Who We Are" Font-Names="elephant" Font-Size="XX-Large" Font-Bold="True"></asp:Label></asp:Label></td>
            </tr>
            <tr><td>&nbsp</td></tr>
            <tr>
                <td><p class="fontall">&nbsp "RENT is optimized for rent and fulfill requirements for who wants something for a while.
            Example might be simplified and improve reading, driving, living, riding, bussiness, enjoying and examples are constantly avoid brockers.
            While using RENT,you agree to have read and accepted our terms and use,cookie and privacy and policy. RENT is optimized for rent and fulfill requirements for who wants something for a while.
            Example might be simplified and improve reading, driving, living, riding, bussiness, enjoying and examples are constantly avoid brockers.</td>
            </tr>
        </table>  
    </div>
    <div class="container col-lg-5" style="margin-top:5%; margin-left:5%; margin-bottom:5%;" >
        <table>
            <tr>
                <td><asp:Label class="fontall" ID="Label3" runat="server" Text="Our Dream" Font-Names="elephant" Font-Size="XX-Large" Font-Bold="True"></asp:Label></asp:Label></td>
            </tr>
            <tr><td>&nbsp</td></tr>
            <tr>
                <td><p class="fontall">&nbsp "RENT is optimized for rent and fulfill requirements for who wants something for a while.
            Example might be simplified and improve reading, driving, living, riding, bussiness, enjoying and examples are constantly avoid brockers.
            While using RENT,you agree to have read and accepted our terms and use,cookie and privacy and policy. RENT is optimized for rent and fulfill requirements for who wants something for a while.
            Example might be simplified and improve reading, driving, living, riding, bussiness, enjoying and examples are constantly avoid brockers.</td>
            </tr>
        </table>
    </div>
</div>
    
    
    </br></br>

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
<p> &nbsp;</p>
</body>
</html>

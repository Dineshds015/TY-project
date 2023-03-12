<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alhomepage.aspx.cs" Inherits="alhomepage" %>

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
</br>

<div class="container text-center">
    <asp:Label ID="lbl" runat="server" Text="Pay For You" Font-Names="Exotc350 Bd BT" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
    </br></br>
    <table>
    <tr>
      <td>
          <div class="hovereffect"><asp:Image ID="ImageButton1" runat="server" src="Content/Design%20Images/house.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_house.aspx">House</a>
              </div>
          </div>
      </td>
      <td>
          <div class="hovereffect"><asp:Image ID="ImageButton2" runat="server" src="Content/Design%20Images/shop.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_shop.aspx">Shop</a>
              </div>
          </div>
      </td>
      <td>
          <div class="hovereffect"><asp:Image ID="ImageButton3" runat="server" src="Content/Design%20Images/car.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_car.aspx">Car</a>
              </div>
          </div>
      </td>
      <td>
          <div class="hovereffect"><asp:Image ID="ImageButton7" runat="server" src="Content/Design%20Images/bicycle.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_bicycle.aspx">Bicycle</a>
              </div>
          </div>
      </td>
    </tr>
    <tr>
      <td>
          <div class="hovereffect"><asp:Image ID="ImageButton4" runat="server" src="Content/Design%20Images/bike.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_bike.aspx">Bike</a>
              </div>
          </div>
      </td>
      <td>
          <div class="hovereffect"><asp:Image ID="ImageButton5" runat="server" src="Content/Design%20Images/farm_house.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_farm_house.aspx">Farm House</a>
              </div>
          </div>
      </td>
      <td>
          <div class="hovereffect"><asp:Image ID="ImageButton6" runat="server" src="Content/Design%20Images/hostel.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_hostel.aspx">Hostel</a>
              </div>
          </div>
      </td>
      <td>
          <div class="hovereffect"><asp:Image ID="ImageButton8" runat="server" src="Content/Design%20Images/cloth.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_cloth.aspx">Cloth</a>
              </div>
          </div>
      </td>
    </tr>
    <tr>
      <td>
          <div class="hovereffect"><asp:Image ID="Image1" runat="server" src="Content/Design%20Images/books.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_books.aspx">Books</a>
              </div>
          </div>
      </td>
      <td>
          <div class="hovereffect"><asp:Image ID="Image2" runat="server" src="Content/Design%20Images/hall.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_hall.aspx">Hall</a>
              </div>
          </div>
      </td>
      <td>
          <div class="hovereffect"><asp:Image ID="Image3" runat="server" src="Content/Design%20Images/machines.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_machine.aspx">Machines</a>
              </div>
          </div>
      </td>
      <td>
          <div class="hovereffect"><asp:Image ID="Image4" runat="server" src="Content/Design%20Images/party_plot.jpg" Height="150px" Width="300px" />
              <div class="overlay">
                <a class="info" href="display_party_plot.aspx">Party Plot</a>
              </div>
          </div>
      </td>
    </tr>
    </table>
  
</br></br>

<div class="container text-center"> 
  <div class="row">
      <table>
          <tr>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/delhi.jpg" Height="100px" Width="200px" />
                           <div class="overlay">
                                <a class="info" href="display_delhi.aspx">Delhi</a>
                           </div>
                  </div>
              </td>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/jodhpur.jpg" Height="100px" Width="200px" />
                           <div class="overlay">
                                <a class="info" href="display_jodhpur.aspx">Jodhpur</a>
                           </div>
                  </div>
              </td>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/goa.jpg" Height="100px" Width="200px" />
                           <div class="overlay">
                                <a class="info" href="display_goa.aspx">Goa</a>
                           </div>
                  </div>
              </td>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/surat.jpg" Height="100px" Width="200px" />
                           <div class="overlay">
                                <a class="info" href="display_surat.aspx">Surat</a>
                           </div>
                  </div>
              </td>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/mumbai.jpg" Height="100px" Width="200px" />
                           <div class="overlay">
                                <a class="info" href="display_mumbai.aspx">Mumbai</a>
                           </div>
                  </div>
              </td>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/shimla.jpg" Height="100px" Width="200px" />
                           <div class="overlay">
                                <a class="info" href="display_shimla.aspx">Shimla</a>
                           </div>
                  </div>
              </td>
          </tr>
      </table>
  </div>
</div></br></br>
      <div class="row">
        <div class="col-sm-4">
          <div class="well">
            <p><asp:LinkButton ID="lb_hma" runat="server" OnClick="link_hma_Click">Home-Ahmedabad</asp:LinkButton></p>
            <p><asp:LinkButton ID="lb_hms" runat="server"  OnClick="link_hms_Click">Home-Surat</asp:LinkButton></p>
            <p><asp:LinkButton ID="lb_hmg" runat="server" OnClick="link_hmg_Click">Home-Goa</asp:LinkButton></p>
            <p><asp:LinkButton ID="lb_hmd" runat="server" OnClick="link_hmd_Click">Home-Delhi</asp:LinkButton></p>
            <p><asp:LinkButton ID="lb_hmj" runat="server" OnClick="link_hmj_Click">Home-Jodhpur</asp:LinkButton></p>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <p><asp:LinkButton ID="lb_hta" runat="server" OnClick="link_hta_Click">Hostel-Ahmedabad</asp:LinkButton></p>
            <p><asp:LinkButton ID="lb_hts" runat="server" OnClick="link_hts_Click">Hostel-Surat</asp:LinkButton></p>
            <p><asp:LinkButton ID="lb_htg" runat="server" OnClick="link_htg_Click">Hostel-Goa</asp:LinkButton></p>
            <p><asp:LinkButton ID="lb_htd" runat="server" OnClick="link_htd_Click">Hostel-Delhi</asp:LinkButton></p>
            <p><asp:LinkButton ID="lb_htj" runat="server" OnClick="link_htj_Click">Hostel-Jodhpur</asp:LinkButton></p>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <p><asp:LinkButton ID="lb_ba" runat="server" OnClick="link_ba_Click">Books-Ahmedabad</asp:LinkButton></p>
            <p><asp:LinkButton ID="lb_bs" runat="server" OnClick="link_bs_Click">Books-Surat</asp:LinkButton></>
            <p><asp:LinkButton ID="lb_bg" runat="server" OnClick="link_bg_Click">Books-Goa</asp:LinkButton></p>
            <p><asp:LinkButton ID="lb_bd" runat="server" OnClick="link_bd_Click">Books-Delhi</asp:LinkButton></p>
            <p><asp:LinkButton ID="lb_bj" runat="server" OnClick="link_bj_Click">Books-Jodhpur</asp:LinkButton></p>
          </div>
        </div>
      </div>
</div>
<footer class="container-fluid text-center">
  <asp:ImageButton ID="btn_img_facebook" runat="server" src="Content/Design%20Images/facebook.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_twitter" runat="server" src="Content/Design%20Images/twitter.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_insta" runat="server" src="Content/Design%20Images/insta.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_email" runat="server" src="Content/Design%20Images/email.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_feed" runat="server" src="Content/Design%20Images/feed.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br /><br />
<p>RENT is optimized for rent and fulfill requirements for who wants something for a while.<br />
Example might be simplified and improve reading,drving,living,riding,bussiness,enjoying and examples are constantly avoid brockers.<br />
While using RENT,you agree to have read and accepted our terms and use,cookie and privacy and policy.<br /><br />

@Copyright 2020-2021 by asp.Data. All Rights Reserved.<br />
RENT is powered by <b>rentaladda@Dinesh</b></p>
</footer>
</form>
</body>
</html>




<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="contact_us" %>
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

<div class="container text-center">
  <h3>Contact us</h3></br>
</div>
<div class="container text-center">
  <asp:Label ID="lbl_cu_number" runat="server" Text="Friendly folks, standing by..." Font-Names="brush script mt" BorderStyle="None" Font-Size="XX-Large" ForeColor="Maroon" Font-Bold="True"></asp:Label>
</div></br>
<div class="container" >
    <div class="row ">
        <div class="col-sm">
            <asp:DataList ID="dlc" runat="server" RepeatColumns="1" OnItemCommand="dlc_ItemCommand">
                <ItemTemplate>
                    <table>
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
                    </table>
                </ItemTemplate>
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
			                            <asp:TextBox class="form-control input-sm" TextMode="MultiLine" placeholder="What to ask..." ID="txt_q_query" runat="server" Height="100"></asp:TextBox>
			    					</div>
                                    <%--<div class="form-group">
                                        <textarea class="form-control input-sm" placeholder="What to ask..." ID="txt_q_query" rows="10"></textarea>
			    					</div>--%>
                                    
                                    <asp:Button ID="btn_query" runat="server" Text="Send Query" class="btn btn-info btn-block" OnClick="btn_query_Click" />

			    	</div>
        </div>
    </div>
</div>
</br></br>
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
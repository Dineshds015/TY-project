<%@ Page Language="C#" AutoEventWireup="true" CodeFile="query_management.aspx.cs" Inherits="query_management" %>

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
        <td><asp:ImageButton ID="btn_logo" runat="server" src="Content/Design%20Images/rent_logo.png" height="70" Width="110" OnClick="btn_home_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_home" runat="server" Text="Home" class="btn btn-secondary transparent-style mr-3" Onclick="btn_home_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_about" runat="server" Text="About" class="btn btn-secondary transparent-style mr-3 " Onclick="btn_about_Click" />&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_contact" runat="server" Text="Contact" class="btn btn-secondary transparent-style mr-3" Onclick="btn_contact_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Label ID="lbl_admin" runat="server" Text="Label" style="font-variant: small-caps; text-shadow:0px 0px 15px black"><h1>Administrator</h1></asp:Label></td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><Button ID="btn_profile"class="btn btn-secondary transparent-style mr-3"><%Response.Write(Session["b"]); %></Button>&nbsp</td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_usersite" runat="server" Text="User Site" class="btn btn-secondary transparent-style mr-3" Onclick="btn_usersite_Click" Width="200" style="font-variant: small-caps; text-shadow:0px 0px 8px black"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_logout" runat="server" Text="Logout" class="btn btn-secondary transparent-style mr-3" Onclick="btn_logout_Click"/>&nbsp&nbsp&nbsp</td>

      </tr></table>
    </div>
  </div>
</nav>
<div class="container text-center">
    </br>
    <asp:Label ID="Label1" runat="server" Text='<%#Eval("") %>' Font-Names="snap itc" style="text-shadow:0px 0px 8px black; color:#ffffff;" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
</div>
<div><center>
    <asp:GridView ID="gridview" runat="server" class="table table-condensed table-hover" AutoGenerateColumns="false" CellPadding="6" OnRowDeleting="GridView1_Rowdeleting">
        <Columns>  
            <asp:TemplateField HeaderText="Actions">  
                <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" BackColor="#66ff66" BorderColor="white"/>  
                        <asp:Button ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" BackColor="Red" ForeColor="White" BorderColor="white"/>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update"  CommandName="Update" BackColor="#66ff66" BorderColor="white"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel"  CommandName="Cancel" BackColor="#ffff66" BorderColor="white"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="ID">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("q_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_c_name" runat="server" Text='<%#Eval("q_name") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_c_name" runat="server" Text='<%#Eval("q_name") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Contact">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_c_phone" runat="server" Text='<%#Eval("q_phone") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_c_phone" runat="server" Text='<%#Eval("q_phone") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                 <asp:TemplateField HeaderText="Email">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_c_email" runat="server" Text='<%#Eval("q_email") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_c_email" runat="server" Text='<%#Eval("q_email") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
             <asp:TemplateField HeaderText="Query" ControlStyle-Width="500">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_c_pin" runat="server" Text='<%#Eval("q_query") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_c_pin" runat="server"  Text='<%#Eval("q_query") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
             
            <%--<asp:TemplateField HeaderText="Date | Time">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_c_date" runat="server" Text='<%#Eval("c_date","{0:dd/MM/yyyy | hh:mm:ss tt}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>  --%>
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" ForeColor="#ffffff"/>  
            <RowStyle BackColor=""/>
    </asp:GridView></center>
</div>
<footer class="container-fluid text-center">
  <asp:ImageButton ID="btn_img_facebook" runat="server" src="Content/Design%20Images/facebook.png" Height="40" Width="40" Onclick="btn_facebook_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
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

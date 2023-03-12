<%@ Page Language="C#" AutoEventWireup="true" CodeFile="project_management.aspx.cs" Inherits="project_managent" %>

<!DOCTYPE html>

<html lang="en" class="no-js">
    <head>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="AppTheme.css" rel="stylesheet" />
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
        <td><asp:Label ID="Label1" runat="server" Text="Label" style="font-variant: small-caps; text-shadow:0px 0px 15px black"><h1>Administrator</h1></asp:Label></td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><Button ID="btn_profile"class="btn btn-secondary transparent-style mr-3"><%Response.Write(Session["b"]); %></Button>&nbsp</td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_usersite" runat="server" Text="User Site" class="btn btn-secondary transparent-style mr-3" Onclick="btn_usersite_Click" Width="200" style="font-variant: small-caps; text-shadow:0px 0px 8px black"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_logout" runat="server" Text="Logout" class="btn btn-secondary transparent-style mr-3" Onclick="btn_logout_Click"/>&nbsp&nbsp&nbsp</td>

      </tr></table>
    </div>
  </div>
</nav>
<%--<center><asp:Button ID="btn_new" runat="server" Text="+ New Project" class="btn btn-primary transparent-style mr-3" width="500" Onclick="btn_home_Click"/></center><br />--%>
<%--<div class="container ">
        <div class="container  ">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Post <small>and Earn</small></h3>--%>
<center>
<div class="container  form-group">
<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">----New Project----</small></h3>
                </div><center>
    <table border="1" class=" form-group">
        <tr style="background-color:gainsboro">
            <th><asp:Label ID="lbl1" runat="server" Text="Catagory"></asp:Label></th>
            <th><asp:Label ID="lbl2" runat="server" Text="Image"></asp:Label></th>
            <th><asp:Label ID="lbl3" runat="server" Text="City"></asp:Label></th>
            <th><asp:Label ID="lbl4" runat="server" Text="Detail"></asp:Label></th>
        </tr>
        <tr>
            <td><asp:TextBox ID="txt_catagory" class="form-control input-sm" placeholder="Catagory--" runat="server"></asp:TextBox></td>
            <td><asp:FileUpload ID="fu_image" class="" runat="server" /></td>
            <td><asp:DropDownList class="btn btn-light dropdown-toggle" ID="ddl_city" runat="server">
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
                 </asp:DropDownList></td>
            <td><asp:TextBox ID="txt_detail" class="form-control input-sm" runat="server" placeholder="Detail--" TextMode="MultiLine" Rows="2" Columns="50"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4"><center><asp:Button ID="btn_new" runat="server" Text="+ New Project" class="btn btn-primary transparent-style mr-3" width="1080" Onclick="btn_new_Click"/></center></td>
        </tr>
    </table></center>
</div>
</div>
<center>
    
    <asp:GridView ID="gridview" runat="server" class="table table-condensed table-hover" AutoGenerateColumns="false" CellPadding="6" OnRowDeleting="GridView1_Rowdeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
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
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("pro_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Image">  
                    <ItemTemplate>  
                        <asp:Image ID="lbl_pro_img" runat="server" src='<%#Eval("pro_image") %>' Height="50" Width="70"></asp:Image>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Image ID="lbl_pro_img" runat="server" src='<%#Eval("pro_image") %>' Height="50" Width="70"></asp:Image>
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Catagory">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_pro_name" runat="server" Text='<%#Eval("pro_name") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_pro_name" runat="server" Text='<%#Eval("pro_name") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Detail">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_pro_detail" runat="server" Text='<%#Eval("pro_detail") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_pro_detail" TextMode="MultiLine" Columns="50" Rows="2" runat="server" Text='<%#Eval("pro_detail") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="City">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_pro_city" runat="server" Text='<%#Eval("pro_city") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Label ID="lbl_pro_city" runat="server" Text='<%#Eval("pro_city") %>'></asp:Label> 
                    </EditItemTemplate>  
                </asp:TemplateField>  
                 <asp:TemplateField HeaderText="Time">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_pro_time" runat="server" Text='<%#Eval("pro_time") %>'></asp:Label>  
                    </ItemTemplate> 
                </asp:TemplateField>  
               
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
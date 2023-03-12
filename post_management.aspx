<%@ Page Language="C#" AutoEventWireup="true" CodeFile="post_management.aspx.cs" Inherits="post_management" %>
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
        <td><asp:Label ID="lbl_admin" runat="server" Text="Label" style="font-variant: small-caps; text-shadow:0px 0px 15px black"><h1>Administrator</h1></asp:Label></td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><Button ID="btn_profile"class="btn btn-secondary transparent-style mr-3"><%Response.Write(Session["b"]); %></Button>&nbsp</td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_usersite" runat="server" Text="User Site" class="btn btn-secondary transparent-style mr-3" Onclick="btn_usersite_Click" Width="200" style="font-variant: small-caps; text-shadow:0px 0px 8px black"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_logout" runat="server" Text="Logout" class="btn btn-secondary transparent-style mr-3" Onclick="btn_logout_Click"/>&nbsp&nbsp&nbsp</td>

      </tr></table>
  </div>
</nav>
<div class="container text-center">
    <asp:Label ID="Label1" runat="server" Text='<%#Eval("") %>' Font-Names="snap itc" style="text-shadow:0px 0px 8px black; color:#ffffff;" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
    </br>
</div>
<div><center>
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
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("p_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Image">  
                    <ItemTemplate>  
                        <asp:Image ID="lbl_p_img" runat="server" src='<%#Eval("p_image") %>' Height="50" Width="70"></asp:Image>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Image ID="lbl_p_img" runat="server" src='<%#Eval("p_image") %>' Height="50" Width="70"></asp:Image>
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Catagory">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_p_cat" runat="server" Text='<%#Eval("p_cat") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_p_cat" runat="server" Text='<%#Eval("p_cat") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Address">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_p_address" runat="server" Text='<%#Eval("p_address") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_p_address" runat="server" Text='<%#Eval("p_address") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                 <asp:TemplateField HeaderText="Pincode">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_p_pin" runat="server" Text='<%#Eval("p_pin") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_p_pin" runat="server" Text='<%#Eval("p_pin") %>' Width="80"></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
             <asp:TemplateField HeaderText="City">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_p_city" runat="server" Text='<%#Eval("city") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_p_city" runat="server" Text='<%#Eval("city") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
             <asp:TemplateField HeaderText="Price">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_p_pricing" runat="server" Text='<%#Eval("p_pricing") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_p_pricing" runat="server" Text='<%#Eval("p_pricing") %>' Width="100"></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
            <asp:TemplateField HeaderText="Features">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_p_features" runat="server" Text='<%#Eval("p_features") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_p_features" runat="server" Text='<%#Eval("p_features") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
            <asp:TemplateField HeaderText="Owner">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_p_owner" runat="server" Text='<%#Eval("p_owner") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_p_owner" runat="server" Text='<%#Eval("p_owner") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
            <asp:TemplateField HeaderText="Date | Time">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_p_time" runat="server" Text='<%#Eval("p_time","{0:dd/MM/yyyy | hh:mm:ss tt}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>  
            <asp:TemplateField HeaderText="Status">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_p_status" runat="server" BackColor="yellow" Text='<%#Eval("p_status") %>'></asp:Label> 
                    </ItemTemplate> 
                </asp:TemplateField>  
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" ForeColor="#ffffff"/>  
            <RowStyle BackColor=""/>
    </asp:GridView></center>
</div>
</form>
</body>
</html>


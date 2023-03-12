<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enquiry_management.aspx.cs" Inherits="enquiry_management" %>

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
</nav>
<div class="container text-center">
    <table width="100%">
        <tr>
            <td>
                <asp:Label ID="lbl_pending" runat="server" Text='<%#Eval("") %>' Font-Names="chiller" style="text-shadow:0px 0px 10px black; color:#ffd800;" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_approved" runat="server" Text='<%#Eval("") %>' Font-Names="chiller" style="text-shadow:0px 0px 10px black; color:#4cff00;" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_discharged" runat="server" Text='<%#Eval("") %>' Font-Names="chiller" style="text-shadow:0px 0px 10px black; color:#b200ff;" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
            </td>
        </tr>
    </table>
    
</div>
<div><center>
    <asp:GridView ID="gridview" runat="server" class="table table-condensed table-hover" AutoGenerateColumns="false" CellPadding="6" OnRowDeleting="GridView1_Rowdeleting" >
        <Columns>   
                <asp:TemplateField HeaderText="Actions">  
                    <ItemTemplate>  
                        <asp:Button ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" BackColor="Red" ForeColor="White" BorderColor="white"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("enq_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Image">  
                    <ItemTemplate>  
                        <asp:Image ID="lbl_e_img" runat="server" src='<%#Eval("e_image") %>' Height="50" Width="70"></asp:Image>
                    </ItemTemplate>   
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Catagory">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_e_cat" runat="server" Text='<%#Eval("e_cat") %>'></asp:Label>  
                    </ItemTemplate>    
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Email (Renter)">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_e_email" runat="server" Text='<%#Eval("e_email") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                 <asp:TemplateField HeaderText="Pricing">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_e_pricing" runat="server" Text='<%#Eval("e_pricing") %>'></asp:Label>  
                    </ItemTemplate>   
                </asp:TemplateField>  
             <asp:TemplateField HeaderText="Email (Owner)">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_e_owner" runat="server" Text='<%#Eval("e_owner") %>'></asp:Label>  
                    </ItemTemplate>    
                </asp:TemplateField>  
             <asp:TemplateField HeaderText="Pincode">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_e_pincode" runat="server" Text='<%#Eval("e_pin") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
            <asp:TemplateField HeaderText="City">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_e_city" runat="server" Text='<%#Eval("e_city") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
            <asp:TemplateField HeaderText="Features">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_e_features" runat="server" Text='<%#Eval("e_features") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
            <asp:TemplateField HeaderText="Address">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_e_address" runat="server" Text='<%#Eval("e_address") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 
            <asp:TemplateField HeaderText="Date | Time">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_e_time" runat="server" Text='<%#Eval("e_time","{0:dd/MM/yyyy | hh:mm:ss }") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>  
            <asp:TemplateField HeaderText="Status">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_e_status" runat="server" Text='<%#Eval("e_status") %>'></asp:Label>
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


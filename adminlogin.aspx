<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<html lang="en" class="no-js">
    <head>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />

    </head>
    <body>
        <form id="form1" runat="server">

<nav class="navbar navbar-inverse" style="text-shadow:0px 5px 15px black">
  <div class="container-fluid">
   <div class="collapse navbar-collapse" id="myNavbar">
      <table><tr>
        <td><asp:ImageButton ID="btn_logo" runat="server" src="Content/Design%20Images/rent_logo.png" height="70" Width="110"/>&nbsp&nbsp&nbsp</td>
        <td></td>
        <td style="font-variant: small-caps; text-shadow:0px 0px 15px black"><h1>A d m i n i s t r a t o r</h1></td>

      </tr></table>
    </div>
  </div>
</nav>
           

  <div class="container ">
          <div class="container  ">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Admin <small>login</small></h3>
			 			</div>
			 			<div class="panel-body mx-auto" style="width: 200px;">
			    		</div>
			    			
			    			
			    					<div class="form-group">
			              
                                        <asp:TextBox class="form-control input-sm" placeholder="Username" ID="txt_a_username" runat="server"></asp:TextBox>
			    					</div>
			    				

                                     <div class="form-group">
			                            <asp:TextBox class="form-control input-sm" placeholder="Password" ID="txt_a_password" runat="server" TextMode="Password"></asp:TextBox>
			    					</div>
			    			        <div class="form-group">
                                        <asp:CheckBox ID="rememberme" runat="server"/>&nbsp Remember me
                                    </div>
			    		   		    <asp:Button ID="btn_login" runat="server" class="btn btn-info btn-block" Text="Login" OnClick="Login_Click" />
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
</form>
<p> &nbsp;</p>

</body>
</html>

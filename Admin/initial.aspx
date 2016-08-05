<%@ Page Language="C#" AutoEventWireup="true" CodeFile="initial.aspx.cs" Inherits="initial" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head id="Head1" runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
 
</head>
<body>
    <form id="Form1" runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    ONLINE MARKETING MANAGEMENT
                </h1>
            </div>
            <div class="loginDisplay">
            </div>
            <div class="clear hideSkiplink">
                
            </div>
        </div>
        <div>
        <div id="content" style="float:left">
            
          <!--close content_item-->	
	      
		  <div class="sidebar_container">       
		    <div class="sidebar">
              <div class="sidebar_item">
                <h2>Welcome to our project site..</h2>
                  <p>This project has been initialize to provide some favor to our customer...</p>
			    <h4><strong>Company moto</strong></h4>
                  <p>To provide maximum favor to the customer</p>
              </div><!--close sidebar_item--> 
            </div><!--close sidebar-->     		
		    <div class="sidebar">
              <div class="sidebar_item">
                <h2>Latest Target</h2>
		  	    <h4><b><strong>Date</strong></b><strong> : 14 june, 2012</strong></h4>
                  <p><strong>Target:</strong></p>
                  <p>To achieve the customer response....and broadcasting it to the representative</p>
              </div><!--close sidebar_item--> 
            </div><!--close sidebar-->  
		    <div class="sidebar">
              <div class="sidebar_item">
                <h2>Latest achievement</h2>
			    <h4>April 2012</h4>
                <p>Website Launched</p>
              </div>
            </div>
           </div>
           <br style="clear:both;" />
        </div>
        
        
        
        
        
        
        
        </div>
        <div class="main" style="float:right">
            <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" 
                BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                Font-Size="0.8em" ForeColor="#333333" Height="210px" Width="261px">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LayoutTemplate>
                    <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0" style="height:210px;width:261px;">
                                    <tr>
                                        <td align="center" colspan="2" 
                                            style="color:White;background-color:#507CD1;font-size:0.9em;font-weight:bold;">
                                            Log In</td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-size:small">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em" Width="120px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="font-size:small">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password" 
                                                Width="120px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                ControlToValidate="Password" ErrorMessage="Password is required." 
                                                ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
                    ForeColor="White" />
            </asp:Login>
        </div>
        <div class="clear">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
    <div class="footer">
        
    </div>
    </form>
</body>
</html>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" Debug="true" AutoEventWireup="true" CodeFile="AddNewProduct.aspx.cs" Inherits="AddNewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
    }
    .style2
    {
        width: 200px;
        height: 20px;
    }
    .style3
    {
        height: 20px;
    }
    .style4
    {
        height: 22px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td class="style2">
            Product Information</td>
        <td class="style3" colspan="2">
        </td>
    </tr>
    <tr>
        <td class="style2">
            Name</td>
        <td class="style3" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox1" Display="Dynamic" 
                        ErrorMessage="Enter name" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
    </tr>
    <tr>
        <td class="style1">
            Unit Price
        </td>
        <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" BackColor="Red" 
                ControlToValidate="TextBox2" ErrorMessage="Enter a positive value" 
                MaximumValue="100000" MinimumValue="1" Type="Double"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                BackColor="Red" ControlToValidate="TextBox2" ErrorMessage="Enter Unit Price"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1">
            Stock</td>
        <td colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" BackColor="Red" 
                ControlToValidate="TextBox3" ErrorMessage="Enter a positive value" 
                MaximumValue="100000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                BackColor="Red" ControlToValidate="TextBox3" ErrorMessage="Enter Stock"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="style4">
        </td>
        <td class="style4">
            <asp:Button ID="Button1" runat="server" Height="39px" Text="Add" 
                Width="153px" onclick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>


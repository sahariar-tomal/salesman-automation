<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" Debug="true" AutoEventWireup="true" CodeFile="AddSchedule.aspx.cs" Inherits="AddSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 200px;
        }
    .style2
    {
        width: 200px;
        height: 22px;
    }
    .style3
    {
        height: 22px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Zone</td>
            <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Dhaka</asp:ListItem>
                        <asp:ListItem>Rajshahi</asp:ListItem>
                        <asp:ListItem>Khulna</asp:ListItem>
                        <asp:ListItem>Barisal</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Area Name</td>
            <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="309px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        BackColor="Red" ControlToValidate="TextBox1" Display="Dynamic" 
                        ErrorMessage="Enter Area Code" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style1">
                Date of Deliverey</td>
            <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>2000</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" style="margin-bottom: 0px" Text="Add" 
                    Width="221px" onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CancelOrder.aspx.cs" Inherits="CancelOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
       <strong> You have cancelled the order.</strong></p>
    <p>
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td rowspan="3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="77px" TextMode="MultiLine" 
                        Width="447px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Height="21px" onclick="Button1_Click" 
                        Text="Submit" Width="74px" />
                </td>
            </tr>
            <tr>
                <td>
                    Reasons for cancellation:</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        <strong> To take new order click here
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/BeforeOrder.aspx">Take order</asp:HyperLink>
        </strong>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>


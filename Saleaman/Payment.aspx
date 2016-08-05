<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 124px;
        }
        .style2
        {
            width: 266px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    Input Shop ID:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="274px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Input Sale ID:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="274px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="24px" onclick="Button1_Click" 
                        Text="Take Payment" Width="127px" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." Height="70px" 
            Width="550px">
            <Columns>
                <asp:BoundField DataField="SHOPID" HeaderText="SHOPID" 
                    SortExpression="SHOPID" />
                <asp:BoundField DataField="SALEID" HeaderText="SALEID" 
                    SortExpression="SALEID" />
                <asp:BoundField DataField="COST" HeaderText="COST" SortExpression="COST" />
                <asp:BoundField DataField="PAYMENT" HeaderText="PAYMENT" 
                    SortExpression="PAYMENT" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT &quot;SALEID&quot;, &quot;SHOPID&quot;, &quot;COST&quot;, &quot;PAYMENT&quot; FROM &quot;SHOP_9&quot;">
        </asp:SqlDataSource>
    </p>
    <p>
        Amount to paid:<asp:TextBox ID="TextBox3" runat="server" Height="25px" 
            Width="274px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Height="24px" onclick="Button2_Click" 
            Text="Paid" Width="127px" />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>


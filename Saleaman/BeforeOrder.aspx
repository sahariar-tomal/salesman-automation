<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="BeforeOrder.aspx.cs" Inherits="BeforeOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 234px;
        }
        .style2
        {
            width: 268px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
&nbsp;<strong>For which shop you want to order</strong></td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="256px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Take Order" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="SHOPID" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="SHOPID" HeaderText="SHOPID" ReadOnly="True" 
                SortExpression="SHOPID" />
            <asp:BoundField DataField="STORENAME" HeaderText="STORENAME" 
                SortExpression="STORENAME" />
            <asp:BoundField DataField="OWNERNAME" HeaderText="OWNERNAME" 
                SortExpression="OWNERNAME" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        DeleteCommand="DELETE FROM &quot;SHOP_5&quot; WHERE &quot;SHOPID&quot; = :SHOPID" 
        InsertCommand="INSERT INTO &quot;SHOP_5&quot; (&quot;SHOPID&quot;, &quot;STORENAME&quot;, &quot;OWNERNAME&quot;) VALUES (:SHOPID, :STORENAME, :OWNERNAME)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="SELECT &quot;SHOPID&quot;, &quot;STORENAME&quot;, &quot;OWNERNAME&quot; FROM &quot;SHOP_5&quot;" 
        UpdateCommand="UPDATE &quot;SHOP_5&quot; SET &quot;STORENAME&quot; = :STORENAME, &quot;OWNERNAME&quot; = :OWNERNAME WHERE &quot;SHOPID&quot; = :SHOPID">
        <DeleteParameters>
            <asp:Parameter Name="SHOPID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SHOPID" Type="String" />
            <asp:Parameter Name="STORENAME" Type="String" />
            <asp:Parameter Name="OWNERNAME" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="STORENAME" Type="String" />
            <asp:Parameter Name="OWNERNAME" Type="String" />
            <asp:Parameter Name="SHOPID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>


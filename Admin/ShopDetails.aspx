<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ShopDetails.aspx.cs" Inherits="ShopDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="SALEID" HeaderText="SALEID" 
                SortExpression="SALEID" />
            <asp:BoundField DataField="SHOPID" HeaderText="SHOPID" 
                SortExpression="SHOPID" />
            <asp:BoundField DataField="COST" HeaderText="COST" SortExpression="COST" />
            <asp:BoundField DataField="PAYMENT" HeaderText="PAYMENT" 
                SortExpression="PAYMENT" />
            <asp:BoundField DataField="PAYMENTSTATUS" HeaderText="PAYMENTSTATUS" 
                SortExpression="PAYMENTSTATUS" />
            <asp:HyperLinkField DataNavigateUrlFields="SALEID" 
                DataNavigateUrlFormatString="SaleDetailsPage.aspx?{0}" Text="details" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SHOP_9&quot; WHERE (&quot;SHOPID&quot; = :SHOPID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="SHOPID" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>


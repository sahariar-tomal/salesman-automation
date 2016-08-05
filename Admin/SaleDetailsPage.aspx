<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SaleDetailsPage.aspx.cs" Inherits="SaleDetailsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:BoundField DataField="SALEID" HeaderText="SALEID" 
            SortExpression="SALEID" />
        <asp:BoundField DataField="PRODUCTNAME" HeaderText="PRODUCTNAME" 
            SortExpression="PRODUCTNAME" />
        <asp:BoundField DataField="QUANTITY_OF_PRODUCT" 
            HeaderText="QUANTITY_OF_PRODUCT" SortExpression="QUANTITY_OF_PRODUCT" />
        <asp:BoundField DataField="COST_OF_PRODUCT" HeaderText="COST_OF_PRODUCT" 
            SortExpression="COST_OF_PRODUCT" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
    SelectCommand="SELECT * FROM &quot;SHOP_10&quot; WHERE (&quot;SALEID&quot; = :SALEID)">
    <SelectParameters>
        <asp:ControlParameter ControlID="Label1" Name="SALEID" PropertyName="Text" 
            Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>


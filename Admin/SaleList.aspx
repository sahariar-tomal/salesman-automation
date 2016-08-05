<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SaleList.aspx.cs" Inherits="SaleList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:BoundField DataField="RID" HeaderText="RID" SortExpression="RID" />
        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
        <asp:BoundField DataField="SALEID" HeaderText="SALEID" 
            SortExpression="SALEID" />
        <asp:BoundField DataField="SHOPID" HeaderText="SHOPID" 
            SortExpression="SHOPID" />
        <asp:BoundField DataField="DATEOFSALE" HeaderText="DATEOFSALE" 
            SortExpression="DATEOFSALE" />
        <asp:BoundField DataField="STATUS" HeaderText="STATUS" 
            SortExpression="STATUS" />
        <asp:HyperLinkField DataNavigateUrlFields="SALEID" 
            DataNavigateUrlFormatString="SaleDetailsPage.aspx?{0}" Text="Details" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
    
    SelectCommand="SELECT R.RID, R.SALEID, R.SHOPID, R.DATEOFSALE, R.STATUS, R1.NAME FROM REP_4 R, REP_1 R1 WHERE R.RID = R1.RID">
</asp:SqlDataSource>
</asp:Content>


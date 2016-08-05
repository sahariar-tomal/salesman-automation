<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Shops.aspx.cs" Inherits="ShopkeeperActivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="SHOPID" DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:BoundField DataField="SHOPID" HeaderText="SHOPID" ReadOnly="True" 
            SortExpression="SHOPID" />
        <asp:BoundField DataField="STORENAME" HeaderText="STORENAME" 
            SortExpression="STORENAME" />
        <asp:BoundField DataField="OWNERNAME" HeaderText="OWNERNAME" 
            SortExpression="OWNERNAME" />
        <asp:HyperLinkField DataNavigateUrlFields="SHOPID" 
            DataNavigateUrlFormatString="ShopDetails.aspx?{0}" Text="Details" />
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
</asp:Content>


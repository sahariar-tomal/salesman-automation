<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewShopProfile.aspx.cs" Inherits="ViewShopProfile" %>

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
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;SHOP_5&quot; WHERE (&quot;SHOPID&quot; = :SHOPID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="SHOPID" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="SHOPID" DataSourceID="SqlDataSource2" 
        EmptyDataText="There are no data records to display." 
        style="margin-bottom: 3px">
        <Columns>
            <asp:BoundField DataField="SHOPID" HeaderText="SHOPID" ReadOnly="True" 
                SortExpression="SHOPID" />
            <asp:BoundField DataField="STORENAME" HeaderText="STORENAME" 
                SortExpression="STORENAME" />
            <asp:BoundField DataField="OWNERNAME" HeaderText="OWNERNAME" 
                SortExpression="OWNERNAME" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        DeleteCommand="DELETE FROM &quot;SHOP_5&quot; WHERE &quot;SHOPID&quot; = :SHOPID" 
        InsertCommand="INSERT INTO &quot;SHOP_5&quot; (&quot;SHOPID&quot;, &quot;STORENAME&quot;, &quot;OWNERNAME&quot;) VALUES (:SHOPID, :STORENAME, :OWNERNAME)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="SELECT SHOPID, STORENAME, OWNERNAME FROM SHOP_5 WHERE (SHOPID IN (SELECT SHOPID FROM REP_3 WHERE (RID = Session(RID))))" 
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
</asp:Content>


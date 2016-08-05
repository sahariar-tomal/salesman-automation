<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ComfirmOrder.aspx.cs" Inherits="ComfirmOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
        You have success fully confirmed the order with saleid=<asp:Label ID="Label1" 
            runat="server"></asp:Label>
    </p>
    
    <hr />
        
    
        The Total sale
    order<br />
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
        <asp:BoundField DataField="COST_OF_PRODUCT" HeaderText="UnitPrice" 
            SortExpression="COST_OF_PRODUCT" />
        <asp:TemplateField HeaderText="Total cost of Product">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
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
&nbsp;<p>
        The total amount to be paid:<asp:Label ID="Label3" runat="server"></asp:Label>
</p>
<p>
        Delivery Date :<asp:Label ID="Label4" runat="server"></asp:Label>
</p>
</asp:Content>


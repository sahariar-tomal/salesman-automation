<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="PID" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." Height="243px" 
        Width="358px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        style="margin-bottom: 0px">
        <Columns>
            <asp:BoundField DataField="PID" HeaderText="PID" ReadOnly="True" 
                SortExpression="PID" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="UNITPRICE" HeaderText="UNITPRICE" 
                SortExpression="UNITPRICE" />
            <asp:BoundField DataField="STOCK" HeaderText="STOCK" SortExpression="STOCK" />
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        DeleteCommand="DELETE FROM &quot;PRODUCT_6&quot; WHERE &quot;PID&quot; = :PID" 
        InsertCommand="INSERT INTO &quot;PRODUCT_6&quot; (&quot;PID&quot;, &quot;NAME&quot;, &quot;UNITPRICE&quot;, &quot;STOCK&quot;) VALUES (:PID, :NAME, :UNITPRICE, :STOCK)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="SELECT &quot;PID&quot;, &quot;NAME&quot;, &quot;UNITPRICE&quot;, &quot;STOCK&quot; FROM &quot;PRODUCT_6&quot;" 
        UpdateCommand="UPDATE &quot;PRODUCT_6&quot; SET &quot;NAME&quot; = :NAME, &quot;UNITPRICE&quot; = :UNITPRICE, &quot;STOCK&quot; = :STOCK WHERE &quot;PID&quot; = :PID">
        <DeleteParameters>
            <asp:Parameter Name="PID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PID" Type="String" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="UNITPRICE" Type="Decimal" />
            <asp:Parameter Name="STOCK" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="UNITPRICE" Type="Decimal" />
            <asp:Parameter Name="STOCK" Type="Decimal" />
            <asp:Parameter Name="PID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Take Order" />
&nbsp;&nbsp;&nbsp;<br />
    &nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
    &nbsp;&nbsp;<br />
    <asp:Label ID="Label3" runat="server"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <br />
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    &nbsp;&nbsp;&nbsp;<br />
&nbsp;<table style="width:100%;">
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Height="30px" onclick="Button1_Click" 
                Text="Add New Product " Width="202px" />
        </td>
    </tr>
</table>
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="PID" DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="PID" HeaderText="PID" ReadOnly="True" 
                SortExpression="PID" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="UNITPRICE" HeaderText="UNITPRICE" 
                SortExpression="UNITPRICE" />
            <asp:BoundField DataField="STOCK" HeaderText="STOCK" SortExpression="STOCK" />
            <asp:CommandField ShowEditButton="True" />
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
    <br />
    <br />
</asp:Content>


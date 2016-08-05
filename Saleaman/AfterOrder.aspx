<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AfterOrder.aspx.cs" Inherits="AfterOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="SHOPID" HeaderText="SHOPID" 
                SortExpression="SHOPID" />
            <asp:BoundField DataField="SALEID" HeaderText="SALEID" 
                SortExpression="SALEID" />
            <asp:BoundField DataField="PID" HeaderText="PID" SortExpression="PID" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="UNITPRICE" HeaderText="UNITPRICE" 
                SortExpression="UNITPRICE" />
            <asp:BoundField DataField="DATE_OF_ORDER" HeaderText="DATE_OF_ORDER" 
                SortExpression="DATE_OF_ORDER" />
            <asp:BoundField DataField="STOCK" HeaderText="STOCK" SortExpression="STOCK" />
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" 
                        Text='<%# Eval("QUANTITY", "{0}") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        
        SelectCommand="SELECT &quot;SHOPID&quot;, &quot;SALEID&quot;, &quot;PID&quot;, &quot;NAME&quot;, &quot;QUANTITY&quot;, &quot;UNITPRICE&quot;, &quot;DATE_OF_ORDER&quot;, &quot;STOCK&quot; FROM &quot;DUMMYTABLE&quot; WHERE (&quot;SALEID&quot; = :SALEID)">
        <SelectParameters>
            <asp:SessionParameter Name="SALEID" SessionField="saleid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        DeleteCommand="DELETE FROM &quot;ORDER_PRODUCT&quot; WHERE &quot;PID&quot; = :PID" 
        InsertCommand="INSERT INTO &quot;ORDER_PRODUCT&quot; (&quot;PID&quot;, &quot;NAME&quot;, &quot;UNITPRICE&quot;, &quot;STOCK&quot;, &quot;Quantity&quot;) VALUES (:PID, :NAME, :UNITPRICE, :STOCK, :Quantity)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="SELECT &quot;PID&quot;, &quot;NAME&quot;, &quot;UNITPRICE&quot;, &quot;STOCK&quot;, &quot;Quantity&quot; FROM &quot;ORDER_PRODUCT&quot;" 
        UpdateCommand="UPDATE &quot;ORDER_PRODUCT&quot; SET &quot;NAME&quot; = :NAME, &quot;UNITPRICE&quot; = :UNITPRICE, &quot;STOCK&quot; = :STOCK, &quot;Quantity&quot; = :Quantity WHERE &quot;PID&quot; = :PID">
        <DeleteParameters>
            <asp:Parameter Name="PID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PID" Type="String" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="UNITPRICE" Type="Decimal" />
            <asp:Parameter Name="STOCK" Type="Decimal" />
            <asp:Parameter Name="Quantity" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="UNITPRICE" Type="Decimal" />
            <asp:Parameter Name="STOCK" Type="Decimal" />
            <asp:Parameter Name="Quantity" Type="Decimal" />
            <asp:Parameter Name="PID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="Update Order" Width="218px" 
                    onclick="Button1_Click" />
            </td>
            <td class="style3">
                <asp:Button ID="Button2" runat="server" Text="Confirm Order" Width="218px" 
                    onclick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Cancel" Width="218px" 
                    onclick="Button3_Click" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ScheduleList.aspx.cs" Inherits="ScheduleList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td>
            <br />
            <asp:Button ID="Button1" runat="server" Height="30px" onclick="Button1_Click" 
                Text="Add Schedule" Width="202px" />
        </td>
    </tr>
</table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="AREACODE" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="AREACODE" HeaderText="AREACODE" ReadOnly="True" 
                SortExpression="AREACODE" />
            <asp:BoundField DataField="ZONE" HeaderText="ZONE" SortExpression="ZONE" />
            <asp:BoundField DataField="AREANAME" HeaderText="AREANAME" 
                SortExpression="AREANAME" />
            <asp:BoundField DataField="DATEOFDELIVERY" HeaderText="DATEOFDELIVERY" 
                SortExpression="DATEOFDELIVERY" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        DeleteCommand="DELETE FROM &quot;SCHEDULE_8&quot; WHERE &quot;AREACODE&quot; = :AREACODE" 
        InsertCommand="INSERT INTO &quot;SCHEDULE_8&quot; (&quot;AREACODE&quot;, &quot;ZONE&quot;, &quot;AREANAME&quot;, &quot;DATEOFDELIVERY&quot;) VALUES (:AREACODE, :ZONE, :AREANAME, :DATEOFDELIVERY)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="SELECT &quot;AREACODE&quot;, &quot;ZONE&quot;, &quot;AREANAME&quot;, &quot;DATEOFDELIVERY&quot; FROM &quot;SCHEDULE_8&quot;" 
        UpdateCommand="UPDATE &quot;SCHEDULE_8&quot; SET &quot;ZONE&quot; = :ZONE, &quot;AREANAME&quot; = :AREANAME, &quot;DATEOFDELIVERY&quot; = :DATEOFDELIVERY WHERE &quot;AREACODE&quot; = :AREACODE">
        <DeleteParameters>
            <asp:Parameter Name="AREACODE" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AREACODE" Type="String" />
            <asp:Parameter Name="ZONE" Type="String" />
            <asp:Parameter Name="AREANAME" Type="String" />
            <asp:Parameter Name="DATEOFDELIVERY" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ZONE" Type="String" />
            <asp:Parameter Name="AREANAME" Type="String" />
            <asp:Parameter Name="DATEOFDELIVERY" Type="DateTime" />
            <asp:Parameter Name="AREACODE" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>


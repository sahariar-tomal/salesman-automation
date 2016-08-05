<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RepInfo.aspx.cs" Inherits="RepInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="RID" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="RID" HeaderText="RID" ReadOnly="True" 
                SortExpression="RID" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:HyperLinkField DataNavigateUrlFields="RID" 
                DataNavigateUrlFormatString="RepDetailsPage.aspx?{0}" Text="Details" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        DeleteCommand="DELETE FROM &quot;REP_1&quot; WHERE &quot;RID&quot; = :RID" 
        InsertCommand="INSERT INTO &quot;REP_1&quot; (&quot;RID&quot;, &quot;USERNAME&quot;, &quot;PASS&quot;, &quot;NAME&quot;, &quot;DOB&quot;, &quot;GENDER&quot;, &quot;NID&quot;, &quot;MOBILE&quot;, &quot;EMAIL&quot;) VALUES (:RID, :USERNAME, :PASS, :NAME, :DOB, :GENDER, :NID, :MOBILE, :EMAIL)" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="SELECT &quot;RID&quot;, &quot;USERNAME&quot;, &quot;PASS&quot;, &quot;NAME&quot;, &quot;DOB&quot;, &quot;GENDER&quot;, &quot;NID&quot;, &quot;MOBILE&quot;, &quot;EMAIL&quot; FROM &quot;REP_1&quot;" 
        UpdateCommand="UPDATE &quot;REP_1&quot; SET &quot;USERNAME&quot; = :USERNAME, &quot;PASS&quot; = :PASS, &quot;NAME&quot; = :NAME, &quot;DOB&quot; = :DOB, &quot;GENDER&quot; = :GENDER, &quot;NID&quot; = :NID, &quot;MOBILE&quot; = :MOBILE, &quot;EMAIL&quot; = :EMAIL WHERE &quot;RID&quot; = :RID">
        <DeleteParameters>
            <asp:Parameter Name="RID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RID" Type="String" />
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="PASS" Type="String" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="DOB" Type="DateTime" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="NID" Type="String" />
            <asp:Parameter Name="MOBILE" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="PASS" Type="String" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="DOB" Type="DateTime" />
            <asp:Parameter Name="GENDER" Type="String" />
            <asp:Parameter Name="NID" Type="String" />
            <asp:Parameter Name="MOBILE" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="RID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

